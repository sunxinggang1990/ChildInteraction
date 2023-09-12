//
//  AdConfigModel.h
//  TestProject
//
//  Created by Succi on 2023/7/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdConfigModel : NSObject

@property (nonatomic, copy) NSString *appID;

@property (nonatomic, copy) NSString *rewardedID;

@property (nonatomic, copy) NSString *image_1;

@property (nonatomic, copy) NSString *image_2;

@property (nonatomic, copy) NSString *alertTitle;

@property (nonatomic, copy) NSString *alertMessage;

@property (nonatomic, copy) NSString *plUrl;

@end

NS_ASSUME_NONNULL_END
