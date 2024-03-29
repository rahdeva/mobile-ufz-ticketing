/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $LibGen {
  const $LibGen();

  $LibResourcesGen get resources => const $LibResourcesGen();
}

class $LibResourcesGen {
  const $LibResourcesGen();

  $LibResourcesImagesGen get images => const $LibResourcesImagesGen();
}

class $LibResourcesImagesGen {
  const $LibResourcesImagesGen();

  /// File path: lib/resources/images/ic_discover_active.png
  AssetGenImage get icDiscoverActive =>
      const AssetGenImage('lib/resources/images/ic_discover_active.png');

  /// File path: lib/resources/images/ic_discover_unactive.png
  AssetGenImage get icDiscoverUnactive =>
      const AssetGenImage('lib/resources/images/ic_discover_unactive.png');

  /// File path: lib/resources/images/ic_event.png
  AssetGenImage get icEvent =>
      const AssetGenImage('lib/resources/images/ic_event.png');

  /// File path: lib/resources/images/ic_flash.png
  AssetGenImage get icFlash =>
      const AssetGenImage('lib/resources/images/ic_flash.png');

  /// File path: lib/resources/images/ic_past_ticket_active.png
  AssetGenImage get icPastTicketActive =>
      const AssetGenImage('lib/resources/images/ic_past_ticket_active.png');

  /// File path: lib/resources/images/ic_past_ticket_unactive.png
  AssetGenImage get icPastTicketUnactive =>
      const AssetGenImage('lib/resources/images/ic_past_ticket_unactive.png');

  /// File path: lib/resources/images/ic_scan.png
  AssetGenImage get icScan =>
      const AssetGenImage('lib/resources/images/ic_scan.png');

  /// File path: lib/resources/images/ic_setting_active.png
  AssetGenImage get icSettingActive =>
      const AssetGenImage('lib/resources/images/ic_setting_active.png');

  /// File path: lib/resources/images/ic_setting_unactive.png
  AssetGenImage get icSettingUnactive =>
      const AssetGenImage('lib/resources/images/ic_setting_unactive.png');

  /// File path: lib/resources/images/img_empty.png
  AssetGenImage get imgEmpty =>
      const AssetGenImage('lib/resources/images/img_empty.png');

  /// File path: lib/resources/images/img_error.png
  AssetGenImage get imgError =>
      const AssetGenImage('lib/resources/images/img_error.png');

  /// File path: lib/resources/images/img_listBG_blue.png
  AssetGenImage get imgListBGBlue =>
      const AssetGenImage('lib/resources/images/img_listBG_blue.png');

  /// File path: lib/resources/images/img_listBG_green.png
  AssetGenImage get imgListBGGreen =>
      const AssetGenImage('lib/resources/images/img_listBG_green.png');

  /// File path: lib/resources/images/img_listBG_purple.png
  AssetGenImage get imgListBGPurple =>
      const AssetGenImage('lib/resources/images/img_listBG_purple.png');

  /// File path: lib/resources/images/img_listBG_red.png
  AssetGenImage get imgListBGRed =>
      const AssetGenImage('lib/resources/images/img_listBG_red.png');

  /// File path: lib/resources/images/img_listBG_shimmer.png
  AssetGenImage get imgListBGShimmer =>
      const AssetGenImage('lib/resources/images/img_listBG_shimmer.png');

  /// File path: lib/resources/images/img_listBG_yellow.png
  AssetGenImage get imgListBGYellow =>
      const AssetGenImage('lib/resources/images/img_listBG_yellow.png');

  /// File path: lib/resources/images/user_placeholder.png
  AssetGenImage get userPlaceholder =>
      const AssetGenImage('lib/resources/images/user_placeholder.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        icDiscoverActive,
        icDiscoverUnactive,
        icEvent,
        icFlash,
        icPastTicketActive,
        icPastTicketUnactive,
        icScan,
        icSettingActive,
        icSettingUnactive,
        imgEmpty,
        imgError,
        imgListBGBlue,
        imgListBGGreen,
        imgListBGPurple,
        imgListBGRed,
        imgListBGShimmer,
        imgListBGYellow,
        userPlaceholder
      ];
}

class Assets {
  Assets._();

  static const $LibGen lib = $LibGen();
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
