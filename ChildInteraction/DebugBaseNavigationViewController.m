// __DEBUG__
//: 
//: @interface DebugBaseNavigationViewController ()

// __M_A_C_R_O__
#import "DebugBaseNavigationViewController.h"

@interface DebugBaseNavigationViewController ()
//: @end
@end
//: @implementation DebugBaseNavigationViewController
@implementation DebugBaseNavigationViewController
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
}
//: -(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    //: if (self.viewControllers.count > 0 ) {
    if (self.viewControllers.count > 0 ) {
        //: viewController.hidesBottomBarWhenPushed = true;
        viewController.hidesBottomBarWhenPushed = true;
    }
    //: [super pushViewController:viewController animated:animated];
    [super pushViewController:viewController animated:animated];
}
//: @end
@end
