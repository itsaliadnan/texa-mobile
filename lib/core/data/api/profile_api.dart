import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/http.dart';
import 'package:texa1_app/core/data/api/dio_client.dart';
import 'package:texa1_app/core/utils/parse_erorr.dart';
import 'package:texa1_app/models/profile_model.dart';

part 'profile_api.g.dart';

final profileApiProvider = Provider<ProfileApi>((ref) {
  return ProfileApi(ref.read(dioProvider));
});

@RestApi()
abstract class ProfileApi {
  factory ProfileApi(Dio dio, {String? baseUrl}) = _ProfileApi;
  @GET('/auth/myprofile')
  Future<ProfileModel> getMyProfile();
}
