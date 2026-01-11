import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/nav_item.dart';

class AppNavigationBar extends StatelessWidget {
  final int currentIndex;
  final List<NavItem> items;
  final String bottomBarTitle;
  final ValueChanged<int> onTap;

  const AppNavigationBar({
    super.key,
    required this.currentIndex,
    required this.items,
    required this.bottomBarTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      indicatorColor: Colors.amber,
      destinations: items
          .map(
            (item) => NavigationDestination(
              selectedIcon: Icon(item.selectedIcon),
              icon: Icon(item.icon),
              label: item.pageItem.bottomBarTitle,
            ),
          )
          .toList(),
    );
  }
}
