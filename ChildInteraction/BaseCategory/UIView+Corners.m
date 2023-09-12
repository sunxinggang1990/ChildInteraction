// __DEBUG__
//: 
//: static NSString * const HGCornerPositionKey = @"HGCornerPositionKey";

// __M_A_C_R_O__
#import "UIView+Corners.h"

static NSString * const HGCornerPositionKey = @"HGCornerPositionKey";
//: static NSString * const HGCornerRadiusKey = @"HGCornerRadiusKey";
static NSString * const HGCornerRadiusKey = @"HGCornerRadiusKey";
//: @implementation UIView (Corners)
@implementation UIView (Corners)
//: - (void)setCornerRadius:(CGFloat)value addRectCorners:(UIRectCorner)rectCorner{
- (void)setCornerRadius:(CGFloat)value addRectCorners:(UIRectCorner)rectCorner{
    //: [self layoutIfNeeded];
    [self layoutIfNeeded];
    //: UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:rectCorner cornerRadii:CGSizeMake(value, value)];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:rectCorner cornerRadii:CGSizeMake(value, value)];
    //: CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    //: shapeLayer.frame = self.bounds;
    shapeLayer.frame = self.bounds;
    //: shapeLayer.path = path.CGPath;
    shapeLayer.path = path.CGPath;
    //: self.layer.mask = shapeLayer;
    self.layer.mask = shapeLayer;
}
//: - (UIView*)subViewOfClassName:(NSString*)className {
- (UIView*)subViewOfClassName:(NSString*)className {
 //: for (UIView* subView in self.subviews) {
 for (UIView* subView in self.subviews) {
  //: if ([NSStringFromClass(subView.class) isEqualToString:className]) {
  if ([NSStringFromClass(subView.class) isEqualToString:className]) {
   //: return subView;
   return subView;
  }
  //: UIView* resultFound = [subView subViewOfClassName:className];
  UIView* resultFound = [subView subViewOfClassName:className];
  //: if (resultFound) {
  if (resultFound) {
   //: return resultFound;
   return resultFound;
  }
 }
 //: return nil;
 return nil;
}
//: + (instancetype)viewFromXib
+ (instancetype)viewFromXib
{
    //: return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}
//: @end
@end
