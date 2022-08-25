import 'package:flutter_test/flutter_test.dart';
import 'package:user_inactivity_detector/user_inactivity_detector.dart';
import 'package:user_inactivity_detector/user_inactivity_detector_platform_interface.dart';
import 'package:user_inactivity_detector/user_inactivity_detector_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockUserInactivityDetectorPlatform 
    with MockPlatformInterfaceMixin
    implements UserInactivityDetectorPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final UserInactivityDetectorPlatform initialPlatform = UserInactivityDetectorPlatform.instance;

  test('$MethodChannelUserInactivityDetector is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelUserInactivityDetector>());
  });

  test('getPlatformVersion', () async {
    UserInactivityDetector userInactivityDetectorPlugin = UserInactivityDetector();
    MockUserInactivityDetectorPlatform fakePlatform = MockUserInactivityDetectorPlatform();
    UserInactivityDetectorPlatform.instance = fakePlatform;
  
    expect(await userInactivityDetectorPlugin.getPlatformVersion(), '42');
  });
}
