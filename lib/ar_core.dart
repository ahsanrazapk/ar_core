
import 'ar_core_platform_interface.dart';

class ArCore {
  Future<String?> getPlatformVersion() {
    return ArCorePlatform.instance.getPlatformVersion();
  }
}
