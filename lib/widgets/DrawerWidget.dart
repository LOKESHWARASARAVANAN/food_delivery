import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(

        children: [

          DrawerHeader(

            padding: EdgeInsets.zero,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.redAccent, Colors.red],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.start,// Center the content vertically
                children: [
                  //Padding(padding: EdgeInsets.symmetric(vertical: 3,horizontal: 33)),
                  CircleAvatar(

                    backgroundImage: AssetImage('assets/avatar.webp'),
                    radius: 35,
                    backgroundColor: Colors.white,

                  ),
                  const SizedBox(height: 8), // Space between avatar and name
                  Text(
                    'Lokesh',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(height: 4), // Space between name and email
                  Text(
                    'lokesh@gmail.com',
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          // List tiles with spacing
          _buildDrawerItem(Icons.home, 'Home', context),
          _buildDrawerItem(Icons.person, 'My Account', context),
          _buildDrawerItem(Icons.shopping_cart, 'My Orders', context),
          _buildDrawerItem(Icons.favorite, 'My Wish List', context),
          _buildDrawerItem(Icons.settings, 'Settings', context),
          _buildDrawerItem(Icons.exit_to_app, 'Log Out', context),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16), // Add vertical spacing
      child: ListTile(
        leading: Icon(icon, color: Colors.red),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        onTap: () {
          // Handle tap actions if needed
          Navigator.pop(context); // Close the drawer
        },
      ),
    );
  }
}
