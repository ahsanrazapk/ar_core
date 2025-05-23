export 'package:ar_core/widgets/ar_view.dart';

import 'dart:async';

import 'package:flutter/services.dart';

class ArFlutterPlugin {
  static const MethodChannel _channel =
      const MethodChannel('ar_core_plugin');

  /// Private constructor to prevent accidental instantiation of the Plugin using the implicit default constructor
  ArFlutterPlugin._();

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
