import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ar_core_platform_interface.dart';

/// An implementation of [ArCorePlatform] that uses method channels.
class MethodChannelArCore extends ArCorePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ar_core');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
