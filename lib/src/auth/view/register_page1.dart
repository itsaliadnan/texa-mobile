// // lib/src/auth/view/register_page.dart
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:texa1_app/core/provider/auth_provider.dart';
// import 'package:texa1_app/models/register_request.dart';
// import 'package:texa1_app/src/auth/widgets/loading_button.dart';
// import 'package:texa1_app/src/auth/widgets/passward_text_field.dart';
// import 'package:texa1_app/src/auth/widgets/text_field.dart';

// class RegisterPage extends HookConsumerWidget {
//   const RegisterPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final fullNameController = useTextEditingController();
//     final phoneController = useTextEditingController();
//     final passwordController = useTextEditingController();
//     final confirmPasswordController = useTextEditingController();
//     final acceptTerms = useState(false);
//     final authState = ref.watch(authControllerProvider);

//     void handleRegister() {
//       if (!acceptTerms.value) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('يجب الموافقة على الشروط')),
//         );
//         return;
//       }

//       if (passwordController.text != confirmPasswordController.text) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('كلمتا المرور غير متطابقتين')),
//         );
//         return;
//       }

//       final request = RegisterRequest(
//         fullName: fullNameController.text.trim(),
//         phoneNumber: phoneController.text.trim(),
//         password: passwordController.text.trim(),
//       );

//       ref.read(authControllerProvider.notifier).register(request);
//     }

//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               const SizedBox(height: 32),
//               const Text(
//                 'تسجيل دخول',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 8),
//               const Text(
//                 'املأ المعلومات أدناه لبدء رحلتك معنا.',
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 32),
//               TextFieldWidget(
//                 controller: fullNameController,
//                 label: 'اسمك الكامل',
//               ),
//               const SizedBox(height: 16),
//               TextFieldWidget(
//                 controller: phoneController,
//                 label: 'رقم الهاتف',
//                 keyboardType: TextInputType.phone,
//               ),
//               const SizedBox(height: 16),
//               PasswordTextField(
//                 controller: passwordController,
//                 label: 'كلمة المرور',
//               ),
//               const SizedBox(height: 16),
//               PasswordTextField(
//                 controller: confirmPasswordController,
//                 label: 'تأكيد كلمة المرور',
//               ),
//               const SizedBox(height: 16),
//               Row(
//                 children: [
//                   Checkbox(
//                     value: acceptTerms.value,
//                     onChanged: (v) => acceptTerms.value = v ?? false,
//                   ),
//                   const Expanded(
//                     child: Text(
//                       'من خلال تحديد المربع فأنت توافق على الشروط والأحكام الخاصة بنا.',
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 16),
//               LoadingButton(
//                 isLoading: authState.isLoading,
//                 text: 'تسجيل دخول',
//                 onPressed: handleRegister,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
