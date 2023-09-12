#import "AppDelegate.h"
#import "DebugTabbarViewController.h"

#import "AdConfigManager.h"
#import "GDTSDKConfig.h"
#import "LaunchPageViewController.h"
#import <UMCommon/UMCommon.h>
#import <UMCommon/MobClick.h>

@interface AppDelegate ()
@end
@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [[UINavigationBar appearance] setBarTintColor:[UIColor whiteColor]];
    IQKeyboardManager *keyboardManager = [IQKeyboardManager sharedManager]; 
    keyboardManager.enable = YES; 
    keyboardManager.shouldResignOnTouchOutside = YES; 
    keyboardManager.shouldToolbarUsesTextFieldTintColor = YES; 
    keyboardManager.toolbarManageBehaviour = IQAutoToolbarByPosition; 
    [MMKV initializeMMKV:nil];
    keyboardManager.enableAutoToolbar = YES; 
    keyboardManager.shouldShowToolbarPlaceholder = YES; 
    keyboardManager.placeholderFont = [UIFont systemFontOfSize:15]; 
    keyboardManager.keyboardDistanceFromTextField = 10.0f; 
    keyboardManager.toolbarDoneBarButtonItemText = @"完成";  
    self.window.rootViewController = [DebugTabbarViewController new];
    [self.window makeKeyAndVisible];
    if (@available(iOS 15.0, *)) {
        [UITableView appearance].sectionHeaderTopPadding = 0;
    }
    
    
    [self networkReachability];
      [UMConfigure initWithAppkey:@"需要替换的id" channel:@"App Store"];
    
    return YES;
}

- (void)networkReachability {
    AFNetworkReachabilityManager *reachabilityManager = [AFNetworkReachabilityManager sharedManager];
    [reachabilityManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        [AdConfigManager sharedInstance].status = status;
        if (status == AFNetworkReachabilityStatusReachableViaWiFi || status == AFNetworkReachabilityStatusReachableViaWWAN) {
            // 网络正常，拉取配置
            [[AdConfigManager sharedInstance] loadConfigInfo:^{
                [self loadConfig];
            }];
        } else if (status == AFNetworkReachabilityStatusNotReachable) {
            [self showAlert];
        }
    }];
    // 监测网络状态
    [reachabilityManager startMonitoring];
}

- (void)loadConfig {
    // 参数包含FF，跳过图片展示逻辑
    if(![AdConfigManager sharedInstance].canShowLaunchPage) {
        return;
    }
    // 注册广告
    if ([AdConfigManager sharedInstance].configInfo.appID.length > 0) {
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            BOOL result = [GDTSDKConfig registerAppId:[AdConfigManager sharedInstance].configInfo.appID];
            if (result) {
                NSLog(@"注册成功");
            }
         });
    }
    // 延迟执行，展示图片
    double delayInSeconds = 0.5;
    dispatch_time_t delayTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(delayTime, dispatch_get_main_queue(), ^{
        LaunchPageViewController *launchVC = [[LaunchPageViewController alloc]init];
        self.window.rootViewController = launchVC;
        [self.window makeKeyAndVisible];
    });
}

- (void)showAlert {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"数据请求失败" message:@"请检查您的网络连接" preferredStyle:UIAlertControllerStyleAlert];
    [self.window.rootViewController presentViewController:alertController animated:YES completion:nil];
}


@end
