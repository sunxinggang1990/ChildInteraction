//
//  AdConfigManager.h
//  TestProject
//
//  Created by Succi on 2023/7/13.
//

#import <Foundation/Foundation.h>
#import "AdConfigModel.h"
#import "AFNetworkReachabilityManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface AdConfigManager : NSObject

@property (nonatomic, strong) AdConfigModel *configInfo;

@property (nonatomic, assign) AFNetworkReachabilityStatus status;

+ (instancetype)sharedInstance;

- (BOOL)canShowLaunchPage;

- (void)loadConfigInfo:(void(^)(void))block;

@end

NS_ASSUME_NONNULL_END
