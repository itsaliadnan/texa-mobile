import 'package:flutter/material.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';

class ClippedContainer extends StatelessWidget {
  const ClippedContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 149,
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(60)),
      ),
      child: child,
    );
  }
}
