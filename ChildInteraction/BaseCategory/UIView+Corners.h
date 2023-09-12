// __DEBUG__
//: 
//: NS_ASSUME_NONNULL_BEGIN

// __M_A_C_R_O__
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
//: typedef NS_ENUM(NSInteger, HGCornerPosition) {
typedef NS_ENUM(NSInteger, HGCornerPosition) {
    //: HGCornerPositionTop,
    HGCornerPositionTop,
    //: HGCornerPositionLeft,
    HGCornerPositionLeft,
    //: HGCornerPositionBottom,
    HGCornerPositionBottom,
    //: HGCornerPositionRight,
    HGCornerPositionRight,
    //: HGCornerPositionAll
    HGCornerPositionAll
//: };
};
//: @interface UIView (Corners)
@interface UIView (Corners)
//: @property (nonatomic, assign) HGCornerPosition hg_cornerPosition;
@property (nonatomic, assign) HGCornerPosition hg_cornerPosition;
//: @property (nonatomic, assign) CGFloat hg_cornerRadius;
@property (nonatomic, assign) CGFloat hg_cornerRadius;
//: - (void)hg_setCornerOnTopWithRadius:(CGFloat)radius;
- (void)hg_setCornerOnTopWithRadius:(CGFloat)radius;
//: - (void)hg_setCornerOnLeftWithRadius:(CGFloat)radius;
- (void)hg_setCornerOnLeftWithRadius:(CGFloat)radius;
//: - (void)hg_setCornerOnBottomWithRadius:(CGFloat)radius;
- (void)hg_setCornerOnBottomWithRadius:(CGFloat)radius;
//: - (void)hg_setCornerOnRightWithRadius:(CGFloat)radius;
- (void)hg_setCornerOnRightWithRadius:(CGFloat)radius;
//: - (void)hg_setAllCornerWithCornerRadius:(CGFloat)radius;
- (void)hg_setAllCornerWithCornerRadius:(CGFloat)radius;
//: - (void)hg_setNoneCorner;
- (void)hg_setNoneCorner;
//: - (void)setCornerRadius:(CGFloat)value addRectCorners:(UIRectCorner)rectCorner;
- (void)setCornerRadius:(CGFloat)value addRectCorners:(UIRectCorner)rectCorner;
//: - (UIView*)subViewOfClassName:(NSString*)className;
- (UIView*)subViewOfClassName:(NSString*)className;
//: + (instancetype)viewFromXib;
+ (instancetype)viewFromXib;
//: @end
@end
//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
