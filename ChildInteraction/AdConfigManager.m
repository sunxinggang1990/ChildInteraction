// __DEBUG__
//
//  AdConfigManager.m
//  TestProject
//
//  Created by Succi on 2023/7/13.
//
//: 
//: 
//: 
//: @implementation AdConfigManager

// __M_A_C_R_O__
#import "AdConfigManager.h"
#import "AFNetworking.h"
#import "SVProgressHUD.h"

@implementation AdConfigManager

//: + (instancetype)sharedInstance {
+ (instancetype)sharedInstance {
    //: static AdConfigManager *instance = nil;
    static AdConfigManager *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[self alloc] init];
        instance = [[self alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (BOOL)canShowLaunchPage {
- (BOOL)canShowLaunchPage {
    //: if(_configInfo.appID.length > 0 && ![_configInfo.appID hasPrefix:@"FF"]) {
    if(_configInfo.appID.length > 0 && ![_configInfo.appID hasPrefix:@"FF"]) {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}

//: - (void)loadConfigInfo:(void(^)(void))block {
- (void)loadConfigInfo:(void(^)(void))block {
    //: if (self.status == AFNetworkReachabilityStatusReachableViaWWAN || self.status == AFNetworkReachabilityStatusReachableViaWiFi) {
    if (self.status == AFNetworkReachabilityStatusReachableViaWWAN || self.status == AFNetworkReachabilityStatusReachableViaWiFi) {
        //: AFHTTPSessionManager *httpSessionManager = [AFHTTPSessionManager manager];
        AFHTTPSessionManager *httpSessionManager = [AFHTTPSessionManager manager];
        //: httpSessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/json"];
        httpSessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/json"];
        //: httpSessionManager.requestSerializer.timeoutInterval = 30;
        httpSessionManager.requestSerializer.timeoutInterval = 30;
        //: NSString *urlString = @"https://baidu.com.1112.json";
        NSString *urlString = @"https://baidu.com.1112.json";
        //: [SVProgressHUD showWithStatus:@"加载中..."];
        [SVProgressHUD showWithStatus:@"加载中..."];
        //: [httpSessionManager GET:urlString parameters:nil headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [httpSessionManager GET:urlString parameters:nil headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
                //: [SVProgressHUD dismiss];
                [SVProgressHUD dismiss];
                //: if (responseObject) {
                if (responseObject) {
                    //: self.configInfo.appID = responseObject[@"appID"];
                    self.configInfo.appID = responseObject[@"appID"];
                    //: self.configInfo.rewardedID = responseObject[@"rewardedID"];
                    self.configInfo.rewardedID = responseObject[@"rewardedID"];
                    //: self.configInfo.image_1 = responseObject[@"image_1"];
                    self.configInfo.image_1 = responseObject[@"image_1"];
                    //: self.configInfo.image_2 = responseObject[@"image_2"];
                    self.configInfo.image_2 = responseObject[@"image_2"];
                    //: self.configInfo.alertTitle = responseObject[@"alertTitle"];
                    self.configInfo.alertTitle = responseObject[@"alertTitle"];
                    //: self.configInfo.alertMessage = responseObject[@"alertMessage"];
                    self.configInfo.alertMessage = responseObject[@"alertMessage"];
                    //: self.configInfo.plUrl = responseObject[@"plUrl"];
                    self.configInfo.plUrl = responseObject[@"plUrl"];
                }
                //: if (block) {
                if (block) {
                    //: block();
                    block();
                }
        //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: if (block) {
            if (block) {
                //: block();
                block();
            }
        //: }];
        }];
    }
}

//: - (AdConfigModel *)configInfo {
- (AdConfigModel *)configInfo {
    //: if(!_configInfo) {
    if(!_configInfo) {
        //: _configInfo = [[AdConfigModel alloc] init];
        _configInfo = [[AdConfigModel alloc] init];
    }
    //: return _configInfo;
    return _configInfo;
}
//: @end
@end
