/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAppComponentsGen {
  const $AssetsAppComponentsGen();

  $AssetsAppComponentsJpgGen get jpg => const $AssetsAppComponentsJpgGen();
  $AssetsAppComponentsPngGen get png => const $AssetsAppComponentsPngGen();
  $AssetsAppComponentsSvgGen get svg => const $AssetsAppComponentsSvgGen();
}

class $AssetsCompanyGen {
  const $AssetsCompanyGen();

  /// File path: assets/company/appBarLogo.png
  AssetGenImage get appBarLogo =>
      const AssetGenImage('assets/company/appBarLogo.png');

  /// List of all assets
  List<AssetGenImage> get values => [appBarLogo];
}

class $AssetsAppComponentsJpgGen {
  const $AssetsAppComponentsJpgGen();

  /// File path: assets/appComponents/jpg/beispiel_table.jpg
  AssetGenImage get beispielTable =>
      const AssetGenImage('assets/appComponents/jpg/beispiel_table.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [beispielTable];
}

class $AssetsAppComponentsPngGen {
  const $AssetsAppComponentsPngGen();

  /// File path: assets/appComponents/png/icon_menu.png
  AssetGenImage get iconMenu =>
      const AssetGenImage('assets/appComponents/png/icon_menu.png');

  /// List of all assets
  List<AssetGenImage> get values => [iconMenu];
}

class $AssetsAppComponentsSvgGen {
  const $AssetsAppComponentsSvgGen();

  /// File path: assets/appComponents/svg/menue_Icon.svg
  String get menueIcon => 'assets/appComponents/svg/menue_Icon.svg';

  /// List of all assets
  List<String> get values => [menueIcon];
}

class Assets {
  Assets._();

  static const $AssetsAppComponentsGen appComponents =
      $AssetsAppComponentsGen();
  static const $AssetsCompanyGen company = $AssetsCompanyGen();
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
