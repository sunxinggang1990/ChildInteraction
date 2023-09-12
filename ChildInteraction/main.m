// __DEBUG__
//: 
//: 
//: int main(int argc, char * argv[]) {

// __M_A_C_R_O__
#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    //: NSString * appDelegateClassName;
    NSString * appDelegateClassName;
    //: @autoreleasepool {
    @autoreleasepool {
        //: appDelegateClassName = NSStringFromClass([AppDelegate class]);
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    //: return UIApplicationMain(argc, argv, nil, appDelegateClassName);
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
