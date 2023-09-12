#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, HGCornerPosition) {
    HGCornerPositionTop,
    HGCornerPositionLeft,
    HGCornerPositionBottom,
    HGCornerPositionRight,
    HGCornerPositionAll
};
@interface UIView (Corners)
@property (nonatomic, assign) HGCornerPosition hg_cornerPosition;
@property (nonatomic, assign) CGFloat hg_cornerRadius;
- (void)hg_setCornerOnTopWithRadius:(CGFloat)radius;
- (void)hg_setCornerOnLeftWithRadius:(CGFloat)radius;
- (void)hg_setCornerOnBottomWithRadius:(CGFloat)radius;
- (void)hg_setCornerOnRightWithRadius:(CGFloat)radius;
- (void)hg_setAllCornerWithCornerRadius:(CGFloat)radius;
- (void)hg_setNoneCorner;
- (void)setCornerRadius:(CGFloat)value addRectCorners:(UIRectCorner)rectCorner;
- (UIView*)subViewOfClassName:(NSString*)className;
+ (instancetype)viewFromXib;
@end
NS_ASSUME_NONNULL_END
