import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:user_inactivity_detector/user_inactivity_detector_method_channel.dart';

void main() {
  MethodChannelUserInactivityDetector platform = MethodChannelUserInactivityDetector();
  const MethodChannel channel = MethodChannel('user_inactivity_detector');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
