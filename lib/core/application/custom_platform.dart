import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

class CustomPlatform {
  CustomPlatform._();

  static TargetPlatform? _targetPlatform;
  static String? _localeName;

  static void refresh(BuildContext context) {
    setPlatform(Theme.of(context).platform);
    setLocaleName(Platform.localeName);
  }

  static void setPlatform(TargetPlatform targetPlatform) {
    _targetPlatform = targetPlatform;
  }

  static void setLocaleName(String localeName) {
    _localeName = localeName;
  }

  static bool get isIOS {
    return Platform.isIOS;
  }

  static bool get isAndroid {
    return Platform.isAndroid;
  }

  static String get localeName {
    assert(_localeName != null);
    return _localeName!;
  }

  static T switchPlatform<T>({required T iOS, required T android}) {
    assert(_targetPlatform != null);
    if (isIOS) {
      return iOS;
    }
    return android;
  }

  static bool get isTest {
    return Platform.environment.containsKey('FLUTTER_TEST');
  }

  static Future<int> androidAPILevel() async {
    final deviceInfo = DeviceInfoPlugin();
    if (isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      return androidInfo.version.sdkInt;
    }

    return 9;
  }

  static Future<String?> getId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor;
    } else if (Platform.isAndroid) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.id;
    }
    return null;
  }
}
