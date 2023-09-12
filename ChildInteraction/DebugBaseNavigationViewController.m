#import "DebugBaseNavigationViewController.h"
@interface DebugBaseNavigationViewController ()
@end
@implementation DebugBaseNavigationViewController
- (void)viewDidLoad {
    [super viewDidLoad];
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0 ) {
        viewController.hidesBottomBarWhenPushed = true;
    }
    [super pushViewController:viewController animated:animated];
}
@end
