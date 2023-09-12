// __DEBUG__
//: 
//: 
//: typedef void(^TapBlock)(void); 

// __M_A_C_R_O__
#import "UIView+TapBlock.h"
#import <objc/runtime.h>

typedef void(^TapBlock)(void);
//: @interface UIView ()
@interface UIView ()
//: @property (nonatomic,copy) TapBlock TapBlock; 
@property (nonatomic,copy) TapBlock TapBlock;
//: @end
@end
//: @implementation UIView (TapBlock)
@implementation UIView (TapBlock)
//: static void *KUIViewTap = &KUIViewTap;
static void *KUIViewTap = &KUIViewTap;
//: - (void)setTapBlock:(TapBlock)TapBlock{
- (void)setTapBlock:(TapBlock)TapBlock{
    //: objc_setAssociatedObject(self, &KUIViewTap, TapBlock, OBJC_ASSOCIATION_COPY);
    objc_setAssociatedObject(self, &KUIViewTap, TapBlock, OBJC_ASSOCIATION_COPY);
}
//: -(TapBlock)TapBlock{
-(TapBlock)TapBlock{
   //: return  objc_getAssociatedObject(self, &KUIViewTap);
   return objc_getAssociatedObject(self, &KUIViewTap);
}
//: - (void)set_Tapped:(void(^)(void))tappBlock{
- (void)set_Tapped:(void(^)(void))tappBlock{
    //: self.TapBlock = tappBlock;
    self.TapBlock = tappBlock;
    //: UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped)];
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped)];
    //: [self addGestureRecognizer:tapGesture];
    [self addGestureRecognizer:tapGesture];
}
//: - (void)viewTapped {
- (void)viewTapped {
    //: self.TapBlock?self.TapBlock():nil;
    self.TapBlock?self.TapBlock():nil;
}
//: @end
@end
