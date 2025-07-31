import 'package:flutter/material.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';

class RadioListTileWidget<T> extends StatelessWidget {
  const RadioListTileWidget({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.title,
    this.secondary,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 16),
  });

  final T value;
  final T? groupValue;
  final ValueChanged<T?> onChanged;
  final Widget title;
  final Widget? secondary;
  final EdgeInsetsGeometry contentPadding;

  bool get isSelected => value == groupValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected
            ? context.colorScheme.primary.withValues(alpha: 0.1)
            : context.colorScheme.surfaceContainerHigh,
        border: Border.all(
          color: isSelected
              ? context.colorScheme.primary
              : context.colorScheme.outline,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: RadioListTile<T>(
        value: value,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        groupValue: groupValue,
        onChanged: onChanged,
        title: title,
        secondary: secondary,
        activeColor: context.colorScheme.primary,
        contentPadding: contentPadding,
      ),
    );
  }
}
