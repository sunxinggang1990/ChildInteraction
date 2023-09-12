#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
IB_DESIGNABLE
@interface UIView (XibAddtion)
@property (nonatomic, assign) IBInspectable   double  CornerRadius;
@property (nonatomic, strong) IBInspectable   UIColor *borderColor;
@property (nonatomic, assign) IBInspectable   double  borderWidth;
@end
NS_ASSUME_NONNULL_END
