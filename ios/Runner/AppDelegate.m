#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
  // @todo: the google maps code
  [GMSServices provideAPIKey:@"AIzaSyCSs-5RGgHaBrUBVlTxdYmrOEHhO9BbQpM"];
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
