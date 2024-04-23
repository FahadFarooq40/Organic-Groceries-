import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_colors.dart';

class SerachingBox extends StatefulWidget {
  const SerachingBox({super.key});

  @override
  State<SerachingBox> createState() => _SerachingBoxState();
}

class _SerachingBoxState extends State<SerachingBox> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
          hintText: 'Grocery Searching....',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: AppColors.colorsGrey,
            ),
          ),
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () => _searchController.clear(),
          ),
        ),
        onSubmitted: (String searchText) {
          // Handle search here
        },
        textInputAction: TextInputAction.search,
      ),
    );
  }
}
