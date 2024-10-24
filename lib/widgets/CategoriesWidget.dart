import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  // Method to build a single category item
  Widget _buildCategoryItem(String imagePath, String label, double size, double padding, double borderRadius) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(borderRadius),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Add a shadow effect
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(2, 3),
                ),
              ],
            ),
            child: Image.asset(
              imagePath,
              height: size, // Ensure the image has a consistent size
              width: size,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8), // Add space between the image and the label
          Text(
            label,
            style: const TextStyle(
              fontSize: 14, // Adjust the font size as needed
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            // Use the _buildCategoryItem method to generate items with labels
            _buildCategoryItem('assets/coke.webp', 'Coke', 70, 2, 3),
            _buildCategoryItem('assets/pizzaimg.jpg', 'Pizza', 70, 2, 3),
            _buildCategoryItem('assets/biriyani.jpg', 'Biriyani', 70, 2, 3),
            _buildCategoryItem('assets/burger.jpeg', 'Burger', 70, 2, 3),
            _buildCategoryItem('assets/chicken.jpeg', 'Chicken', 70, 2, 3),
            // You can add more items similar to this one
          ],
        ),
      ),
    );
  }
}
