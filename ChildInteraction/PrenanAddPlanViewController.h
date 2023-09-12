#import "DebugBaseViewController.h"
NS_ASSUME_NONNULL_BEGIN
@interface PrenanAddPlanViewController : DebugBaseViewController
@property (weak, nonatomic) IBOutlet UITextField *prenanType;
@property (weak, nonatomic) IBOutlet UIImageView *prenanIC;
@property (weak, nonatomic) IBOutlet IQDropDownTextField *prenanStartTime;
@property (weak, nonatomic) IBOutlet SZTextView *prenanDetail;
@property (nonatomic, copy) NSString *prenanTypeStr;
@property (nonatomic, copy) NSString *prenanICStr;
@end
NS_ASSUME_NONNULL_END
