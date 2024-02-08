/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/lambo.png
  AssetGenImage get lambo => const AssetGenImage('assets/images/lambo.png');

  $AssetsImagesProductsGen get products => const $AssetsImagesProductsGen();
  $AssetsImagesProfileGen get profile => const $AssetsImagesProfileGen();

  /// List of all assets
  List<AssetGenImage> get values => [lambo];
}

class $AssetsImagesProductsGen {
  const $AssetsImagesProductsGen();

  /// File path: assets/images/products/Bmw_4_serisi.png
  AssetGenImage get bmw4Serisi =>
      const AssetGenImage('assets/images/products/Bmw_4_serisi.png');

  /// File path: assets/images/products/Bmw_x1.png
  AssetGenImage get bmwX1 =>
      const AssetGenImage('assets/images/products/Bmw_x1.png');

  /// File path: assets/images/products/bmw_1.png
  AssetGenImage get bmw1 =>
      const AssetGenImage('assets/images/products/bmw_1.png');

  /// File path: assets/images/products/bmw_2.png
  AssetGenImage get bmw2 =>
      const AssetGenImage('assets/images/products/bmw_2.png');

  /// File path: assets/images/products/bmw_3.png
  AssetGenImage get bmw3 =>
      const AssetGenImage('assets/images/products/bmw_3.png');

  /// File path: assets/images/products/renter_1.jpg
  AssetGenImage get renter1 =>
      const AssetGenImage('assets/images/products/renter_1.jpg');

  /// File path: assets/images/products/renter_2.jpg
  AssetGenImage get renter2 =>
      const AssetGenImage('assets/images/products/renter_2.jpg');

  /// File path: assets/images/products/renter_3.jpg
  AssetGenImage get renter3 =>
      const AssetGenImage('assets/images/products/renter_3.jpg');

  /// File path: assets/images/products/renter_4.jpg
  AssetGenImage get renter4 =>
      const AssetGenImage('assets/images/products/renter_4.jpg');

  /// File path: assets/images/products/tesla.png
  AssetGenImage get tesla =>
      const AssetGenImage('assets/images/products/tesla.png');

  /// File path: assets/images/products/tesla_1.png
  AssetGenImage get tesla1 =>
      const AssetGenImage('assets/images/products/tesla_1.png');

  /// File path: assets/images/products/tesla_2.png
  AssetGenImage get tesla2 =>
      const AssetGenImage('assets/images/products/tesla_2.png');

  /// File path: assets/images/products/tesla_3.png
  AssetGenImage get tesla3 =>
      const AssetGenImage('assets/images/products/tesla_3.png');

  /// File path: assets/images/products/user.jpg
  AssetGenImage get user =>
      const AssetGenImage('assets/images/products/user.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        bmw4Serisi,
        bmwX1,
        bmw1,
        bmw2,
        bmw3,
        renter1,
        renter2,
        renter3,
        renter4,
        tesla,
        tesla1,
        tesla2,
        tesla3,
        user
      ];
}

class $AssetsImagesProfileGen {
  const $AssetsImagesProfileGen();

  /// File path: assets/images/profile/profile.jpg
  AssetGenImage get profile =>
      const AssetGenImage('assets/images/profile/profile.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [profile];
}

class MyImage {
  MyImage._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
