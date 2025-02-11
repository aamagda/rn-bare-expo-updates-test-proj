#import "AppDelegate.h"

#import <React/RCTBundleURLProvider.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.moduleName = @"AwesomeProject";
  // You can add your custom initial props in the dictionary below.
  // They will be passed down to the ViewController used by React Native.
  self.initialProps = @{};

  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
  return [self bundleURL];
}

- (NSURL *)bundleURL
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
// return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@".expo/.virtual-metro-entry"];

// Unable to resolve module ./.expo/.virtual-metro-entry from /Users/magdaaa/projects/rn-bare-expo-updates-test-proj/AwesomeProject/.: 
// None of these files exist:
//   * .expo/.virtual-metro-entry(.ios.js|.native.js|.js|.ios.jsx|.native.jsx|.jsx|.ios.json|.native.json|.json|.ios.ts|.native.ts|.ts|.ios.tsx|.native.tsx|.tsx)
//   * .expo/.virtual-metro-entry

// RCTFatal
// __28-[RCTCxxBridge handleError:]_block_invoke
// _dispatch_call_block_and_release
// _dispatch_client_callout
// _dispatch_main_queue_drain
// _dispatch_main_queue_callback_4CF
// __CFRUNLOOP_IS_SERVICING_THE_MAIN_DISPATCH_QUEUE__
// __CFRunLoopRun
// CFRunLoopRunSpecific
// GSEventRunModal
// -[UIApplication _run]
// UIApplicationMain
// main
// start_sim
// 0x0
// 0x0

#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

@end
