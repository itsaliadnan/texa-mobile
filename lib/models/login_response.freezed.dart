// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponse {

 String get id; String get fullName; String get phoneNumber; String get email; String get role; String get token; bool get isActive; List<dynamic> get projects; dynamic get wallet; int get totalBalance; List<dynamic> get projectWallets; String get creationDate;
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<LoginResponse> get copyWith => _$LoginResponseCopyWithImpl<LoginResponse>(this as LoginResponse, _$identity);

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.token, token) || other.token == token)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.projects, projects)&&const DeepCollectionEquality().equals(other.wallet, wallet)&&(identical(other.totalBalance, totalBalance) || other.totalBalance == totalBalance)&&const DeepCollectionEquality().equals(other.projectWallets, projectWallets)&&(identical(other.creationDate, creationDate) || other.creationDate == creationDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,phoneNumber,email,role,token,isActive,const DeepCollectionEquality().hash(projects),const DeepCollectionEquality().hash(wallet),totalBalance,const DeepCollectionEquality().hash(projectWallets),creationDate);

@override
String toString() {
  return 'LoginResponse(id: $id, fullName: $fullName, phoneNumber: $phoneNumber, email: $email, role: $role, token: $token, isActive: $isActive, projects: $projects, wallet: $wallet, totalBalance: $totalBalance, projectWallets: $projectWallets, creationDate: $creationDate)';
}


}

/// @nodoc
abstract mixin class $LoginResponseCopyWith<$Res>  {
  factory $LoginResponseCopyWith(LoginResponse value, $Res Function(LoginResponse) _then) = _$LoginResponseCopyWithImpl;
@useResult
$Res call({
 String id, String fullName, String phoneNumber, String email, String role, String token, bool isActive, List<dynamic> projects, dynamic wallet, int totalBalance, List<dynamic> projectWallets, String creationDate
});




}
/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._self, this._then);

  final LoginResponse _self;
  final $Res Function(LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fullName = null,Object? phoneNumber = null,Object? email = null,Object? role = null,Object? token = null,Object? isActive = null,Object? projects = null,Object? wallet = freezed,Object? totalBalance = null,Object? projectWallets = null,Object? creationDate = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,projects: null == projects ? _self.projects : projects // ignore: cast_nullable_to_non_nullable
as List<dynamic>,wallet: freezed == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as dynamic,totalBalance: null == totalBalance ? _self.totalBalance : totalBalance // ignore: cast_nullable_to_non_nullable
as int,projectWallets: null == projectWallets ? _self.projectWallets : projectWallets // ignore: cast_nullable_to_non_nullable
as List<dynamic>,creationDate: null == creationDate ? _self.creationDate : creationDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginResponse].
extension LoginResponsePatterns on LoginResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponse value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fullName,  String phoneNumber,  String email,  String role,  String token,  bool isActive,  List<dynamic> projects,  dynamic wallet,  int totalBalance,  List<dynamic> projectWallets,  String creationDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.id,_that.fullName,_that.phoneNumber,_that.email,_that.role,_that.token,_that.isActive,_that.projects,_that.wallet,_that.totalBalance,_that.projectWallets,_that.creationDate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fullName,  String phoneNumber,  String email,  String role,  String token,  bool isActive,  List<dynamic> projects,  dynamic wallet,  int totalBalance,  List<dynamic> projectWallets,  String creationDate)  $default,) {final _that = this;
switch (_that) {
case _LoginResponse():
return $default(_that.id,_that.fullName,_that.phoneNumber,_that.email,_that.role,_that.token,_that.isActive,_that.projects,_that.wallet,_that.totalBalance,_that.projectWallets,_that.creationDate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fullName,  String phoneNumber,  String email,  String role,  String token,  bool isActive,  List<dynamic> projects,  dynamic wallet,  int totalBalance,  List<dynamic> projectWallets,  String creationDate)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.id,_that.fullName,_that.phoneNumber,_that.email,_that.role,_that.token,_that.isActive,_that.projects,_that.wallet,_that.totalBalance,_that.projectWallets,_that.creationDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponse implements LoginResponse {
  const _LoginResponse({required this.id, required this.fullName, required this.phoneNumber, required this.email, required this.role, required this.token, required this.isActive, required final  List<dynamic> projects, required this.wallet, required this.totalBalance, required final  List<dynamic> projectWallets, required this.creationDate}): _projects = projects,_projectWallets = projectWallets;
  factory _LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

@override final  String id;
@override final  String fullName;
@override final  String phoneNumber;
@override final  String email;
@override final  String role;
@override final  String token;
@override final  bool isActive;
 final  List<dynamic> _projects;
@override List<dynamic> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

@override final  dynamic wallet;
@override final  int totalBalance;
 final  List<dynamic> _projectWallets;
@override List<dynamic> get projectWallets {
  if (_projectWallets is EqualUnmodifiableListView) return _projectWallets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projectWallets);
}

@override final  String creationDate;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseCopyWith<_LoginResponse> get copyWith => __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.token, token) || other.token == token)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._projects, _projects)&&const DeepCollectionEquality().equals(other.wallet, wallet)&&(identical(other.totalBalance, totalBalance) || other.totalBalance == totalBalance)&&const DeepCollectionEquality().equals(other._projectWallets, _projectWallets)&&(identical(other.creationDate, creationDate) || other.creationDate == creationDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,phoneNumber,email,role,token,isActive,const DeepCollectionEquality().hash(_projects),const DeepCollectionEquality().hash(wallet),totalBalance,const DeepCollectionEquality().hash(_projectWallets),creationDate);

@override
String toString() {
  return 'LoginResponse(id: $id, fullName: $fullName, phoneNumber: $phoneNumber, email: $email, role: $role, token: $token, isActive: $isActive, projects: $projects, wallet: $wallet, totalBalance: $totalBalance, projectWallets: $projectWallets, creationDate: $creationDate)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseCopyWith<$Res> implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(_LoginResponse value, $Res Function(_LoginResponse) _then) = __$LoginResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String fullName, String phoneNumber, String email, String role, String token, bool isActive, List<dynamic> projects, dynamic wallet, int totalBalance, List<dynamic> projectWallets, String creationDate
});




}
/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(this._self, this._then);

  final _LoginResponse _self;
  final $Res Function(_LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fullName = null,Object? phoneNumber = null,Object? email = null,Object? role = null,Object? token = null,Object? isActive = null,Object? projects = null,Object? wallet = freezed,Object? totalBalance = null,Object? projectWallets = null,Object? creationDate = null,}) {
  return _then(_LoginResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,projects: null == projects ? _self._projects : projects // ignore: cast_nullable_to_non_nullable
as List<dynamic>,wallet: freezed == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as dynamic,totalBalance: null == totalBalance ? _self.totalBalance : totalBalance // ignore: cast_nullable_to_non_nullable
as int,projectWallets: null == projectWallets ? _self._projectWallets : projectWallets // ignore: cast_nullable_to_non_nullable
as List<dynamic>,creationDate: null == creationDate ? _self.creationDate : creationDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
