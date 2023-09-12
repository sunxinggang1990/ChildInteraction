// __DEBUG__
//: 
//: @interface UIView (origin)

// __M_A_C_R_O__
#import <UIKit/UIKit.h>

@interface UIView (origin)
//: @property (nonatomic, assign)CGFloat x;
@property (nonatomic, assign)CGFloat x;
//: @property (nonatomic, assign)CGFloat y;
@property (nonatomic, assign)CGFloat y;
//: @property (nonatomic, assign)CGFloat centerX;
@property (nonatomic, assign)CGFloat centerX;
//: @property (nonatomic, assign)CGFloat centerY;
@property (nonatomic, assign)CGFloat centerY;
//: @property (nonatomic,assign)CGFloat maxX;
@property (nonatomic,assign)CGFloat maxX;
//: @property (nonatomic,assign)CGFloat maxY;
@property (nonatomic,assign)CGFloat maxY;
//: @property (nonatomic,assign)CGFloat width;
@property (nonatomic,assign)CGFloat width;
//: @property (nonatomic,assign)CGFloat height;
@property (nonatomic,assign)CGFloat height;
//: @property (nonatomic,assign)CGSize size;
@property (nonatomic,assign)CGSize size;
//: @property (nonatomic,assign)CGPoint origin;
@property (nonatomic,assign)CGPoint origin;
//: @property (nonatomic,assign)CGFloat boundsWidth;
@property (nonatomic,assign)CGFloat boundsWidth;
//: @property (nonatomic,assign)CGFloat boundsHeight;
@property (nonatomic,assign)CGFloat boundsHeight;
//: @property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat top;
//: @property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat bottom;
//: @property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat left;
//: @property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat right;
//: - (UIViewController *)pr_getCurrentViewController;
- (UIViewController *)pr_getCurrentViewController;
//: - (void)pr_removeSubviewFromSuperviewExceptRerfeshView;
- (void)pr_removeSubviewFromSuperviewExceptRerfeshView;
//: -(void)addSubviews:(NSArray<UIView*>*)views;
-(void)addSubviews:(NSArray<UIView*>*)views;
//: - (UIViewController*)currentViewController;
- (UIViewController*)currentViewController;
//: - (UIViewController *)getCurrentVC;
- (UIViewController *)getCurrentVC;
//: - (UIView *)gaussView:(UIView *)view;
- (UIView *)gaussView:(UIView *)view;
//: @end
@end
