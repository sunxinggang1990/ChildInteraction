// __DEBUG__
//: 
//: 
//: @implementation UIView (origin)

// __M_A_C_R_O__
#import "UIView+origin.h"
#import "AppDelegate.h"

@implementation UIView (origin)
//: -(void)setX:(CGFloat)x
-(void)setX:(CGFloat)x
{
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin.x = x;
    frame.origin.x = x;
    //: self.frame =frame;
    self.frame =frame;
}
//: - (void)setY:(CGFloat)y
- (void)setY:(CGFloat)y
{
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin.y = y;
    frame.origin.y = y;
    //: self.frame = frame;
    self.frame = frame;
}
//: -(CGFloat)x
-(CGFloat)x
{
    //: return self.frame.origin.x;
    return self.frame.origin.x;
}
//: -(CGFloat)y
-(CGFloat)y
{
    //: return self.frame.origin.y;
    return self.frame.origin.y;
}
//: -(void)setCenterX:(CGFloat)centerX
-(void)setCenterX:(CGFloat)centerX
{
    //: CGPoint center = self.center;
    CGPoint center = self.center;
    //: center.x = centerX;
    center.x = centerX;
    //: self.center = center;
    self.center = center;
}
//: -(void)setCenterY:(CGFloat)centerY
-(void)setCenterY:(CGFloat)centerY
{
    //: CGPoint center = self.center;
    CGPoint center = self.center;
    //: center.y = centerY;
    center.y = centerY;
    //: self.center = center;
    self.center = center;
}
//: -(CGFloat)centerX
-(CGFloat)centerX
{
    //: return self.center.x;
    return self.center.x;
}
//: -(CGFloat)centerY
-(CGFloat)centerY
{
    //: return self.center.y;
    return self.center.y;
}
//: -(void)setMaxX:(CGFloat)maxX
-(void)setMaxX:(CGFloat)maxX
{
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin.x = maxX - frame.size.width;
    frame.origin.x = maxX - frame.size.width;
    //: self.frame = frame;
    self.frame = frame;
}
//: -(CGFloat)maxX
-(CGFloat)maxX
{
    //: return CGRectGetMaxX(self.frame);
    return CGRectGetMaxX(self.frame);
}
//: -(void)setMaxY:(CGFloat)maxY
-(void)setMaxY:(CGFloat)maxY
{
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin.y = maxY - frame.size.height;
    frame.origin.y = maxY - frame.size.height;
    //: self.frame = frame;
    self.frame = frame;
}
//: -(CGFloat)maxY
-(CGFloat)maxY
{
    //: return CGRectGetMaxY(self.frame);
    return CGRectGetMaxY(self.frame);
}
//: -(void)setWidth:(CGFloat)width
-(void)setWidth:(CGFloat)width
{
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.size.width = width;
    frame.size.width = width;
    //: self.frame = frame;
    self.frame = frame;
}
//: -(void)setHeight:(CGFloat)height
-(void)setHeight:(CGFloat)height
{
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.size.height = height;
    frame.size.height = height;
    //: self.frame = frame;
    self.frame = frame;
}
//: -(CGFloat)height
-(CGFloat)height
{
    //: return self.frame.size.height;
    return self.frame.size.height;
}
//: -(CGFloat)width
-(CGFloat)width
{
    //: return self.frame.size.width;
    return self.frame.size.width;
}
//: -(void)setSize:(CGSize)size
-(void)setSize:(CGSize)size
{
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.size = size;
    frame.size = size;
    //: self.frame = frame;
    self.frame = frame;
}
//: -(CGSize)size
-(CGSize)size
{
    //: return self.frame.size;
    return self.frame.size;
}
//: -(void)setOrigin:(CGPoint)origin
-(void)setOrigin:(CGPoint)origin
{
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin = origin;
    frame.origin = origin;
    //: self.frame = frame;
    self.frame = frame;
}
//: -(CGPoint)origin
-(CGPoint)origin
{
    //: return self.frame.origin;
    return self.frame.origin;
}
//: -(CGFloat)boundsWidth
-(CGFloat)boundsWidth
{
    //: return self.bounds.size.width;
    return self.bounds.size.width;
}
//: -(CGFloat)boundsHeight
-(CGFloat)boundsHeight
{
    //: return self.bounds.size.height;
    return self.bounds.size.height;
}
//: -(void)setBoundsWidth:(CGFloat)boundsWidth
-(void)setBoundsWidth:(CGFloat)boundsWidth
{
    //: CGRect bounds = self.bounds;
    CGRect bounds = self.bounds;
    //: bounds.size.width = boundsWidth;
    bounds.size.width = boundsWidth;
    //: self.bounds = bounds;
    self.bounds = bounds;
}
//: -(void)setBoundsHeight:(CGFloat)boundsHeight
-(void)setBoundsHeight:(CGFloat)boundsHeight
{
    //: CGRect bounds = self.bounds;
    CGRect bounds = self.bounds;
    //: bounds.size.height = boundsHeight;
    bounds.size.height = boundsHeight;
    //: self.bounds = bounds;
    self.bounds = bounds;
}
//: -(CGFloat)left
-(CGFloat)left
{
    //: return self.frame.origin.x;
    return self.frame.origin.x;
}
//: -(CGFloat)right
-(CGFloat)right
{
    //: return self.frame.size.width + self.frame.origin.x;
    return self.frame.size.width + self.frame.origin.x;
}
//: -(CGFloat)top
-(CGFloat)top
{
    //: return self.frame.origin.y;
    return self.frame.origin.y;
}
//: -(CGFloat)bottom
-(CGFloat)bottom
{
    //: return self.frame.origin.y +self.frame.size.height;
    return self.frame.origin.y +self.frame.size.height;
}
//: -(void)setLeft:(CGFloat)left
-(void)setLeft:(CGFloat)left
{
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin.x = left;
    frame.origin.x = left;
    //: self.frame = frame;
    self.frame = frame;
}
//: -(void)setRight:(CGFloat)right
-(void)setRight:(CGFloat)right
{
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin.x = right - frame.size.width;
    frame.origin.x = right - frame.size.width;
    //: self.frame = frame;
    self.frame = frame;
}
//: -(void)setTop:(CGFloat)top
-(void)setTop:(CGFloat)top
{
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin.y = top;
    frame.origin.y = top;
    //: self.frame = frame;
    self.frame = frame;
}
//: -(void)setBottom:(CGFloat)bottom
-(void)setBottom:(CGFloat)bottom
{
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin.y = bottom - frame.size.height;
    frame.origin.y = bottom - frame.size.height;
    //: self.frame = frame;
    self.frame = frame;
}
//: - (UIViewController *)pr_getCurrentViewController
- (UIViewController *)pr_getCurrentViewController
{
    //: UIResponder *next = [self nextResponder];
    UIResponder *next = [self nextResponder];
    //: do {
    do {
        //: if ([next isKindOfClass:[UIViewController class]]) {
        if ([next isKindOfClass:[UIViewController class]]) {
            //: return (UIViewController *)next;
            return (UIViewController *)next;
        }
        //: next = [next nextResponder];
        next = [next nextResponder];
    //: } while (next != nil);
    } while (next != nil);
    //: return nil;
    return nil;
}
//: #pragma mark - 移除view上刷新控件之外的其他控件
#pragma mark - 移除view上刷新控件之外的其他控件
//: - (void)pr_removeSubviewFromSuperviewExceptRerfeshView
- (void)pr_removeSubviewFromSuperviewExceptRerfeshView
{
    //: if (self == nil) {
    if (self == nil) {
        //: return;
        return;
    }
    //: if ([self isKindOfClass:[UITableView class]]) {
    if ([self isKindOfClass:[UITableView class]]) {
        //: return;
        return;
    }
    //: for (UIView * refreshView in self.subviews) {
    for (UIView * refreshView in self.subviews) {
        //: if (![refreshView isKindOfClass:NSClassFromString(@"MJRefreshComponent")]) {
        if (![refreshView isKindOfClass:NSClassFromString(@"MJRefreshComponent")]) {
            //: [refreshView removeFromSuperview];
            [refreshView removeFromSuperview];
        }
    }
}
//: #pragma mark - 一次性加多个view到界面上
#pragma mark - 一次性加多个view到界面上
//: -(void)addSubviews:(NSArray<UIView*>*)views{
-(void)addSubviews:(NSArray<UIView*>*)views{
    //: for (UIView* view in views) {
    for (UIView* view in views) {
        //: [self addSubview:view];
        [self addSubview:view];
    }
}
//: - (UIViewController*)currentViewController {
- (UIViewController*)currentViewController {
    //: UIViewController* vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    UIViewController* vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    //: while (1) {
    while (1) {
        //: if ([vc isKindOfClass:[UITabBarController class]]) {
        if ([vc isKindOfClass:[UITabBarController class]]) {
            //: vc = ((UITabBarController*)vc).selectedViewController;
            vc = ((UITabBarController*)vc).selectedViewController;
        }
        //: if ([vc isKindOfClass:[UINavigationController class]]) {
        if ([vc isKindOfClass:[UINavigationController class]]) {
            //: vc = ((UINavigationController*)vc).visibleViewController;
            vc = ((UINavigationController*)vc).visibleViewController;
        }
        //: if (vc.presentedViewController) {
        if (vc.presentedViewController) {
            //: vc = vc.presentedViewController;
            vc = vc.presentedViewController;
        //: }else{
        }else{
            //: break;
            break;
        }
    }
    //: return vc;
    return vc;
}
//: - (UIViewController *)getCurrentVC {
- (UIViewController *)getCurrentVC {
    //: UIViewController *result = nil;
    UIViewController *result = nil;
    //: UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    //: if (window.windowLevel != UIWindowLevelNormal) {
    if (window.windowLevel != UIWindowLevelNormal) {
        //: NSArray *windows = [[UIApplication sharedApplication] windows];
        NSArray *windows = [[UIApplication sharedApplication] windows];
        //: for(UIWindow * tmpWin in windows) {
        for(UIWindow * tmpWin in windows) {
            //: if (tmpWin.windowLevel == UIWindowLevelNormal) {
            if (tmpWin.windowLevel == UIWindowLevelNormal) {
                //: window = tmpWin;
                window = tmpWin;
                //: break;
                break;
            }
        }
    }
    //: UIView *frontView = [[window subviews] objectAtIndex:0];
    UIView *frontView = [[window subviews] objectAtIndex:0];
    //: id nextResponder = [frontView nextResponder];
    id nextResponder = [frontView nextResponder];
    //: if ([nextResponder isKindOfClass:[UIViewController class]]) {
    if ([nextResponder isKindOfClass:[UIViewController class]]) {
        //: result = nextResponder;
        result = nextResponder;
    //: } else {
    } else {
        //: result = window.rootViewController;
        result = window.rootViewController;
    }
    //: return result;
    return result;
}
//: - (UIView *)gaussView:(UIView *)view
- (UIView *)gaussView:(UIView *)view
{
    //: view.contentMode = UIViewContentModeScaleAspectFit;
    view.contentMode = UIViewContentModeScaleAspectFit;
    //: UIBlurEffect *blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIBlurEffect *blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    //: UIVisualEffectView *effectview = [[UIVisualEffectView alloc] initWithEffect:blur];
    UIVisualEffectView *effectview = [[UIVisualEffectView alloc] initWithEffect:blur];
    //: effectview.frame = view.bounds;
    effectview.frame = view.bounds;
    //: [view addSubview:effectview];
    [view addSubview:effectview];
    //: return view;
    return view;
}
//: @end
@end
