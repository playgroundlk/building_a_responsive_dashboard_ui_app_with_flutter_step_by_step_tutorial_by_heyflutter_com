import 'package:flutter/material.dart';

import '../data/main_menu_data.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({super.key});

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final data = MainMenuData();

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 96,
      ),
      // TODO: Add theme support
      color: const Color.fromARGB(251, 3, 0, 31),
      child: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context, index) => _buildMenuEntry(data, index),
      ),
    );
  }

  Widget _buildMenuEntry(MainMenuData data, int index) {
    final isSelected = selectedIndex == index;
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(6.0),
        ),
        // TODO: Add theme support
        color: isSelected ? Colors.grey : Colors.transparent,
      ),
      child: InkWell(
        onTap: () => setState(() {
          selectedIndex = index;
        }),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 6,
              ),
              child: Icon(
                data.menu[index].icon,
                // TODO: Add theme support
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            Text(
              data.menu[index].title,
              // TODO: Add theme support
              style: TextStyle(
                fontSize: 16,
                color: isSelected ? Colors.black : Colors.grey,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
