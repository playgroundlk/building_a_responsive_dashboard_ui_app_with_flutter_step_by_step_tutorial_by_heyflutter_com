import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  const CardWidget({
    super.key,
    required this.child,
    this.color,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        color: color ?? Theme.of(context).colorScheme.outline,
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(6),
        child: child,
      ),
    );
  }
}
