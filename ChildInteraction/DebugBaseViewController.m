// __DEBUG__
//: 
//: @interface DebugBaseViewController ()

// __M_A_C_R_O__
#import "DebugBaseViewController.h"

@interface DebugBaseViewController ()
//: @end
@end
//: @implementation DebugBaseViewController
@implementation DebugBaseViewController
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHex:0xffffff];
    self.view.backgroundColor = [UIColor colorWithHex:0xffffff];
    //: self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    //: if (@available(iOS 15.0, *)) {
    if (@available(iOS 15.0, *)) {
        //: UINavigationBarAppearance *navBarApperance = [UINavigationBarAppearance new];
        UINavigationBarAppearance *navBarApperance = [UINavigationBarAppearance new];
        //: navBarApperance.backgroundColor = NweDeBugColor;
        navBarApperance.backgroundColor = [UIColor colorWithHex:0xB22222];;
        //: NSDictionary *dictM = @{ NSForegroundColorAttributeName:[UIColor whiteColor]};
        NSDictionary *dictM = @{ NSForegroundColorAttributeName:[UIColor whiteColor]};
        //: navBarApperance.titleTextAttributes = dictM;
        navBarApperance.titleTextAttributes = dictM;
        //: self.navigationController.navigationBar.standardAppearance = navBarApperance;
        self.navigationController.navigationBar.standardAppearance = navBarApperance;
        //: self.navigationController.navigationBar.scrollEdgeAppearance = navBarApperance;
        self.navigationController.navigationBar.scrollEdgeAppearance = navBarApperance;
    //: }else{
    }else{
        //: self.navigationController.navigationBar.barTintColor = NweDeBugColor;
        self.navigationController.navigationBar.barTintColor = [UIColor colorWithHex:0xB22222];;
    }
}
//: @end
@end
