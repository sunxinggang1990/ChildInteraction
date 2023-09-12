// __DEBUG__
//
//  LaunchPageViewController.m
//  TestProject
//
//  Created by Succi on 2023/7/13.
//
//: 
//: 
//: 
//: 
//: @interface LaunchPageViewController ()<GDTRewardedVideoAdDelegate>

// __M_A_C_R_O__
#import "LaunchPageViewController.h"
#import "AdConfigManager.h"
#import "SDWebImage.h"
#import "GDTRewardVideoAd.h"

@interface LaunchPageViewController ()<GDTRewardedVideoAdDelegate>


//: @property (nonatomic, strong) UIImageView *fullImageV;
@property (nonatomic, strong) UIImageView *fullImageV;

//: @property (nonatomic, assign) BOOL isSecond;
@property (nonatomic, assign) BOOL isSecond;

//: @property (nonatomic, assign) int   index;
@property (nonatomic, assign) int index;

//: @property (nonatomic, strong) GDTRewardVideoAd *rewardVideoAd;
@property (nonatomic, strong) GDTRewardVideoAd *rewardVideoAd;

//: @property (nonatomic, strong) UIAlertController *pinglunController;
@property (nonatomic, strong) UIAlertController *pinglunController;

//: @property (nonatomic, strong) UIAlertController *alertController;
@property (nonatomic, strong) UIAlertController *alertController;


//: @end
@end

//: @implementation LaunchPageViewController
@implementation LaunchPageViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];
    //: [self loadImage];
    [self loadImage];
    //: [self loadAd];
    [self loadAd];

    //: self.index = 0;
    self.index = 0;

    //: self.pinglunController = [UIAlertController alertControllerWithTitle:@"评论解锁" message:@"五星好评即可解锁内容" preferredStyle:UIAlertControllerStyleAlert];
    self.pinglunController = [UIAlertController alertControllerWithTitle:@"评论解锁" message:@"五星好评即可解锁内容" preferredStyle:UIAlertControllerStyleAlert];
    //: UIAlertAction *pinglunAction = [UIAlertAction actionWithTitle:@"立即解锁" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *pinglunAction = [UIAlertAction actionWithTitle:@"立即解锁" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: UIApplication *application = [UIApplication sharedApplication];
        UIApplication *application = [UIApplication sharedApplication];

        //: NSString *plUrl = [AdConfigManager sharedInstance].configInfo.plUrl;
        NSString *plUrl = [AdConfigManager sharedInstance].configInfo.plUrl;
        //: NSURL *URL = [NSURL URLWithString:plUrl];
        NSURL *URL = [NSURL URLWithString:plUrl];
        //: [application openURL:URL options:@{} completionHandler:^(BOOL success) {
        [application openURL:URL options:@{} completionHandler:^(BOOL success) {
            //: if (success) {
            if (success) {
                 //: NSLog(@"Opened url");
                 NSLog(@"Opened url");
            }
        //: }];
        }];
        //: [[NSUserDefaults standardUserDefaults] setObject:@"true" forKey:@"isCommented"];
        [[NSUserDefaults standardUserDefaults] setObject:@"true" forKey:@"isCommented"];
    //: }];
    }];
    //: [self.pinglunController addAction:pinglunAction];
    [self.pinglunController addAction:pinglunAction];

}

//: - (void)loadImage {
- (void)loadImage {
    //: if(!_isSecond) {
    if(!_isSecond) {
        //: [self.fullImageV sd_setImageWithURL:[NSURL URLWithString:[AdConfigManager sharedInstance].configInfo.image_1]];
        [self.fullImageV sd_setImageWithURL:[NSURL URLWithString:[AdConfigManager sharedInstance].configInfo.image_1]];
    //: }else {
    }else {
        //: [self.fullImageV sd_setImageWithURL:[NSURL URLWithString:[AdConfigManager sharedInstance].configInfo.image_2]];
        [self.fullImageV sd_setImageWithURL:[NSURL URLWithString:[AdConfigManager sharedInstance].configInfo.image_2]];
    }
}

//: - (void)imageClicked {
- (void)imageClicked {
    // 首次考虑引导评论
    //: NSString *isCommented = [[NSUserDefaults standardUserDefaults] objectForKey:@"isCommented"];
    NSString *isCommented = [[NSUserDefaults standardUserDefaults] objectForKey:@"isCommented"];
    //: if (![isCommented isEqualToString:@"true"] && [[AdConfigManager sharedInstance].configInfo.plUrl length] > 0) {
    if (![isCommented isEqualToString:@"true"] && [[AdConfigManager sharedInstance].configInfo.plUrl length] > 0) {
        //: [self presentViewController:self.pinglunController animated:YES completion:nil];
        [self presentViewController:self.pinglunController animated:YES completion:nil];
        //: return ;
        return ;
    }


    //: if(!_isSecond) {
    if(!_isSecond) {
        //第一张
        //: [self playAd];
        [self playAd];
    //: }else {
    }else {
        //第二张
        //: [self showAdAlert];
        [self showAdAlert];
    }

    //: self.index++;
    self.index++;
}

