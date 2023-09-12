// __DEBUG__
//: 
//: @implementation UIView (XibAddtion)

// __M_A_C_R_O__
#import "UIView+XibAddtion.h"

@implementation UIView (XibAddtion)
//: - (void)setCornerRadius:(double)CornerRadius {
- (void)setCornerRadius:(double)CornerRadius {
    //: self.layer.cornerRadius = CornerRadius;
    self.layer.cornerRadius = CornerRadius;
    //: self.layer.masksToBounds = YES;
    self.layer.masksToBounds = YES;
}
//: - (double)CornerRadius {
- (double)CornerRadius {
    //: return self.layer.cornerRadius;
    return self.layer.cornerRadius;
}
//: - (void)setBorderColor:(UIColor *)borderColor {
- (void)setBorderColor:(UIColor *)borderColor {
    //: self.layer.borderColor = borderColor.CGColor;
    self.layer.borderColor = borderColor.CGColor;
}
//: - (UIColor *)borderColor  {
- (UIColor *)borderColor {
    //: return [UIColor colorWithCGColor:self.layer.borderColor];
    return [UIColor colorWithCGColor:self.layer.borderColor];
}
//: - (void)setBorderWidth:(double)borderWidth {
- (void)setBorderWidth:(double)borderWidth {
    //: self.layer.borderWidth = borderWidth;
    self.layer.borderWidth = borderWidth;
}
//: - (double)borderWidth {
- (double)borderWidth {
    //: return self.layer.borderWidth;
    return self.layer.borderWidth;
}
//: @end
@end
