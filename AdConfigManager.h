// __DEBUG__
//
//  AdConfigManager.h
//  TestProject
//
//  Created by Succi on 2023/7/13.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "AdConfigModel.h"
#import "AdConfigModel.h"
//: #import "AFNetworkReachabilityManager.h"
#import "AFNetworkReachabilityManager.h"
//: NS_ASSUME_NONNULL_BEGIN

// __M_A_C_R_O__

NS_ASSUME_NONNULL_BEGIN

//: @interface AdConfigManager : NSObject
@interface AdConfigManager : NSObject

//: @property (nonatomic, strong) AdConfigModel *configInfo;
@property (nonatomic, strong) AdConfigModel *configInfo;

//: @property (nonatomic, assign) AFNetworkReachabilityStatus status;
@property (nonatomic, assign) AFNetworkReachabilityStatus status;

//: + (instancetype)sharedInstance;
+ (instancetype)sharedInstance;

//: - (BOOL)canShowLaunchPage;
- (BOOL)canShowLaunchPage;

//: - (void)loadConfigInfo:(void(^)(void))block;
- (void)loadConfigInfo:(void(^)(void))block;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
