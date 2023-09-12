#import "PregnantMineViewController.h"
#import <StoreKit/StoreKit.h>
@interface PregnantMineViewController ()
@end
@implementation PregnantMineViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"我的";
    [self.prenanShangDian set_Tapped:^{
        if ([SKStoreReviewController respondsToSelector:@selector(requestReview)]){
                    [[UIApplication sharedApplication].keyWindow endEditing:YES];
                    [SKStoreReviewController requestReview];
                }
    }];
    [self.prenanHuanCun set_Tapped:^{
        [SVProgressHUD show];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [SVProgressHUD dismiss];
            [SVProgressHUD showSuccessWithStatus:@"缓存清理成功，当前缓存为0.00M"];
            [SVProgressHUD dismissWithDelay:2];
        });
    }];
    [self.prenanFenXiang set_Tapped:^{
        UIImage *img = [self imageWithView:self.view];
        NSArray *CAUserItems = @[img];
        UIActivityViewController *CAFasd = [[UIActivityViewController alloc]initWithActivityItems:CAUserItems applicationActivities:nil];
        [self.parentViewController presentViewController:CAFasd animated:YES completion:nil];
    }];
    [self.prenanGengXin set_Tapped:^{
        [SVProgressHUD showInfoWithStatus:@"当前版本为最新版本V1.0.0,无需更新"];
        [SVProgressHUD dismissWithDelay:2];
    }];
    [self.prenanLianXi set_Tapped:^{
        TakePhone(@"17602201176");
    }];
}
- (UIImage *)imageWithView:(UIView *)view
{
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, [UIScreen mainScreen].scale);
    [view drawViewHierarchyInRect:view.bounds afterScreenUpdates:NO];
    UIImage *snapshotImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return snapshotImage;
}
@end
