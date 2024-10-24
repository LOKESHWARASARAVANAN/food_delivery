import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewestItemsWidget extends StatelessWidget {
  const NewestItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            // You can pass different image paths, item titles, and prices to make it reusable
            FoodItemCard(
              imagePath: 'assets/pizza.jpg'
                  ,
              title: 'Cheese Pizza',
              description: 'Cheesy delight with crispy crust',
              price: '\$12',
            ),
            FoodItemCard(
              imagePath: 'assets/biriyani.jpg',
              title: 'Pepperoni Pizza',
              description: 'Loaded with pepperoni slices',
              price: '\$15',
            ),
            FoodItemCard(
              imagePath: 'assets/pizza.jpg',
              title: 'Veggie Pizza',
              description: 'Fresh veggies on a whole-grain crust',
              price: '\$10',
            ),
            FoodItemCard(
              imagePath: 'assets/burger.jpeg',
              title: 'BBQ Chicken Pizza',
              description: 'BBQ sauce with grilled chicken',
              price: '\$14',
            ),
          ],
        ),
      ),
    );
  }
}

class FoodItemCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String price;

  const FoodItemCard({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: 380,
        height: 190,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  imagePath,
                  height: 120,
                  width: 150,
                ),
              ),
            ),
            SizedBox(
              width: 190,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 18,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                    onRatingUpdate: (index) {},
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 26,
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.red,
                    size: 26,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