//: #pragma mark Ad
#pragma mark Ad
//: - (void)loadAd {
- (void)loadAd {
    //: if([AdConfigManager sharedInstance].configInfo.rewardedID.length > 0) {
    if([AdConfigManager sharedInstance].configInfo.rewardedID.length > 0) {
        //: self.rewardVideoAd = [[GDTRewardVideoAd alloc] initWithPlacementId:[AdConfigManager sharedInstance].configInfo.rewardedID];
        self.rewardVideoAd = [[GDTRewardVideoAd alloc] initWithPlacementId:[AdConfigManager sharedInstance].configInfo.rewardedID];
        //: self.rewardVideoAd.delegate = self;
        self.rewardVideoAd.delegate = self;
        //: self.rewardVideoAd.videoMuted = NO;
        self.rewardVideoAd.videoMuted = NO;
        //: [self.rewardVideoAd loadAd];
        [self.rewardVideoAd loadAd];
    }
}

//: - (void)playAd {
- (void)playAd {
    //: if (!self.rewardVideoAd.isAdValid) {
    if (!self.rewardVideoAd.isAdValid) {
        //: [self loadAd];
        [self loadAd];
        //: return;
        return;
    }
    //: [self.rewardVideoAd showAdFromRootViewController:self];
    [self.rewardVideoAd showAdFromRootViewController:self];
}

//: - (void)showAdAlert {
- (void)showAdAlert {
    //: [self loadAd];
    [self loadAd];
    //: NSString *title = [AdConfigManager sharedInstance].configInfo.alertTitle;
    NSString *title = [AdConfigManager sharedInstance].configInfo.alertTitle;
    //: NSString *message = [AdConfigManager sharedInstance].configInfo.alertMessage;
    NSString *message = [AdConfigManager sharedInstance].configInfo.alertMessage;

    //: if (self.index >= 2) {
    if (self.index >= 2) {
        //: title = @"激活失败，请再试一次";
        title = @"激活失败，请再试一次";
    }

    //: self.alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    self.alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];

    //: UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: [self playAd];
        [self playAd];
    //: }];
    }];
    //: UIAlertAction *deleteAction = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *deleteAction = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        //: [self playAd];
        [self playAd];
    //: }];
    }];

    //: [self.alertController addAction:cancelAction];
    [self.alertController addAction:cancelAction];
    //: [self.alertController addAction:deleteAction];
    [self.alertController addAction:deleteAction];
    //: [self presentViewController:self.alertController animated:YES completion:nil];
    [self presentViewController:self.alertController animated:YES completion:nil];
}

//: #pragma mark GDTRewardedVideoAdDelegate
#pragma mark GDTRewardedVideoAdDelegate
//: - (void)gdt_rewardVideoAdDidLoad:(GDTRewardVideoAd *)rewardedVideoAd
- (void)gdt_rewardVideoAdDidLoad:(GDTRewardVideoAd *)rewardedVideoAd
{
    //: NSLog(@"%s",__FUNCTION__);
    NSLog(@"%s",__FUNCTION__);
}

//: - (void)gdt_rewardVideoAdVideoDidLoad:(GDTRewardVideoAd *)rewardedVideoAd
- (void)gdt_rewardVideoAdVideoDidLoad:(GDTRewardVideoAd *)rewardedVideoAd
{
    //: NSLog(@"%s",__FUNCTION__);
    NSLog(@"%s",__FUNCTION__);
    //: NSLog(@"视频文件加载成功");
    NSLog(@"视频文件加载成功");
}

//: - (void)gdt_rewardVideoAdWillVisible:(GDTRewardVideoAd *)rewardedVideoAd
- (void)gdt_rewardVideoAdWillVisible:(GDTRewardVideoAd *)rewardedVideoAd
{
    //: NSLog(@"%s",__FUNCTION__);
    NSLog(@"%s",__FUNCTION__);
    //: NSLog(@"视频播放页即将打开");
    NSLog(@"视频播放页即将打开");
}

//: - (void)gdt_rewardVideoAdDidExposed:(GDTRewardVideoAd *)rewardedVideoAd
- (void)gdt_rewardVideoAdDidExposed:(GDTRewardVideoAd *)rewardedVideoAd
{
    //: NSLog(@"%s",__FUNCTION__);
    NSLog(@"%s",__FUNCTION__);
    //: NSLog(@"广告已曝光");
    NSLog(@"广告已曝光");
}

//: - (void)gdt_rewardVideoAdDidClose:(GDTRewardVideoAd *)rewardedVideoAd
- (void)gdt_rewardVideoAdDidClose:(GDTRewardVideoAd *)rewardedVideoAd
{
    //: NSLog(@"%s",__FUNCTION__);
    NSLog(@"%s",__FUNCTION__);
    //: NSLog(@"广告已关闭");
    NSLog(@"广告已关闭");
    //: if(!_isSecond) {
    if(!_isSecond) {
        //切换到第二张图片
        //: _isSecond = YES;
        _isSecond = YES;
        //: [self loadImage];
        [self loadImage];
    }
}


