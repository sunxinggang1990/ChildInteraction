// __DEBUG__
//: 
//: 
//: 
//: @interface PregnantRecordViewController ()<UITableViewDelegate,UITableViewDataSource>

// __M_A_C_R_O__
#import "PregnantRecordViewController.h"
#import "PrenanTableViewCell.h"
#import "PrenanChooseViewController.h"

@interface PregnantRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
//: @property (nonatomic, strong) NSMutableArray <PrenanRecordModel *> *prenanRecordArr;
@property (nonatomic, strong) NSMutableArray <PrenanRecordModel *> *prenanRecordArr;
//: @end
@end
//: @implementation PregnantRecordViewController
@implementation PregnantRecordViewController
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: [self.prenanTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self.prenanTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    //: self.prenanTable.delegate = self;
    self.prenanTable.delegate = self;
    //: self.prenanTable.dataSource = self;
    self.prenanTable.dataSource = self;
    //: self.prenanTable.estimatedRowHeight = 120;
    self.prenanTable.estimatedRowHeight = 120;
    //: self.prenanTable.rowHeight = UITableViewAutomaticDimension;
    self.prenanTable.rowHeight = UITableViewAutomaticDimension;
    //: [self.prenanTable registerNib:[UINib nibWithNibName:@"PrenanTableViewCell" bundle:nil] forCellReuseIdentifier:@"PrenanTableViewCell"];
    [self.prenanTable registerNib:[UINib nibWithNibName:@"PrenanTableViewCell" bundle:nil] forCellReuseIdentifier:@"PrenanTableViewCell"];
    //: LYEmptyView *emptyView = [LYEmptyView emptyActionViewWithImageStr:@"无数据" titleStr:@"您还没有生成记录" detailStr:@"点击下方按钮添加吧" btnTitleStr:@"添加记录" btnClickBlock:^{
    LYEmptyView *emptyView = [LYEmptyView emptyActionViewWithImageStr:@"无数据" titleStr:@"您还没有生成记录" detailStr:@"点击下方按钮添加吧" btnTitleStr:@"添加记录" btnClickBlock:^{
        //: PrenanChooseViewController *vc = [[PrenanChooseViewController alloc] init];
        PrenanChooseViewController *vc = [[PrenanChooseViewController alloc] init];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    //: }];
    }];
    //: emptyView.emptyViewIsCompleteCoverSuperView = YES;
    emptyView.emptyViewIsCompleteCoverSuperView = YES;
    //: self.prenanTable.ly_emptyView = emptyView;
    self.prenanTable.ly_emptyView = emptyView;
}
//: - (IBAction)prenanAddAction:(id)sender {
- (IBAction)prenanAddAction:(id)sender {
    //: PrenanChooseViewController *vc = [[PrenanChooseViewController alloc] init];
    PrenanChooseViewController *vc = [[PrenanChooseViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: -(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: return self.prenanRecordArr.count;
    return self.prenanRecordArr.count;
}
//: -(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: PrenanTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PrenanTableViewCell"];
    PrenanTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PrenanTableViewCell"];
    //: cell.selectionStyle=UITableViewCellSelectionStyleNone;
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    //: cell.prenanName.text = self.prenanRecordArr[indexPath.row].prenanName;
    cell.prenanName.text = self.prenanRecordArr[indexPath.row].prenanName;
    //: cell.prenanTime.text = self.prenanRecordArr[indexPath.row].prenanTime;
    cell.prenanTime.text = self.prenanRecordArr[indexPath.row].prenanTime;
    //: cell.prenanDate.text = self.prenanRecordArr[indexPath.row].prenanDate;
    cell.prenanDate.text = self.prenanRecordArr[indexPath.row].prenanDate;
    //: cell.prenanContent.text = self.prenanRecordArr[indexPath.row].prenanDetail;
    cell.prenanContent.text = self.prenanRecordArr[indexPath.row].prenanDetail;
    //: return cell;
    return cell;
}
//: - (NSArray<UITableViewRowAction *> *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath {
- (NSArray<UITableViewRowAction *> *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: UITableViewRowAction *action = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleNormal title:@"删除" handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
    UITableViewRowAction *action = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleNormal title:@"删除" handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
        //: NSMutableArray *prenanRecordArr = [NSMutableArray array];
        NSMutableArray *prenanRecordArr = [NSMutableArray array];
        //: [self.prenanRecordArr removeObjectAtIndex:indexPath.row];
        [self.prenanRecordArr removeObjectAtIndex:indexPath.row];
        //: prenanRecordArr = self.prenanRecordArr;
        prenanRecordArr = self.prenanRecordArr;
        //: MMKV *mmkv = [MMKV defaultMMKV];
        MMKV *mmkv = [MMKV defaultMMKV];
        //: [mmkv removeValueForKey:@"prenanRecordArr"];
        [mmkv removeValueForKey:@"prenanRecordArr"];
        //: [mmkv setObject:prenanRecordArr forKey:@"prenanRecordArr"];
        [mmkv setObject:prenanRecordArr forKey:@"prenanRecordArr"];
        //: [self.prenanTable reloadData];
        [self.prenanTable reloadData];
    //: }];
    }];
    //: action.backgroundColor = [UIColor colorWithHex:0xB03060];
    action.backgroundColor = [UIColor colorWithHex:0xB03060];
    //: return @[action];
    return @[action];
}
//: -(void)viewWillAppear:(BOOL)animated{
-(void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: MMKV *mmkv = [MMKV defaultMMKV];
    MMKV *mmkv = [MMKV defaultMMKV];
    //: self.prenanRecordArr = [mmkv getObjectOfClass:NSArray.class forKey:@"prenanRecordArr"];
    self.prenanRecordArr = [mmkv getObjectOfClass:NSArray.class forKey:@"prenanRecordArr"];
    //: [self.prenanTable reloadData];
    [self.prenanTable reloadData];
    //: [self.navigationController setNavigationBarHidden:YES];
    [self.navigationController setNavigationBarHidden:YES];
}
//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController setNavigationBarHidden:NO];
    [self.navigationController setNavigationBarHidden:NO];
}
//: @end
@end
