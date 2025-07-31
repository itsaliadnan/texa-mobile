import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:texa1_app/constants/assets.dart';

class PasswordTextField extends HookWidget {
  final TextEditingController controller;
  final String label;

  const PasswordTextField({
    super.key,
    required this.controller,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final obscure = useState(false);

    return TextField(
      controller: controller,
      obscureText: obscure.value,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: SvgPicture.asset(
            obscure.value ? Assets.eye : Assets.eyeOff,
            width: 20,
            height: 20,
          ),
          onPressed: () => obscure.value = !obscure.value,
        ),
      ),
    );
  }
}
