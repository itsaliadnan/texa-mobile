import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:texa1_app/app.dart';
import 'package:texa1_app/core/provider/local_storage_provider.dart';
import 'package:texa1_app/translation/translations.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    TranslationProvider(
      child: ProviderScope(
        overrides: [
          sharedPreferencesProvider.overrideWith((ref) => sharedPreferences),
        ],
        child: const TexaApp(),
      ),
    ),
  );
}

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:texa1_app/app.dart';
// import 'package:texa1_app/core/provider/local_storage_provider.dart';
// import 'package:texa1_app/translation/translations.g.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   final sharedPreferences = await SharedPreferences.getInstance();

//   runApp(
//     TranslationProvider(
//       child: ProviderScope(
//         overrides: [
//           sharedPreferencesProvider.overrideWith((ref) => sharedPreferences),
//         ],
//         child: TexaApp(),
//       ),
//     ),
//   );
// }
