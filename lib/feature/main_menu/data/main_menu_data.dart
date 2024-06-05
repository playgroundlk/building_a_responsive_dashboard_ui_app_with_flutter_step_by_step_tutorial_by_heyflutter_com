import 'package:flutter/material.dart';

import '../model/main_menu_model.dart';

class MainMenuData {
  final menu = const <MainMenuModel>[
    MainMenuModel(icon: Icons.home, title: 'Dashboard'),
    MainMenuModel(icon: Icons.person, title: 'Profile'),
    MainMenuModel(icon: Icons.settings, title: 'Settings'),
    MainMenuModel(icon: Icons.history, title: 'History'),
    MainMenuModel(icon: Icons.logout, title: 'Logout'),
  ];
}
