// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:texa1_app/core/data/api/profile_api.dart';
// import 'package:texa1_app/models/profile_model.dart';

// final profileController = FutureProvider<ProfileModel>((ref) async {
//   final res = await ref.read(profileApiProvider).getMyProfile();
//   return res;
// });
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:texa1_app/core/data/api/profile_api.dart';
import 'package:texa1_app/core/provider/local_storage_provider.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/models/profile_model.dart';

final profileControllerProvider =
    AsyncNotifierProvider<ProfileController, ProfileModel>(
      () => ProfileController(),
    );

class ProfileController extends AsyncNotifier<ProfileModel> {
  @override
  Future<ProfileModel> build() async {
    final res = await ref.read(profileApiProvider).getMyProfile();
    return res;
  }
}
