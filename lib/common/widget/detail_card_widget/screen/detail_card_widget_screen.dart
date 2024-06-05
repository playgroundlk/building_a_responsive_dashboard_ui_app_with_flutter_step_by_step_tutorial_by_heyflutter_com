import 'package:flutter/material.dart';

import '../../../../feature/responsive/responsive.dart';
import '../data/detail_card_widget_data.dart';
import '../widget/card_widget.dart';

class DetailCardWidgetScreen extends StatelessWidget {
  const DetailCardWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final detailCardWidgetData = DetailCardWidgetData();
    return GridView.builder(
      itemCount: detailCardWidgetData.detailCardWidgetData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) => CardWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              detailCardWidgetData.detailCardWidgetData[index].icon,
              size: 48,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 3,
              ),
              child: Text(
                detailCardWidgetData.detailCardWidgetData[index].value,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Text(
              detailCardWidgetData.detailCardWidgetData[index].title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
