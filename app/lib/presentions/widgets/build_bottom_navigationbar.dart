import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../pages/views/home_page.dart';
import '../resourcce/theme_manager.dart';

BottomNavigationBar buildBottomNavigationBar(int currentIndex, WidgetRef ref) {
  return BottomNavigationBar(
    currentIndex: currentIndex,
    onTap: (value) =>
        ref.read(currentIndexProvider.notifier).update((state) => value),
    selectedItemColor: kPrimaryColor,
    unselectedItemColor: kSecondaryColor,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        label: 'Home',
        activeIcon: Icon(Icons.home_filled),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite_outline),
        label: 'Favorite',
        activeIcon: Icon(Icons.favorite),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.location_on_outlined),
        label: 'Location',
        activeIcon: Icon(Icons.location_on),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.notifications_outlined),
        label: 'Notification',
        activeIcon: Icon(Icons.notifications),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        label: 'Profile',
        activeIcon: Icon(Icons.person),
      ),
    ],
  );
}
