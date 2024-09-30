import 'package:flutter/material.dart';

import '../dashboard/screen/dashboard_screen.dart';
import '../dashboard/widget/side_panel.dart';
import '../main_menu/screen/main_menu_screen.dart';
import 'responsive.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      drawer: !isDesktop
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const MainMenuScreen(),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              const Expanded(
                flex: 2,
                child: SizedBox(
                  child: MainMenuScreen(),
                ),
              ),
            const Expanded(
              flex: 7,
              child: SizedBox(
                child: DashboardScreen(),
              ),
            ),
            if (isDesktop) const Expanded(flex: 3, child: SidePanel()),
          ],
        ),
      ),
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SidePanel(),
            )
          : null,
    );
  }
}
