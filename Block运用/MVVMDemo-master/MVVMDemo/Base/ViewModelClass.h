

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//定义返回请求数据的block类型

// 第一步：声明Block
typedef void (^ReturnValueBlock) (id returnValue);
typedef void (^ErrorCodeBlock) (id errorCode);

@interface ViewModelClass : NSObject

// 第二步：变成属性
@property (strong, nonatomic) ReturnValueBlock returnBlock;
@property (strong, nonatomic) ErrorCodeBlock errorBlock;



@property (nonatomic, copy)NSString *name;

// 第三步：写Block的方法 
-(void) setBlockWithReturnBlock: (ReturnValueBlock) returnBlock
                 WithErrorBlock: (ErrorCodeBlock) errorBlock;




@end
