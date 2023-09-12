// __DEBUG__
//: 
//: 
//: 
//: 
//: @interface DebugTabbarViewController ()

// __M_A_C_R_O__
#import "DebugTabbarViewController.h"
#import "DebugBaseNavigationViewController.h"
#import "PregnantRecordViewController.h"
#import "PregnantMineViewController.h"

@interface DebugTabbarViewController ()
//: @end
@end
//: @implementation DebugTabbarViewController
@implementation DebugTabbarViewController
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.tabBar.clipsToBounds = YES;
    self.tabBar.clipsToBounds = YES;
    //: self.tabBar.tintColor = [UIColor colorWithHex:0x9933FA];
    self.tabBar.tintColor = [UIColor colorWithHex:0x9933FA];
    //: DebugBaseNavigationViewController *vc1 = [[DebugBaseNavigationViewController alloc]initWithRootViewController:[PregnantRecordViewController new]];
    DebugBaseNavigationViewController *vc1 = [[DebugBaseNavigationViewController alloc]initWithRootViewController:[PregnantRecordViewController new]];
    //: DebugBaseNavigationViewController *vc2 = [[DebugBaseNavigationViewController alloc]initWithRootViewController:[PregnantMineViewController new]];
    DebugBaseNavigationViewController *vc2 = [[DebugBaseNavigationViewController alloc]initWithRootViewController:[PregnantMineViewController new]];
    //: self.viewControllers = @[vc1,vc2];
    self.viewControllers = @[vc1,vc2];
    //: UITabBarItem *item1 = self.tabBar.items[0];
    UITabBarItem *item1 = self.tabBar.items[0];
    //: UITabBarItem *item2 = self.tabBar.items[1];
    UITabBarItem *item2 = self.tabBar.items[1];
    //: [item1 setTitle:@"首页"];
    [item1 setTitle:@"首页"];
    //: [item2 setTitle:@"我的"];
    [item2 setTitle:@"我的"];
    //: [item1 setImage:[UIImage imageNamed:@"prenanHome"]];
    [item1 setImage:[UIImage imageNamed:@"prenanHome"]];
    //: [item1 setSelectedImage:[UIImage imageNamed:@"prenanHome"]];
    [item1 setSelectedImage:[UIImage imageNamed:@"prenanHome"]];
    //: item1.selectedImage = [item1.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item1.selectedImage = [item1.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //: [item2 setImage:[UIImage imageNamed:@"prenanMine"]];
    [item2 setImage:[UIImage imageNamed:@"prenanMine"]];
    //: [item2 setSelectedImage:[UIImage imageNamed:@"prenanMine"]];
    [item2 setSelectedImage:[UIImage imageNamed:@"prenanMine"]];
    //: item2.selectedImage = [item2.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item2.selectedImage = [item2.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
//: @end
@end
