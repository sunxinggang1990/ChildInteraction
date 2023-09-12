#import "UIView+TapBlock.h"
#import <objc/runtime.h>
typedef void(^TapBlock)(void); 
@interface UIView ()
@property (nonatomic,copy) TapBlock TapBlock; 
@end
@implementation UIView (TapBlock)
static void *KUIViewTap = &KUIViewTap;
- (void)setTapBlock:(TapBlock)TapBlock{
    objc_setAssociatedObject(self, &KUIViewTap, TapBlock, OBJC_ASSOCIATION_COPY);
}
-(TapBlock)TapBlock{
   return  objc_getAssociatedObject(self, &KUIViewTap);
}
- (void)set_Tapped:(void(^)(void))tappBlock{
    self.TapBlock = tappBlock;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped)];
    [self addGestureRecognizer:tapGesture];
}
- (void)viewTapped {
    self.TapBlock?self.TapBlock():nil;
}
@end
