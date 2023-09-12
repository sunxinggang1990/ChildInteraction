#import <UIKit/UIKit.h>
@interface UIColor (Extension)
+ (UIColor *)colorWithRandom;
+ (UIColor *)Themecolor;
+ (UIColor*) colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;
+ (UIColor*) colorWithHex:(NSInteger)hexValue;
+ (CAGradientLayer *)setGradualChangingColor:(UIView *)view fromColor:(NSInteger)fromHexColorStr toColor:(NSInteger)toHexColorStr;
@end
