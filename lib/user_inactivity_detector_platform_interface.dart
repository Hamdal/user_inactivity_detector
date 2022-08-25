import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'user_inactivity_detector_method_channel.dart';

abstract class UserInactivityDetectorPlatform extends PlatformInterface {
  /// Constructs a UserInactivityDetectorPlatform.
  UserInactivityDetectorPlatform() : super(token: _token);

  static final Object _token = Object();

  static UserInactivityDetectorPlatform _instance = MethodChannelUserInactivityDetector();

  /// The default instance of [UserInactivityDetectorPlatform] to use.
  ///
  /// Defaults to [MethodChannelUserInactivityDetector].
  static UserInactivityDetectorPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [UserInactivityDetectorPlatform] when
  /// they register themselves.
  static set instance(UserInactivityDetectorPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
