#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface PrenanTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *prenanName;
@property (weak, nonatomic) IBOutlet UILabel *prenanDate;
@property (weak, nonatomic) IBOutlet UILabel *prenanTime;
@property (weak, nonatomic) IBOutlet UILabel *prenanContent;
@end
NS_ASSUME_NONNULL_END
