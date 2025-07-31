import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/src/profile/widgets/language_picker.dart';
import 'package:texa1_app/src/profile/widgets/notification_settings.dart';
import 'package:texa1_app/src/profile/widgets/theme_picker.dart';
import 'package:texa1_app/translation/translations.g.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  color: context.colorScheme.primary,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage(
                        "lib/assets/images/profile_pic.png",
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      context.t.profile.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      context.t.profile.phone,
                      style: TextStyle(
                        fontSize: 14,
                        color: context.colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const NotificationPicker(),
          const LanguagePicker(),
          const ThemeModePicker(),

          Divider(),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FilledButton(
              onPressed: () {
                context.push('/login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colorScheme.surfaceContainerLowest,
                foregroundColor: context.colorScheme.error,
                minimumSize: const Size.fromHeight(50),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                context.t.profile.logout,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
