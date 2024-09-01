/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_three_dot.svg
  SvgGenImage get icThreeDot => const SvgGenImage('assets/icons/ic_three_dot.svg');

  /// List of all assets
  List<SvgGenImage> get values => [icThreeDot];
}

class $AssetsImgsGen {
  const $AssetsImgsGen();

  /// File path: assets/imgs/background.png
  AssetGenImage get background => const AssetGenImage('assets/imgs/background.png');

  /// File path: assets/imgs/bhr_logo.jpeg
  AssetGenImage get bhrLogo => const AssetGenImage('assets/imgs/bhr_logo.jpeg');

  /// File path: assets/imgs/logo_app_512.png
  AssetGenImage get logoApp512 => const AssetGenImage('assets/imgs/logo_app_512.png');

  /// File path: assets/imgs/named_banner.png
  AssetGenImage get namedBanner => const AssetGenImage('assets/imgs/named_banner.png');

  /// List of all assets
  List<AssetGenImage> get values => [background, bhrLogo, logoApp512, namedBanner];
}

class $AssetsVideosGen {
  const $AssetsVideosGen();

  /// File path: assets/videos/checking_area_video.mov
  String get checkingAreaVideo => 'assets/videos/checking_area_video.mov';

  /// File path: assets/videos/cpr_follow_instruction_video.mov
  String get cprFollowInstructionVideo => 'assets/videos/cpr_follow_instruction_video.mov';

  /// File path: assets/videos/finding_unconscious_video.mov
  String get findingUnconsciousVideo => 'assets/videos/finding_unconscious_video.mov';

  /// File path: assets/videos/how_to_cpr_video.mov
  String get howToCprVideo => 'assets/videos/how_to_cpr_video.mov';

  /// File path: assets/videos/observe_breath_video.mov
  String get observeBreathVideo => 'assets/videos/observe_breath_video.mov';

  /// File path: assets/videos/recover_position_video.mov
  String get recoverPositionVideo => 'assets/videos/recover_position_video.mov';

  /// File path: assets/videos/rescue_breath_video.mov
  String get rescueBreathVideo => 'assets/videos/rescue_breath_video.mov';

  /// File path: assets/videos/rhythmic_cpr_video.mov
  String get rhythmicCprVideo => 'assets/videos/rhythmic_cpr_video.mov';

  /// List of all assets
  List<String> get values => [
        checkingAreaVideo,
        cprFollowInstructionVideo,
        findingUnconsciousVideo,
        howToCprVideo,
        observeBreathVideo,
        recoverPositionVideo,
        rescueBreathVideo,
        rhythmicCprVideo
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImgsGen imgs = $AssetsImgsGen();
  static const $AssetsVideosGen videos = $AssetsVideosGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
