import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/mobel/cart_model.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/widgets/alert_box.dart';
import 'package:provider/provider.dart';

class CardView extends StatelessWidget {
  const CardView({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    var value = Provider.of<CatModels>(context, listen: false);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Change background color as needed
        borderRadius: BorderRadius.circular(20),
        // Remove boxShadow to remove the shadow effect
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
              child: value.shopItems[index][2] != null
                  ? Image.asset(
                      value.shopItems[index][2],
                      fit: BoxFit.fill,
                    )
                  : Container(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              value.shopItems[index][0],
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${value.shopItems[index][1]}',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.colorsGreen,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: AppColors.colorsGreen,
                  ),
                  child: IconButton(
                    color: AppColors.colorsWhite,
                    iconSize: 24.0,
                    icon: const Icon(
                      CupertinoIcons.add,
                    ),
                    onPressed: () {
                      ALertBox.show(context);
                      Provider.of<CatModels>(context, listen: false)
                          .addItemToCart(index);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
