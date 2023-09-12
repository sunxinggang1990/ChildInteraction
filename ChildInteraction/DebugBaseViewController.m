#import "DebugBaseViewController.h"
@interface DebugBaseViewController ()
@end
@implementation DebugBaseViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithHex:0xffffff];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    if (@available(iOS 15.0, *)) {
        UINavigationBarAppearance *navBarApperance = [UINavigationBarAppearance new];
        navBarApperance.backgroundColor = NweDeBugColor;
        NSDictionary *dictM = @{ NSForegroundColorAttributeName:[UIColor whiteColor]};
        navBarApperance.titleTextAttributes = dictM;
        self.navigationController.navigationBar.standardAppearance = navBarApperance;
        self.navigationController.navigationBar.scrollEdgeAppearance = navBarApperance;
    }else{
        self.navigationController.navigationBar.barTintColor = NweDeBugColor;
    }
}
@end
