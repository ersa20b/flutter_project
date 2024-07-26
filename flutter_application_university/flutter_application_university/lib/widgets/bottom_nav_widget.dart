import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChange;

  const BottomNavWidget({Key? key, required this.selectedIndex, required this.onTabChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: GNav(
          backgroundColor: Colors.grey.shade300,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey,
          gap: 16,
          selectedIndex: selectedIndex,
          onTabChange: (index) {
            onTabChange(index);
            _navigateToPage(context, index);
          },
          tabs: const [
            GButton(
              icon: Icons.home_filled,
              text: 'Home',
            ),
            GButton(
              icon: Icons.task_outlined,
              text: 'Tasks',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToPage(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/tasks');
        break;
      case 2:
        Navigator.pushNamed(context, '/settings');
        break;
    }
  }
}
