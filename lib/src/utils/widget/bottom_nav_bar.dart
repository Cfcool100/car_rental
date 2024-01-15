import 'package:car_rental/src/core/core.dart';
import 'package:flutter/material.dart';




class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
    //
      },
      backgroundColor: AppColor.santasGray.withOpacity(0),
      currentIndex: 0,
      elevation: 0,
      selectedItemColor: AppColor.black,
      unselectedItemColor: AppColor.santasGray,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded), label: 'Explore'),
        BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_rounded), label: 'Saved'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_rounded), label: 'Notifications'),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), label: 'Settings'),
      ],
    );
  }
}
