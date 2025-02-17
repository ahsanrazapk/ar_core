import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ar_core_method_channel.dart';

abstract class ArCorePlatform extends PlatformInterface {
  /// Constructs a ArCorePlatform.
  ArCorePlatform() : super(token: _token);

  static final Object _token = Object();

  static ArCorePlatform _instance = MethodChannelArCore();

  /// The default instance of [ArCorePlatform] to use.
  ///
  /// Defaults to [MethodChannelArCore].
  static ArCorePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ArCorePlatform] when
  /// they register themselves.
  static set instance(ArCorePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
