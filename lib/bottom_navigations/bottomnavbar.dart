import 'package:first_project/firebase/features/user_auth/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
//aaaaa
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Colors.blue, // Change the color of the selected item
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
          BottomNavigationBarItem(icon: Icon(Icons.code), label: 'Code'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
          ],
      //DITO YNG SA BOTTOM NAVIGATOR BAR
      onTap: (int index) {
        // Handle navigation here based on the selected tab
        if (index == 0) { // 0 is home
          // Navigate to the mainProfile page
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        }
        // You can add more conditions for other tabs if needed
      },
    );
  }
}
