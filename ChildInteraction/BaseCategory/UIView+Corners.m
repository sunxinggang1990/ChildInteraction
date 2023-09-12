#import "UIView+Corners.h"
static NSString * const HGCornerPositionKey = @"HGCornerPositionKey";
static NSString * const HGCornerRadiusKey = @"HGCornerRadiusKey";
@implementation UIView (Corners)
- (void)setCornerRadius:(CGFloat)value addRectCorners:(UIRectCorner)rectCorner{
    [self layoutIfNeeded];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:rectCorner cornerRadii:CGSizeMake(value, value)];
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.frame = self.bounds;
    shapeLayer.path = path.CGPath;
    self.layer.mask = shapeLayer;
}
- (UIView*)subViewOfClassName:(NSString*)className {
 for (UIView* subView in self.subviews) {
  if ([NSStringFromClass(subView.class) isEqualToString:className]) {
   return subView;
  }
  UIView* resultFound = [subView subViewOfClassName:className];
  if (resultFound) {
   return resultFound;
  }
 }
 return nil;
}
+ (instancetype)viewFromXib
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}
@end
