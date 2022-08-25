#import "UserInactivityDetectorPlugin.h"
#if __has_include(<user_inactivity_detector/user_inactivity_detector-Swift.h>)
#import <user_inactivity_detector/user_inactivity_detector-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "user_inactivity_detector-Swift.h"
#endif

@implementation UserInactivityDetectorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftUserInactivityDetectorPlugin registerWithRegistrar:registrar];
}
@end
