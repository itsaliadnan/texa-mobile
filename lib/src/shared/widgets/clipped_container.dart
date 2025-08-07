import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/models/profile_model.dart';

class ClippedContainer extends StatelessWidget {
  const ClippedContainer({super.key, required this.child, this.height = 149});
  final Widget child;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: height,
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(60)),
      ),
      child: child,
    );
  }
}

class ProfileClippedContainer extends StatelessWidget {
  const ProfileClippedContainer({
    super.key,
    required this.child,
    required this.height,
  });
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 375,
          height: height,
          decoration: BoxDecoration(
            color: context.colorScheme.primary,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(60),
            ),
          ),
        ),
        Positioned(
          left: 160,
          child: SvgPicture.asset(
            'lib/assets/icons/elipseb.svg',
            width: 300,

            height: height,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: -20,
          right: 210,
          bottom: 60,
          child: SvgPicture.asset(
            'lib/assets/icons/Ellipsea.svg',

            height: height,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(child: child),
      ],
    );
  }
}
