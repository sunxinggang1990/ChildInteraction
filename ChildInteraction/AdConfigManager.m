//
//  AdConfigManager.m
//  TestProject
//
//  Created by Succi on 2023/7/13.
//

#import "AdConfigManager.h"
#import "AFNetworking.h"
#import "SVProgressHUD.h"

@implementation AdConfigManager

+ (instancetype)sharedInstance {
    static AdConfigManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (BOOL)canShowLaunchPage {
    if(_configInfo.appID.length > 0 && ![_configInfo.appID hasPrefix:@"FF"]) {
        return YES;
    }
    return NO;
}

- (void)loadConfigInfo:(void(^)(void))block {
    if (self.status == AFNetworkReachabilityStatusReachableViaWWAN || self.status == AFNetworkReachabilityStatusReachableViaWiFi) {
        AFHTTPSessionManager *httpSessionManager = [AFHTTPSessionManager manager];
        httpSessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/json"];
        httpSessionManager.requestSerializer.timeoutInterval = 30;
        NSString *urlString = @"https://baidu.com.1112.json";
        [SVProgressHUD showWithStatus:@"加载中..."];
        [httpSessionManager GET:urlString parameters:nil headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                [SVProgressHUD dismiss];
                if (responseObject) {
                    self.configInfo.appID = responseObject[@"appID"];
                    self.configInfo.rewardedID = responseObject[@"rewardedID"];
                    self.configInfo.image_1 = responseObject[@"image_1"];
                    self.configInfo.image_2 = responseObject[@"image_2"];
                    self.configInfo.alertTitle = responseObject[@"alertTitle"];
                    self.configInfo.alertMessage = responseObject[@"alertMessage"];
                    self.configInfo.plUrl = responseObject[@"plUrl"];
                }
                if (block) {
                    block();
                }
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            [SVProgressHUD dismiss];
            if (block) {
                block();
            }
        }];
    }
}

- (AdConfigModel *)configInfo {
    if(!_configInfo) {
        _configInfo = [[AdConfigModel alloc] init];
    }
    return _configInfo;
}
@end
