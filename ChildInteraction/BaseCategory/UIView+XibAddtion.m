#import "UIView+XibAddtion.h"
@implementation UIView (XibAddtion)
- (void)setCornerRadius:(double)CornerRadius {
    self.layer.cornerRadius = CornerRadius;
    self.layer.masksToBounds = YES;
}
- (double)CornerRadius {
    return self.layer.cornerRadius;
}
- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}
- (UIColor *)borderColor  {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}
- (void)setBorderWidth:(double)borderWidth {
    self.layer.borderWidth = borderWidth;
}
- (double)borderWidth {
    return self.layer.borderWidth;
}
@end
