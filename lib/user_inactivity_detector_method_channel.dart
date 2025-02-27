import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'user_inactivity_detector_platform_interface.dart';

/// An implementation of [UserInactivityDetectorPlatform] that uses method channels.
class MethodChannelUserInactivityDetector extends UserInactivityDetectorPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('user_inactivity_detector');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
