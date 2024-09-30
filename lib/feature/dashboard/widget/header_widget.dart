import 'package:flutter/material.dart';

import '../../responsive/responsive.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          InkWell(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6,
              ),
              child: SizedBox(
                child: Icon(
                  Icons.menu,
                  color: Colors.grey,
                  size: 32,
                ),
              ),
            ),
          ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Theme.of(context).colorScheme.onPrimaryContainer,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
              hintText: "Search",
              hintStyle: TextStyle(
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              prefixIcon: const Icon(
                Icons.search,
                size: 24,
              ),
              prefixIconColor: Theme.of(context).colorScheme.primaryContainer,
            ),
          ),
        ),
        if (Responsive.isMobile(context))
          InkWell(
            onTap: () => Scaffold.of(context).openEndDrawer(),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6,
              ),
              child: SizedBox(
                child: Icon(
                  Icons.notifications,
                  color: Colors.grey,
                  size: 32,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
