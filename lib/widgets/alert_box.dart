import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_colors.dart';

class ALertBox {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppColors.colorsWhite,
        title: Text(
          'Order successfully completed!',
          style: TextStyle(
            color: AppColors.colorsDarkGreen,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("images/success_logo.png"),
            Text(
              "Congratulations! You've successfully completed your order",
              style: TextStyle(
                color: AppColors.colorsLiteBlack,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                AppColors.colorsLiteGreen,
              ),
            ),
            child: Text(
              'Got It! ',
              style: TextStyle(
                color: AppColors.colorsDarkGreen,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
