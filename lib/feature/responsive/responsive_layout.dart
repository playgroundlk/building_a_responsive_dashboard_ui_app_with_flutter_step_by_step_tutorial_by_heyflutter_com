import 'package:flutter/material.dart';

import 'desktop_layout.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: add other layouts here, like mobile. tablet...
    return const DesktopLayout();
  }
}
