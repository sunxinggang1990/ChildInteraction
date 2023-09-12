// __DEBUG__
//: 
//: @interface PrenanAddPlanViewController ()

// __M_A_C_R_O__
#import "PrenanAddPlanViewController.h"

@interface PrenanAddPlanViewController ()
//: @end
@end
//: @implementation PrenanAddPlanViewController
@implementation PrenanAddPlanViewController
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.navigationItem.title = @"添加亲子记录";
    self.navigationItem.title = @"添加亲子记录";
    //: if (self.prenanTypeStr.length == 0) {
    if (self.prenanTypeStr.length == 0) {
        //: self.prenanType.userInteractionEnabled = YES;
        self.prenanType.userInteractionEnabled = YES;
    //: }else{
    }else{
        //: self.prenanType.userInteractionEnabled = NO;
        self.prenanType.userInteractionEnabled = NO;
        //: self.prenanType.text = self.prenanTypeStr;
        self.prenanType.text = self.prenanTypeStr;
    }
    //: [self.prenanStartTime setDropDownMode:IQDropDownModeTimePicker];
    [self.prenanStartTime setDropDownMode:IQDropDownModeTimePicker];
    //: NSDateFormatter *prenanDateFormat = [[NSDateFormatter alloc] init];
    NSDateFormatter *prenanDateFormat = [[NSDateFormatter alloc] init];
    //: [prenanDateFormat setDateFormat:@"HH:mm"];
    [prenanDateFormat setDateFormat:@"HH:mm"];
    //: self.prenanStartTime.dateFormatter = prenanDateFormat;
    self.prenanStartTime.dateFormatter = prenanDateFormat;
    //: self.prenanIC.image = [UIImage imageNamed:self.prenanICStr];
    self.prenanIC.image = [UIImage imageNamed:self.prenanICStr];
}
//: - (IBAction)prenanSaveAction:(id)sender {
- (IBAction)prenanSaveAction:(id)sender {
    //: if (self.prenanType.text.length == 0) {
    if (self.prenanType.text.length == 0) {
        //: [SVProgressHUD showErrorWithStatus:@"由于您的类型选择了其他，所以请您手动输入类型"];
        [SVProgressHUD showErrorWithStatus:@"由于您的类型选择了其他，所以请您手动输入类型"];
        //: [SVProgressHUD dismissWithDelay:2];
        [SVProgressHUD dismissWithDelay:2];
    }
    //: if(self.prenanDetail.text.length == 0){
    if(self.prenanDetail.text.length == 0){
        //: [SVProgressHUD showErrorWithStatus:@"请输入内容描述，用来回想记录的瞬间"];
        [SVProgressHUD showErrorWithStatus:@"请输入内容描述，用来回想记录的瞬间"];
        //: [SVProgressHUD dismissWithDelay:2];
        [SVProgressHUD dismissWithDelay:2];
        //: return;
        return;
    }
    //: PrenanRecordModel *model = [[PrenanRecordModel alloc] init];
    PrenanRecordModel *model = [[PrenanRecordModel alloc] init];
    //: model.prenanDate = [self getCurrentTimesWithFormat:@"YYYY-MM-dd"];
    model.prenanDate = [self getCurrentTimesWithFormat:@"YYYY-MM-dd"];
    //: model.prenanDetail = self.prenanDetail.text;
    model.prenanDetail = self.prenanDetail.text;
    //: model.prenanName = self.prenanType.text;
    model.prenanName = self.prenanType.text;
    //: model.prenanTime = self.prenanStartTime.selectedItem;
    model.prenanTime = self.prenanStartTime.selectedItem;
    //: MMKV *mmkv = [MMKV defaultMMKV];
    MMKV *mmkv = [MMKV defaultMMKV];
    //: NSMutableArray *mutArr = [NSMutableArray array];
    NSMutableArray *mutArr = [NSMutableArray array];
    //: NSArray *prenanRecordArr = [mmkv getObjectOfClass:NSArray.class forKey:@"prenanRecordArr"];
    NSArray *prenanRecordArr = [mmkv getObjectOfClass:NSArray.class forKey:@"prenanRecordArr"];
    //: if(prenanRecordArr){
    if(prenanRecordArr){
        //: [mutArr addObjectsFromArray:prenanRecordArr];
        [mutArr addObjectsFromArray:prenanRecordArr];
    }
    //: [mutArr insertObject:model atIndex:0];
    [mutArr insertObject:model atIndex:0];
    //: [mmkv setObject:mutArr forKey:@"prenanRecordArr"];
    [mmkv setObject:mutArr forKey:@"prenanRecordArr"];
    //: [SVProgressHUD showSuccessWithStatus:@"信息保存成功，系统将在2秒后返回主页查看"];
    [SVProgressHUD showSuccessWithStatus:@"信息保存成功，系统将在2秒后返回主页查看"];
    //: dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(2 * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: [self.navigationController popToRootViewControllerAnimated:YES];
        [self.navigationController popToRootViewControllerAnimated:YES];
    //: });
    });
}
//: -(NSString*)getCurrentTimesWithFormat:(NSString *)format{
-(NSString*)getCurrentTimesWithFormat:(NSString *)format{
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: if(format){
    if(format){
        //: [formatter setDateFormat:format];
        [formatter setDateFormat:format];
    //: }else{
    }else{
        //: [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
        [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    }
    //: NSDate *datenow = [NSDate date];
    NSDate *datenow = [NSDate date];
    //: NSString *currentTimeString = [formatter stringFromDate:datenow];
    NSString *currentTimeString = [formatter stringFromDate:datenow];
    //: return currentTimeString;
    return currentTimeString;
}
//: @end
@end
