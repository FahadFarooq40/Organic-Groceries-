import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_colors.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorsLiteGreen,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                "Brand Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: AppColors.colorsWhite,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {
                  // Add functionality here
                },
                child: Text(
                  "12% OFF",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: AppColors.colorsWhite,
                  ),
                ),
              ),
            )
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find The Brands",
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.colorsDarkGreen,
                ),
              ),
              const SizedBox(height: 5),
              brandCard(
                "Organic Grocery",
                "Find fresh, locally-sourced produce and wholesome organic goods at your fingertips with our Organic Grocery app.",
                "770",
              ),
              const SizedBox(height: 5),
              brandCard(
                "Organic Grocery",
                "Find fresh, locally-sourced produce and wholesome organic goods at your fingertips with our Organic Grocery app.",
                "770",
              ),
              const SizedBox(height: 5),
              brandCard(
                "Organic Grocery",
                "Find fresh, locally-sourced produce and wholesome organic goods at your fingertips with our Organic Grocery app.",
                "770",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget brandCard(String title, String description, String price) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 25, left: 20, right: 20),
          width: double.infinity,
          height: 150,
          child: Stack(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                height: 20,
              ),
              Container(
                height: 130,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 20),
                child: Card(
                  color: AppColors.colorsLiteGrey,
                  elevation: 2.5,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                        top: 12, left: 125, right: 10, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.colorsDarkGreen,
                              fontSize: 15),
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: AppColors.colorsGrey,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Add your onPressed function here
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.colorsGreen.withOpacity(
                                  0.4), // Adjust the opacity as needed
                              borderRadius: BorderRadius.circular(
                                  5), // Adjust the border radius as needed
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5), // Adjust the padding as needed
                            child: Text(
                              '\$ $price',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.colorsGreen,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: AppColors.colorsLiteGreen,
                height: 150,
                width: 100,
                margin: const EdgeInsets.only(left: 15, bottom: 10),
                child: Image.asset(
                  "images/success_logo.png",
                  width: 30,
                  height: 50,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 1,
          color: AppColors.colorsLiteGrey,
          margin: const EdgeInsets.only(top: 25),
        ),
      ],
    );
  }
}
