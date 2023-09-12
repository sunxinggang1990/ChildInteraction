// __DEBUG__
//: 
//: @interface UIColor (Extension)

// __M_A_C_R_O__
#import <UIKit/UIKit.h>

@interface UIColor (Extension)
//: + (UIColor *)colorWithRandom;
+ (UIColor *)colorWithRandom;
//: + (UIColor *)Themecolor;
+ (UIColor *)Themecolor;
//: + (UIColor*) colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;
+ (UIColor*) colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;
//: + (UIColor*) colorWithHex:(NSInteger)hexValue;
+ (UIColor*) colorWithHex:(NSInteger)hexValue;
//: + (CAGradientLayer *)setGradualChangingColor:(UIView *)view fromColor:(NSInteger)fromHexColorStr toColor:(NSInteger)toHexColorStr;
+ (CAGradientLayer *)setGradualChangingColor:(UIView *)view fromColor:(NSInteger)fromHexColorStr toColor:(NSInteger)toHexColorStr;
//: @end
@end
