#import "PrenanChooseViewController.h"
#import "PrenanCollectionViewCell.h"
#import "PrenanAddPlanViewController.h"
@interface PrenanChooseViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) NSArray *prenanTypeArr;
@end
@implementation PrenanChooseViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"选择一个主题";
    self.prenanTypeArr = @[@"羽毛球",@"篮球",@"乒乓球",@"游泳",@"自行车",@"棒球",@"滑板",@"橄榄球",@"其它"];
    self.prenanCollec.delegate = self;
    self.prenanCollec.dataSource = self;
    [self.prenanCollec registerNib:[UINib nibWithNibName:@"PrenanCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"PrenanCollectionViewCell"];
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.prenanTypeArr.count;
}
-(__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    PrenanCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PrenanCollectionViewCell" forIndexPath:indexPath];
    cell.prenanIC.image = [UIImage imageNamed:self.prenanTypeArr[indexPath.row]];
    cell.prenanType.text = self.prenanTypeArr[indexPath.row];
    return cell;;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 15;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    return 15;
}
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(0, 15, 0, 15);
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake((SCREEN_WIDTH-15-15-20-20)/3, (SCREEN_WIDTH-25-25-20)/3);
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    PrenanAddPlanViewController *vc = [[PrenanAddPlanViewController alloc] init];
    if (indexPath.row == self.prenanTypeArr.count-1) {
        vc.prenanTypeStr = @"";
    }else{
        vc.prenanTypeStr = self.prenanTypeArr[indexPath.row];
    }
    vc.prenanICStr = self.prenanTypeArr[indexPath.row];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
