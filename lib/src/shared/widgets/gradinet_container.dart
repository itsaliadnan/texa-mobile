import 'package:flutter/material.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: const [0.1, 0.7],
          colors: [
            context.colorScheme.primaryContainer.withValues(alpha: 0.003),
            context.colorScheme.surface,
          ],
        ),
      ),
      child: child,
    );
  }
}
