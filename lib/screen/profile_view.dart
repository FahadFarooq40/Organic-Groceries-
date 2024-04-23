import 'package:flutter/material.dart';
import 'package:grocery_app/screen/cartpage.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/widgets/bottom_navigator.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("images/success_logo.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              profileItem("Name", "Fahad Farooq", Icons.person),
              const SizedBox(
                height: 20,
              ),
              profileItem(
                  "Order",
                  "Select and purchase groceries from a wide range of products available in the app.",
                  Icons.shopping_cart),
              SizedBox(
                height: 20,
              ),
              profileItem(
                  "Delivery Address",
                  "Manage and update your delivery address for accurate and timely delivery.",
                  Icons.location_on),
              SizedBox(
                height: 20,
              ),
              profileItem(
                  "My Details",
                  "Access and edit your personal information such as name and contact details.",
                  Icons.person_outline),
              SizedBox(
                height: 20,
              ),
              profileItem(
                  "Help",
                  "Get assistance with any issues, queries, or concerns regarding the app.",
                  Icons.help),
              SizedBox(
                height: 20,
              ),
              profileItem(
                  "About",
                  "Learn more about the grocery app, its mission, vision, and other pertinent information.",
                  Icons.info),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavigation(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.colorsGreen,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      "Log Out",
                      style: TextStyle(
                        color: AppColors.colorsLiteWhite,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileItem(String title, String subtitle, IconData iconData) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.colorsLiteWhite,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.colorsDarkGreen.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: AppColors.colorsGrey,
          ),
        ),
        leading: Icon(
          iconData,
          color: AppColors.colorsGreen,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: AppColors.colorsGrey,
        ),
        onTap: () {
          navigateTo(title);
        },
      ),
    );
  }

  void navigateTo(String title) {
    switch (title) {
      case "Name":
        // Handle navigation for Name
        break;
      case "Order":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNavigation(),
          ),
        );
        break;
      case "Delivery Address":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CartPage(),
          ),
        );
        break;
      case "My Details":
        // Handle navigation for My Details
        break;
      case "Help":
        // Handle navigation for Help
        break;
      case "About":
        // Handle navigation for About
        break;
    }
  }
}
