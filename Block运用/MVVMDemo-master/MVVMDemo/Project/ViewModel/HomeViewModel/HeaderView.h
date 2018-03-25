

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ViewModelClass.h"
//第一步：声明block
typedef void(^HeaderViewBlock)(NSString *shopId);

@interface HeaderView : UIView

//第二步：定义block属性
@property (nonatomic, copy) HeaderViewBlock block;


// headerView中的数据
- (void)headerViewWithData:(id)data;




@end
