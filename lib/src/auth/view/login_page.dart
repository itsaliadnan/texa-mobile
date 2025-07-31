import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/core/provider/auth_provider.dart';
import 'package:texa1_app/models/login_request.dart';
import 'package:texa1_app/src/auth/widgets/loading_button.dart';
import 'package:texa1_app/src/auth/widgets/passward_text_field.dart';
import 'package:texa1_app/src/auth/widgets/text_field.dart';
import 'package:texa1_app/translation/translations.g.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phoneController = useTextEditingController();
    final passwordController = useTextEditingController();
    final authState = ref.watch(authControllerProvider);
    // useEffect(() {
    //   ref.listen<AsyncValue<void>>(authControllerProvider, (previous, next) {
    //     next.whenOrNull(
    //       data: (_) {
    //         context.pushReplacement('/home');
    //       },
    //       error: (error, _) {
    //         ScaffoldMessenger.of(
    //           context,
    //         ).showSnackBar(SnackBar(content: Text(error.toString())));
    //       },
    //     );
    //   });
    //   return null;
    // }, const[ ]);

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
                  data: (data) {
                    context.pushReplacement('/home');
                  },
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
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:texa1_app/core/extensions/context_extensions.dart';
// import 'package:texa1_app/translation/translations.g.dart';

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final nameController = TextEditingController();
//   final phoneController = TextEditingController();
//   final passwordController = TextEditingController();
//   final confirmPasswordController = TextEditingController();
//   bool agreeTerms = false;
//   bool passwordVisible = false;
//   bool confirmPasswordVisible = false;

//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//         body: SafeArea(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const SizedBox(height: 32),
//                 Text(
//                   context.t.register.title,
//                   style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                     color: context.colorScheme.onPrimary,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   context.t.register.fill_info,
//                   style: Theme.of(context).textTheme.bodyMedium,
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(height: 32),

//                 Container(
//                   padding: const EdgeInsets.all(16),
//                   decoration: BoxDecoration(
//                     color: context.colorScheme.surface,
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Column(
//                     children: [
//                       _buildTextField(
//                         context.t.register.full_name,
//                         nameController,
//                       ),
//                       const SizedBox(height: 16),
//                       _buildTextField(
//                         context.t.register.phone_number,
//                         phoneController,
//                         keyboardType: TextInputType.phone,
//                       ),
//                       const SizedBox(height: 16),
//                       _buildTextField(
//                         context.t.register.password,
//                         passwordController,
//                         obscure: !passwordVisible,
//                         toggleVisibility: () => setState(() {
//                           passwordVisible = !passwordVisible;
//                         }),
//                       ),
//                       const SizedBox(height: 16),
//                       _buildTextField(
//                         context.t.register.confirm_password,
//                         confirmPasswordController,
//                         obscure: !confirmPasswordVisible,
//                         toggleVisibility: () => setState(() {
//                           confirmPasswordVisible = !confirmPasswordVisible;
//                         }),
//                       ),
//                       const SizedBox(height: 16),
//                       Row(
//                         children: [
//                           Checkbox(
//                             value: agreeTerms,
//                             activeColor: context.colorScheme.primary,
//                             onChanged: (value) {
//                               setState(() {
//                                 agreeTerms = value ?? false;
//                               });
//                             },
//                           ),
//                           Expanded(
//                             child: Text(
//                               context.t.register.terms_and_conditions,
//                               style: TextStyle(fontSize: 12),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 32),
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: context.colorScheme.primary,
//                       padding: const EdgeInsets.symmetric(vertical: 16),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(16),
//                       ),
//                     ),
//                     onPressed: agreeTerms
//                         ? () {
//                             context.go('/home');
//                           }
//                         : null,
//                     child: Text(context.t.register.title),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(
//     String label,
//     TextEditingController controller, {
//     TextInputType keyboardType = TextInputType.text,
//     bool obscure = false,
//     VoidCallback? toggleVisibility,
//   }) {
//     return TextField(
//       controller: controller,
//       keyboardType: keyboardType,
//       obscureText: obscure,
//       decoration: InputDecoration(
//         hintText: label,
//         filled: true,
//         fillColor: context.colorScheme.surface,
//         suffixIcon: toggleVisibility != null
//             ? IconButton(
//                 icon: Icon(obscure ? Icons.visibility_off : Icons.visibility),
//                 onPressed: toggleVisibility,
//               )
//             : null,
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//       ),
//     );
//   }
// }
