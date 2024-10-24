import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../itemPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const PopularItemWidget(),
    );
  }
}

class PopularItemWidget extends StatelessWidget {
  const PopularItemWidget({super.key});

  void navigateToItemPage(BuildContext context, String imagePath, String itemName, String description, String price) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ItemPage(
          imagePath: imagePath,
          itemName: itemName,
          description: description,
          price: price,
        ),
      ),
    );
  }

  Widget _buildBurgerItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: InkWell(
        onTap: () {
          navigateToItemPage(
            context,
            'assets/burger.jpeg',
            'Hot Burger',
            'Taste our Hot Burger',
            '\$10',
          );
        },
        child: _buildItemContainer(
          imagePath: 'assets/burger.jpeg',
          itemName: 'Hot Burger',
          description: 'Taste our Hot Burger',
          price: '\$10',
        ),
      ),
    );
  }

  Widget _buildPizzaItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: InkWell(
        onTap: () {
          navigateToItemPage(
            context,
            'assets/pizza.jpg',
            'Cheese Pizza',
            'Delicious Cheese Pizza',
            '\$12',
          );
        },
        child: _buildItemContainer(
          imagePath: 'assets/pizza.jpg',
          itemName: 'Cheese Pizza',
          description: 'Delicious Cheese Pizza',
          price: '\$12',
        ),
      ),
    );
  }

  Widget _buildBiryaniItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: InkWell(
        onTap: () {
          navigateToItemPage(
            context,
            'assets/biriyani.jpg',
            'Spicy Biryani',
            'Aromatic Spicy Biryani',
            '\$15',
          );
        },
        child: _buildItemContainer(
          imagePath: 'assets/biriyani.jpg',
          itemName: 'Spicy Biryani',
          description: 'Aromatic Spicy Biryani',
          price: '\$15',
        ),
      ),
    );
  }

  Widget _buildChickenItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: InkWell(
        onTap: () {
          navigateToItemPage(
            context,
            'assets/chicken.jpeg',
            'Grilled Chicken',
            'Juicy Chicken',
            '\$18',
          );
        },
        child: _buildItemContainer(
          imagePath: 'assets/chicken.jpeg',
          itemName: 'Grilled Chicken',
          description: 'Juicy Chicken',
          price: '\$18',
        ),
      ),
    );
  }

  Widget _buildCokeItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: InkWell(
        onTap: () {
          navigateToItemPage(
            context,
            'assets/coke.webp',
            'Chilled Coke',
            'Refreshing Chilled Coke',
            '\$2',
          );
        },
        child: _buildItemContainer(
          imagePath: 'assets/coke.webp',
          itemName: 'Chilled Coke',
          description: 'Refreshing Chilled Coke',
          price: '\$2',
        ),
      ),
    );
  }

  Widget _buildItemContainer({
    required String imagePath,
    required String itemName,
    required String description,
    required String price,
  }) {
    return Container(
      width: 170,
      height: 265,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: 130,
            ),
            Text(
              itemName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              description,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                  size: 16,
                ),
              ],
            ),
          ],
        ),
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
            _buildBurgerItem(context),
            _buildPizzaItem(context),
            _buildBiryaniItem(context),
            _buildChickenItem(context),
            _buildCokeItem(context),
          ],
        ),
      ),
    );
  }
}
