// __DEBUG__
//: 
//: @implementation UIColor (Extension)

// __M_A_C_R_O__
#import "UIColor+Extension.h"

@implementation UIColor (Extension)
//: +(UIColor *)colorWithRandom{
+(UIColor *)colorWithRandom{
    //: return  [UIColor colorWithRed:(255-arc4random_uniform(100.0))/255.0f green:(255-arc4random_uniform(80.0))/255.0f
    return [UIColor colorWithRed:(255-arc4random_uniform(100.0))/255.0f green:(255-arc4random_uniform(80.0))/255.0f
                             //: blue:(255-arc4random_uniform(150.0))/255.0f alpha:1.0f];
                             blue:(255-arc4random_uniform(150.0))/255.0f alpha:1.0f];
}
//: + (UIColor *)Themecolor{
+ (UIColor *)Themecolor{
    //: return [UIColor colorWithRed:236/255.0 green:109/255.0 blue:0/255.0 alpha:1];
    return [UIColor colorWithRed:236/255.0 green:109/255.0 blue:0/255.0 alpha:1];
}
//: + (UIColor*) colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue
+ (UIColor*) colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue
{
    //: return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
                           //: green:((float)((hexValue & 0xFF00) >> 8))/255.0
                           green:((float)((hexValue & 0xFF00) >> 8))/255.0
                            //: blue:((float)(hexValue & 0xFF))/255.0 alpha:alphaValue];
                            blue:((float)(hexValue & 0xFF))/255.0 alpha:alphaValue];
}
//: + (UIColor*) colorWithHex:(NSInteger)hexValue
+ (UIColor*) colorWithHex:(NSInteger)hexValue
{
    //: return [UIColor colorWithHex:hexValue alpha:1.0];
    return [UIColor colorWithHex:hexValue alpha:1.0];
}
//: + (CAGradientLayer *)setGradualChangingColor:(UIView *)view fromColor:(NSInteger)fromHexColorStr toColor:(NSInteger)toHexColorStr
+ (CAGradientLayer *)setGradualChangingColor:(UIView *)view fromColor:(NSInteger)fromHexColorStr toColor:(NSInteger)toHexColorStr
{
    //: CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    //: gradientLayer.frame = view.bounds;
    gradientLayer.frame = view.bounds;
    //: gradientLayer.colors = @[(__bridge id)[UIColor colorWithHex:fromHexColorStr].CGColor,(__bridge id)[UIColor colorWithHex:toHexColorStr].CGColor];
    gradientLayer.colors = @[(__bridge id)[UIColor colorWithHex:fromHexColorStr].CGColor,(__bridge id)[UIColor colorWithHex:toHexColorStr].CGColor];
    //: gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.startPoint = CGPointMake(0, 0);
    //: gradientLayer.endPoint = CGPointMake(0, 1);
    gradientLayer.endPoint = CGPointMake(0, 1);
    //: gradientLayer.locations = @[@0,@1];
    gradientLayer.locations = @[@0,@1];
    //: return gradientLayer;
    return gradientLayer;
}
//: @end
@end
