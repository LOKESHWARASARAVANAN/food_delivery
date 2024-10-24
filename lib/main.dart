import 'package:flutter/material.dart';
import 'package:food_delivery/itemPage.dart'; // Correct import
import 'CartPage.dart';
import 'HomePage.dart';  // Correct import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Changed color to white
      ),
      routes: {
        "/":(context)=>Homepage(),
        "cartPage" : (context) => Cartpage(),// Corrected to CartPage (assuming this is the correct class)
        "itemPage": (context) => const ItemPage(   // Corrected to ItemPage and provided parameters
          imagePath: 'assets/biriyani.jpg',   // You will need to pass proper parameters when navigating
          itemName: 'Example Item',
          description: 'Example description',
          price: '\$10',
        ),
      },
    );
  }
}
