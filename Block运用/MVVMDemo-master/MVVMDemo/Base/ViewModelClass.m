

#import "ViewModelClass.h"
#import "RTNetworking.h"

@implementation ViewModelClass


#pragma 接收传过来的block

//  第四步： 貌似看的下面的方法想属性的Setter，哪有两个Block对象两连在一起的Set 方法？
//    神奇的地方在于：_returnBlock = returnBlock; _errorBlock = errorBlock;
//  程序执行：   当在调用self.returnBlock(arr);的时候，下一步就会调用setBlockWithReturnBlock：WithErrorBlock:方法；

-(void) setBlockWithReturnBlock: (ReturnValueBlock) returnBlock
                 WithErrorBlock: (ErrorCodeBlock) errorBlock
{
    _returnBlock = returnBlock;  //Block的精华所在
    _errorBlock = errorBlock;
}


@end
