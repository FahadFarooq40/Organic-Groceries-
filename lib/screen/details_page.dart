import 'package:flutter/material.dart';
import 'package:grocery_app/mobel/cart_model.dart';
import 'package:grocery_app/screen/cartpage.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/widgets/alert_box.dart';
import 'package:provider/provider.dart';

class Pages extends StatefulWidget {
  final String itemName;
  final String itemsPrice;
  final String imagePath;
  final Color color;
  final int index;
  final bool isFavorite;
  final Function()? onPressed;

  const Pages({
    Key? key,
    required this.itemName,
    required this.itemsPrice,
    required this.imagePath,
    required this.color,
    required this.index,
    this.isFavorite = false,
    this.onPressed,
  }) : super(key: key);

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  late bool _isFavorite;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height *
                        0.4, // Adjust the height as needed
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.colorsLiteGrey,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Image.asset(
                        widget.imagePath,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios),
                          iconSize: 30.0,
                          onPressed: () => Navigator.pop(context),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.search,
                              ),
                              iconSize: 30.0,
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.shopping_bag_outlined,
                              ),
                              iconSize: 30.0,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const CartPage();
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 18.0,
                    ),
                    child: Text(
                      widget.itemName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: AppColors.colorsGreen,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isFavorite = !_isFavorite;
                      });
                    },
                    icon: Icon(
                      _isFavorite
                          ? Icons.favorite_sharp
                          : Icons.favorite_border,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  children: [
                    Text(
                      'Price: \$${widget.itemsPrice}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: AppColors.colorsLiteBlack,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  height: 1,
                  color: AppColors.colorsGrey,
                  margin: const EdgeInsets.only(top: 25),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Products Details',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: AppColors.colorsGreen,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Farm-fresh fruits & veggies, bursting with flavor. From crisp apples to leafy greens, our produce is picked at peak ripeness, delivering unbeatable taste & nutrition. Taste the difference!\n",
                      maxLines: 20,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0,
                        color: AppColors.colorsLiteBlack,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  height: 1,
                  color: AppColors.colorsGrey,
                  margin: const EdgeInsets.only(top: 25),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: Text(
                      'Review',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: AppColors.colorsLiteBlack,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const Icon(
                    Icons.star_border,
                    color: Colors.yellow,
                  ),
                  const Icon(
                    Icons.star_border,
                    color: Colors.yellow,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60.0,
                    width: 220.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: AppColors.colorsGreen,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 2),
                          blurRadius: 20.0,
                        )
                      ],
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          ALertBox.show(context);
                          Provider.of<CatModels>(context, listen: false)
                              .addItemToCart(widget.index);
                        },
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.white,
                          ),
                        ),
                        child: const Text(
                          'Buy Now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: AppColors.colorsGreen,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 2),
                          blurRadius: 20.0,
                        )
                      ],
                    ),
                    child: MaterialButton(
                      onPressed: widget.onPressed,
                      color: AppColors.colorsGreen,
                      child: Text(
                        '\$ ${widget.itemsPrice}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
