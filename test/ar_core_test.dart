import 'package:flutter_test/flutter_test.dart';
import 'package:ar_core/ar_core.dart';
import 'package:ar_core/ar_core_platform_interface.dart';
import 'package:ar_core/ar_core_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockArCorePlatform
    with MockPlatformInterfaceMixin
    implements ArCorePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ArCorePlatform initialPlatform = ArCorePlatform.instance;

  test('$MethodChannelArCore is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelArCore>());
  });

  test('getPlatformVersion', () async {
    ArCore arCorePlugin = ArCore();
    MockArCorePlatform fakePlatform = MockArCorePlatform();
    ArCorePlatform.instance = fakePlatform;

    expect(await arCorePlugin.getPlatformVersion(), '42');
  });
}
