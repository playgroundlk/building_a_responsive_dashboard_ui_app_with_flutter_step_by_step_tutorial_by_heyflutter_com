import 'package:flutter/material.dart';

import '../../../common/widget/detail_card_widget/screen/detail_card_widget_screen.dart';
import '../../responsive/responsive.dart';
import '../widget/header_widget.dart';
import '../widget/side_panel.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 12,
        ),
        // color: Theme.of(context).colorScheme.onPrimaryContainer,
        child: Column(
          children: [
            const SizedBox(height: 12),
            const HeaderWidget(),
            const SizedBox(height: 12),
            const DetailCardWidgetScreen(),
            const SizedBox(height: 12),
            Container(
              height: 200,
              color: Colors.amber,
            ),
            const SizedBox(height: 12),
            const Placeholder(),
            const SizedBox(height: 12),
            if (Responsive.isTablet(context)) const SidePanel(),
            if (Responsive.isTablet(context)) const SizedBox(height: 12),

            const Placeholder(),
            const SizedBox(height: 12),

            // Expanded(
            //   // flex: 8,
            //   // child: Container(),
            // ),
          ],
        ),
      ),
    );
  }
}
