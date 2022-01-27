#import "PixiePlugin.h"
#if __has_include(<pixie/pixie-Swift.h>)
#import <pixie/pixie-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "pixie-Swift.h"
#endif

@implementation PixiePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPixiePlugin registerWithRegistrar:registrar];
}
@end
