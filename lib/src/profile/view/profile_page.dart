import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/core/provider/profile_provider.dart';
import 'package:texa1_app/src/auth/controller/auth_controller.dart';
import 'package:texa1_app/src/profile/widgets/language_picker.dart';
import 'package:texa1_app/src/profile/widgets/notification_settings.dart';
import 'package:texa1_app/src/profile/widgets/theme_picker.dart';
import 'package:texa1_app/src/shared/widgets/clipped_container.dart';
import 'package:texa1_app/translation/translations.g.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: Column(
        children: [
          ProfileClippedContainer(
            height: 230,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    const CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage(
                        "lib/assets/images/profile_pic.png",
                      ),
                    ),
                    const SizedBox(height: 12),
                    Consumer(
                      builder: (context, ref, _) {
                        final profileAsync = ref.watch(
                          profileControllerProvider,
                        );
                        return profileAsync.when(
                          data: (profileData) => Column(
                            children: [
                              Text(
                                profileData.fullName,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                profileData.phoneNumber,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: context.colorScheme.onSurface,
                                ),
                              ),
                            ],
                          ),
                          loading: () => const CircularProgressIndicator(),
                          error: (error, stack) {
                            log('cccccc Profile Error: $error');
                            return Text('Error: $error');
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
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
                ref.read(authControllerProvider.notifier).logout();
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
