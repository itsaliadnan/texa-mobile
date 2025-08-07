import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/models/login_request.dart';
import 'package:texa1_app/src/auth/controller/auth_controller.dart';
import 'package:texa1_app/src/auth/widgets/loading_button.dart';
import 'package:texa1_app/src/auth/widgets/passward_text_field.dart';
import 'package:texa1_app/src/auth/widgets/text_field.dart';
import 'package:texa1_app/translation/translations.g.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phoneController = useTextEditingController(
      text: kDebugMode ? '07877777777' : '',
    );
    final passwordController = useTextEditingController(
      text: kDebugMode ? '12345678' : '',
    );
    final authState = ref.watch(authControllerProvider);
    return Scaffold(
      appBar: AppBar(title: Text(context.t.login.login)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFieldWidget(
              controller: phoneController,
              hintText: context.t.login.phone_number,
              keyboardType: TextInputType.phone,
              label: '',
            ),
            const SizedBox(height: 16),
            PasswordTextField(controller: passwordController, label: ''),
            const SizedBox(height: 32),
            LoadingButton(
              isLoading: authState.isLoading,
              text: context.t.login.login,
              onPressed: () async {
                final phone = phoneController.text.trim();
                final password = passwordController.text.trim();
                final request = LoginRequest(
                  phoneNumber: phone,
                  password: password,
                );
                await ref.read(authControllerProvider.notifier).login(request);

                authState.when(
                  data: (data) {},
                  error: (error, stackTrace) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(error.toString())));
                  },
                  loading: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