//: - (void)gdt_rewardVideoAdDidClicked:(GDTRewardVideoAd *)rewardedVideoAd
- (void)gdt_rewardVideoAdDidClicked:(GDTRewardVideoAd *)rewardedVideoAd
{
    //: NSLog(@"%s",__FUNCTION__);
    NSLog(@"%s",__FUNCTION__);
    //: NSLog(@"广告已点击");
    NSLog(@"广告已点击");
}

//: - (void)gdt_rewardVideoAd:(GDTRewardVideoAd *)rewardedVideoAd didFailWithError:(NSError *)error
- (void)gdt_rewardVideoAd:(GDTRewardVideoAd *)rewardedVideoAd didFailWithError:(NSError *)error
{
    //: NSLog(@"%s",__FUNCTION__);
    NSLog(@"%s",__FUNCTION__);
    //: if (error.code == 4014) {
    if (error.code == 4014) {
        //: NSLog(@"请拉取到广告后再调用展示接口");
        NSLog(@"请拉取到广告后再调用展示接口");
    //: } else if (error.code == 4016) {
    } else if (error.code == 4016) {
        //: NSLog(@"应用方向与广告位支持方向不一致");
        NSLog(@"应用方向与广告位支持方向不一致");
    //: } else if (error.code == 5012) {
    } else if (error.code == 5012) {
        //: NSLog(@"广告已过期");
        NSLog(@"广告已过期");
    //: } else if (error.code == 4015) {
    } else if (error.code == 4015) {
        //: NSLog(@"广告已经播放过，请重新拉取");
        NSLog(@"广告已经播放过，请重新拉取");
    //: } else if (error.code == 5002) {
    } else if (error.code == 5002) {
        //: NSLog(@"视频下载失败");
        NSLog(@"视频下载失败");
    //: } else if (error.code == 5003) {
    } else if (error.code == 5003) {
        //: NSLog(@"视频播放失败");
        NSLog(@"视频播放失败");
    //: } else if (error.code == 5004) {
    } else if (error.code == 5004) {
        //: NSLog(@"没有合适的广告");
        NSLog(@"没有合适的广告");
    //: } else if (error.code == 5013) {
    } else if (error.code == 5013) {
        //: NSLog(@"请求太频繁，请稍后再试");
        NSLog(@"请求太频繁，请稍后再试");
    //: } else if (error.code == 3002) {
    } else if (error.code == 3002) {
        //: NSLog(@"网络连接超时");
        NSLog(@"网络连接超时");
    //: } else if (error.code == 5027){
    } else if (error.code == 5027){
        //: NSLog(@"页面加载失败");
        NSLog(@"页面加载失败");
    }
    //: NSLog(@"ERROR: %@", error);
    NSLog(@"ERROR: %@", error);
}

//: - (void)gdt_rewardVideoAdDidRewardEffective:(GDTRewardVideoAd *)rewardedVideoAd info:(NSDictionary *)info {
- (void)gdt_rewardVideoAdDidRewardEffective:(GDTRewardVideoAd *)rewardedVideoAd info:(NSDictionary *)info {
    //: NSLog(@"%s",__FUNCTION__);
    NSLog(@"%s",__FUNCTION__);
    //: NSLog(@"播放达到激励条件 transid:%@", [info objectForKey:@"GDT_TRANS_ID"]);
    NSLog(@"播放达到激励条件 transid:%@", [info objectForKey:@"GDT_TRANS_ID"]);
}

//: - (void)gdt_rewardVideoAdDidPlayFinish:(GDTRewardVideoAd *)rewardedVideoAd
- (void)gdt_rewardVideoAdDidPlayFinish:(GDTRewardVideoAd *)rewardedVideoAd
{
    //: NSLog(@"%s",__FUNCTION__);
    NSLog(@"%s",__FUNCTION__);
    //: NSLog(@"视频播放结束");
    NSLog(@"视频播放结束");
}

//: - (void)gdtAdComplainSuccess:(id)ad {
- (void)gdtAdComplainSuccess:(id)ad {
    //: NSLog(@"%s",__FUNCTION__);
    NSLog(@"%s",__FUNCTION__);
    //: NSLog(@"广告投诉成功");
    NSLog(@"广告投诉成功");
}

//: #pragma mark Getter
#pragma mark Getter
//: - (UIImageView *)fullImageV {
- (UIImageView *)fullImageV {
    //: if(!_fullImageV) {
    if(!_fullImageV) {
        //: _fullImageV = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
        _fullImageV = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
        //: _fullImageV.contentMode = UIViewContentModeScaleToFill;
        _fullImageV.contentMode = UIViewContentModeScaleToFill;
        //: _fullImageV.userInteractionEnabled = YES;
        _fullImageV.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(imageClicked)];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(imageClicked)];
        //: [_fullImageV addGestureRecognizer:tap];
        [_fullImageV addGestureRecognizer:tap];
        //: [self.view addSubview:_fullImageV];
        [self.view addSubview:_fullImageV];
    }
    //: return _fullImageV;
    return _fullImageV;
}

//: @end
@end
