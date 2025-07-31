import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  final bool isLoading;
  final String text;
  final VoidCallback onPressed;

  const LoadingButton({
    super.key,
    required this.isLoading,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(48)),
      child: isLoading
          ? const CircularProgressIndicator()
          : Text(text, style: const TextStyle(fontSize: 16)),
    );
  }
}
