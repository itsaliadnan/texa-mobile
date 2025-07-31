// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $LibGen {
  const $LibGen();

  /// Directory path: lib/assets
  $LibAssetsGen get assets => const $LibAssetsGen();
}

class $LibAssetsGen {
  const $LibAssetsGen();

  /// Directory path: lib/assets/icons
  $LibAssetsIconsGen get icons => const $LibAssetsIconsGen();

  /// Directory path: lib/assets/images
  $LibAssetsImagesGen get images => const $LibAssetsImagesGen();
}

class $LibAssetsIconsGen {
  const $LibAssetsIconsGen();

  /// File path: lib/assets/icons/Bar.svg
  String get bar => 'lib/assets/icons/Bar.svg';

  /// File path: lib/assets/icons/back.svg
  String get back => 'lib/assets/icons/back.svg';

  /// File path: lib/assets/icons/bag_active.svg
  String get bagActive => 'lib/assets/icons/bag_active.svg';

  /// File path: lib/assets/icons/bag_unactive.svg
  String get bagUnactive => 'lib/assets/icons/bag_unactive.svg';

  /// File path: lib/assets/icons/deposit.svg
  String get deposit => 'lib/assets/icons/deposit.svg';

  /// File path: lib/assets/icons/eye.svg
  String get eye => 'lib/assets/icons/eye.svg';

  /// File path: lib/assets/icons/home.svg
  String get home => 'lib/assets/icons/home.svg';

  /// File path: lib/assets/icons/home_active.svg
  String get homeActive => 'lib/assets/icons/home_active.svg';

  /// File path: lib/assets/icons/home_unactive.svg
  String get homeUnactive => 'lib/assets/icons/home_unactive.svg';

  /// File path: lib/assets/icons/line.svg
  String get line => 'lib/assets/icons/line.svg';

  /// File path: lib/assets/icons/login.svg
  String get login => 'lib/assets/icons/login.svg';

  /// File path: lib/assets/icons/logout.svg
  String get logout => 'lib/assets/icons/logout.svg';

  /// File path: lib/assets/icons/person_active.svg
  String get personActive => 'lib/assets/icons/person_active.svg';

  /// File path: lib/assets/icons/person_unactive.svg
  String get personUnactive => 'lib/assets/icons/person_unactive.svg';

  /// File path: lib/assets/icons/procces_stages.svg
  String get proccesStages => 'lib/assets/icons/procces_stages.svg';

  /// File path: lib/assets/icons/transfer.svg
  String get transfer => 'lib/assets/icons/transfer.svg';

  /// File path: lib/assets/icons/wallets.svg
  String get wallets => 'lib/assets/icons/wallets.svg';

  /// File path: lib/assets/icons/whatsapp.svg
  String get whatsapp => 'lib/assets/icons/whatsapp.svg';

  /// List of all assets
  List<String> get values => [
    bar,
    back,
    bagActive,
    bagUnactive,
    deposit,
    eye,
    home,
    homeActive,
    homeUnactive,
    line,
    login,
    logout,
    personActive,
    personUnactive,
    proccesStages,
    transfer,
    wallets,
    whatsapp,
  ];
}

class $LibAssetsImagesGen {
  const $LibAssetsImagesGen();

  /// File path: lib/assets/images/profile_pic.png
  AssetGenImage get profilePic =>
      const AssetGenImage('lib/assets/images/profile_pic.png');

  /// List of all assets
  List<AssetGenImage> get values => [profilePic];
}

class Assets {
  const Assets._();

  static const $LibGen lib = $LibGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
