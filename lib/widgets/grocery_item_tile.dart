import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_colors.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemsPrice;
  final String imagePath;
  final Color color;
  final Function()? onPressed;

  const GroceryItemTile({
    Key? key,
    required this.itemName,
    required this.itemsPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
            Flexible(
              child: Text(
                itemName,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: AppColors.colorsBlack,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            MaterialButton(
              onPressed: onPressed,
              color: color,
              child: Text(
                '\$ $itemsPrice',
                style: TextStyle(
                  color: AppColors.colorsWhite,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
