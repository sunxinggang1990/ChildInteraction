#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface UIView (TapBlock)
- (void)set_Tapped:(void(^)(void))tappBlock;
@end
NS_ASSUME_NONNULL_END
