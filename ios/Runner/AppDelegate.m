#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"

@import UIKit;
@import Firebase;

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [FIRApp configure];
    [GeneratedPluginRegistrant registerWithRegistry:self];
    return [super application:application didFinishLaunchingWithOptions:launchOptions]; // YES;
}
@end

//@import UIKit;
//@import Firebase;
//
//@implementation AppDelegate
//
//- (BOOL)application:(UIApplication *)application
//didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    [FIRApp configure];
//    return YES;
//}

//@import UIKit
//@import Firebase
//
//@UIApplicationMain
//class AppDelegate: UIResponder, UIApplicationDelegate {
//
//    var window: UIWindow?
//
//    func application(_ application: UIApplication,
//                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?)
//    -> Bool {
//        FirebaseApp.configure()
//        return true
//    }
//}

//@end

/*
 Чтобы приложение при запуске подключалось к Firebase, добавьте указанный ниже код инициализации в основной класс AppDelegate.
 
 Swift

 
 import UIKit
 import Firebase
 
 @UIApplicationMain
 class AppDelegate: UIResponder, UIApplicationDelegate {
 
 var window: UIWindow?
 
 func application(_ application: UIApplication,
 didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?)
 -> Bool {
 FirebaseApp.configure()
 return true
 }
 }
*/

/*
 Objective-C
 
 
 @import UIKit;
 @import Firebase;
 
 @implementation AppDelegate
 
 - (BOOL)application:(UIApplication *)application
 didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
 [FIRApp configure];
 return YES;
 }
 */
