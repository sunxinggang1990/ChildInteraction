// __DEBUG__
//: 
//: 
//: @interface PregnantMineViewController ()

// __M_A_C_R_O__
#import "PregnantMineViewController.h"
#import <StoreKit/StoreKit.h>

@interface PregnantMineViewController ()
//: @end
@end
//: @implementation PregnantMineViewController
@implementation PregnantMineViewController
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.navigationItem.title = @"我的";
    self.navigationItem.title = @"我的";
    //: [self.prenanShangDian set_Tapped:^{
    [self.prenanShangDian set_Tapped:^{
        //: if ([SKStoreReviewController respondsToSelector:@selector(requestReview)]){
        if ([SKStoreReviewController respondsToSelector:@selector(requestReview)]){
                    //: [[UIApplication sharedApplication].keyWindow endEditing:YES];
                    [[UIApplication sharedApplication].keyWindow endEditing:YES];
                    //: [SKStoreReviewController requestReview];
                    [SKStoreReviewController requestReview];
                }
    //: }];
    }];
    //: [self.prenanHuanCun set_Tapped:^{
    [self.prenanHuanCun set_Tapped:^{
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(2 * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: [SVProgressHUD showSuccessWithStatus:@"缓存清理成功，当前缓存为0.00M"];
            [SVProgressHUD showSuccessWithStatus:@"缓存清理成功，当前缓存为0.00M"];
            //: [SVProgressHUD dismissWithDelay:2];
            [SVProgressHUD dismissWithDelay:2];
        //: });
        });
    //: }];
    }];
    //: [self.prenanFenXiang set_Tapped:^{
    [self.prenanFenXiang set_Tapped:^{
        //: UIImage *img = [self imageWithView:self.view];
        UIImage *img = [self imageWithView:self.view];
        //: NSArray *CAUserItems = @[img];
        NSArray *CAUserItems = @[img];
        //: UIActivityViewController *CAFasd = [[UIActivityViewController alloc]initWithActivityItems:CAUserItems applicationActivities:nil];
        UIActivityViewController *CAFasd = [[UIActivityViewController alloc]initWithActivityItems:CAUserItems applicationActivities:nil];
        //: [self.parentViewController presentViewController:CAFasd animated:YES completion:nil];
        [self.parentViewController presentViewController:CAFasd animated:YES completion:nil];
    //: }];
    }];
    //: [self.prenanGengXin set_Tapped:^{
    [self.prenanGengXin set_Tapped:^{
        //: [SVProgressHUD showInfoWithStatus:@"当前版本为最新版本V1.0.0,无需更新"];
        [SVProgressHUD showInfoWithStatus:@"当前版本为最新版本V1.0.0,无需更新"];
        //: [SVProgressHUD dismissWithDelay:2];
        [SVProgressHUD dismissWithDelay:2];
    //: }];
    }];
    //: [self.prenanLianXi set_Tapped:^{
    [self.prenanLianXi set_Tapped:^{
        //: TakePhone(@"17602201176");
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:%@",@"17602201176"]] options:@{UIApplicationOpenURLOptionUniversalLinksOnly : @NO} completionHandler:^(BOOL success) {}];
    //: }];
    }];
}
//: - (UIImage *)imageWithView:(UIView *)view
- (UIImage *)imageWithView:(UIView *)view
{
    //: UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, [UIScreen mainScreen].scale);
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, [UIScreen mainScreen].scale);
    //: [view drawViewHierarchyInRect:view.bounds afterScreenUpdates:NO];
    [view drawViewHierarchyInRect:view.bounds afterScreenUpdates:NO];
    //: UIImage *snapshotImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *snapshotImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return snapshotImage;
    return snapshotImage;
}
//: @end
@end
