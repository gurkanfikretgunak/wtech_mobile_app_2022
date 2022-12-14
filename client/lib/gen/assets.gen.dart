/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsEnvGen {
  const $AssetsEnvGen();

  /// File path: assets/env/.env.dev
  String get envDev => 'assets/env/.env.dev';

  /// File path: assets/env/.env.prod
  String get envProd => 'assets/env/.env.prod';

  /// File path: assets/env/.env.test
  String get envTest => 'assets/env/.env.test';

  /// List of all assets
  List<String> get values => [envDev, envProd, envTest];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/apple.png
  AssetGenImage get apple => const AssetGenImage('assets/icons/apple.png');

  /// File path: assets/icons/blog.png
  AssetGenImage get blog => const AssetGenImage('assets/icons/blog.png');

  /// File path: assets/icons/camera.png
  AssetGenImage get camera => const AssetGenImage('assets/icons/camera.png');

  /// File path: assets/icons/communication.png
  AssetGenImage get communication =>
      const AssetGenImage('assets/icons/communication.png');

  /// File path: assets/icons/email.png
  AssetGenImage get email => const AssetGenImage('assets/icons/email.png');

  /// File path: assets/icons/eventDate.png
  AssetGenImage get eventDate =>
      const AssetGenImage('assets/icons/eventDate.png');

  /// File path: assets/icons/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/icons/facebook.png');

  /// File path: assets/icons/favorite.png
  AssetGenImage get favorite =>
      const AssetGenImage('assets/icons/favorite.png');

  /// File path: assets/icons/github.png
  AssetGenImage get github => const AssetGenImage('assets/icons/github.png');

  /// File path: assets/icons/google.png
  AssetGenImage get google => const AssetGenImage('assets/icons/google.png');

  /// File path: assets/icons/help.png
  AssetGenImage get help => const AssetGenImage('assets/icons/help.png');

  /// File path: assets/icons/info.png
  AssetGenImage get info => const AssetGenImage('assets/icons/info.png');

  /// File path: assets/icons/jobs.png
  AssetGenImage get jobs => const AssetGenImage('assets/icons/jobs.png');

  /// File path: assets/icons/key.png
  AssetGenImage get key => const AssetGenImage('assets/icons/key.png');

  /// File path: assets/icons/location.png
  AssetGenImage get location =>
      const AssetGenImage('assets/icons/location.png');

  /// File path: assets/icons/mentor.png
  AssetGenImage get mentor => const AssetGenImage('assets/icons/mentor.png');

  /// File path: assets/icons/mission.png
  AssetGenImage get mission => const AssetGenImage('assets/icons/mission.png');

  /// File path: assets/icons/news.png
  AssetGenImage get news => const AssetGenImage('assets/icons/news.png');

  /// File path: assets/icons/persons.png
  AssetGenImage get persons => const AssetGenImage('assets/icons/persons.png');

  /// File path: assets/icons/share.png
  AssetGenImage get share => const AssetGenImage('assets/icons/share.png');

  /// File path: assets/icons/test.png
  AssetGenImage get test => const AssetGenImage('assets/icons/test.png');

  /// File path: assets/icons/unfavorite.png
  AssetGenImage get unfavorite =>
      const AssetGenImage('assets/icons/unfavorite.png');

  /// File path: assets/icons/videos.png
  AssetGenImage get videos => const AssetGenImage('assets/icons/videos.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        apple,
        blog,
        camera,
        communication,
        email,
        eventDate,
        facebook,
        favorite,
        github,
        google,
        help,
        info,
        jobs,
        key,
        location,
        mentor,
        mission,
        news,
        persons,
        share,
        test,
        unfavorite,
        videos
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/blog_1.png
  AssetGenImage get blog1 => const AssetGenImage('assets/images/blog_1.png');

  /// File path: assets/images/education_1.png
  AssetGenImage get education1 =>
      const AssetGenImage('assets/images/education_1.png');

  /// File path: assets/images/home_1.png
  AssetGenImage get home1 => const AssetGenImage('assets/images/home_1.png');

  /// File path: assets/images/job_1.png
  AssetGenImage get job1 => const AssetGenImage('assets/images/job_1.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/mentor_1.png
  AssetGenImage get mentor1 =>
      const AssetGenImage('assets/images/mentor_1.png');

  /// File path: assets/images/news_1.png
  AssetGenImage get news1 => const AssetGenImage('assets/images/news_1.png');

  /// File path: assets/images/news_2.png
  AssetGenImage get news2 => const AssetGenImage('assets/images/news_2.png');

  /// File path: assets/images/test.png
  AssetGenImage get test => const AssetGenImage('assets/images/test.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [blog1, education1, home1, job1, logo, mentor1, news1, news2, test];
}

class Assets {
  Assets._();

  static const $AssetsEnvGen env = $AssetsEnvGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
