//
//  ViewController.m
//  TestDocument
//
//  Created by Mr.KF Mac Pro on 2018/3/1.
//  Copyright © 2018年 Mr.KF Mac Pro. All rights reserved.
//

#import "MainViewController.h"
#import "Animal.h"
#import "Dog.h"
#import "Cat.h"
#import "PrefixHeader.pch"
#import "LRMacroDefinitionHeader.h"
#import "UIView+Toast.h"
@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    int secondsCountDown;
    UILabel *_lable;
    NSTimer *timer;
    UITableView *table;
}
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"..............");
//    [self.view makeToast:@"This is a piece of toast."];

    timer =[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(AddAction) userInfo:nil repeats:YES];
    secondsCountDown=120;
    table=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    table.delegate=self;
    table.dataSource=self;
    [self.view addSubview:table];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 100;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier=@"identifier";
    
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    
    if (cell == nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
      _lable=[[UILabel alloc]initWithFrame:cell.frame];
    }
    
    _lable.text=[NSString  stringWithFormat:@"%d", secondsCountDown];
    
    [cell.contentView addSubview: _lable];
    return cell;
}

-(void)AddAction
{
    secondsCountDown--;
    _lable.text=[NSString  stringWithFormat:@"%d", 5];
    [table reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
