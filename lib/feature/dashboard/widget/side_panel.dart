import 'package:flutter/material.dart';

import '../../responsive/responsive.dart';

class SidePanel extends StatelessWidget {
  const SidePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height, // wran
      color: const Color.fromARGB(221, 19, 5, 71),
      child: Column(
        children: [
          if (Responsive.isMobile(context))
            InkWell(
              onTap: () => Scaffold.of(context).closeEndDrawer(),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                child: SizedBox(
                  child: Icon(
                    Icons.close,
                    color: Colors.grey,
                    size: 32,
                  ),
                ),
              ),
            ),
          const Expanded(
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}
