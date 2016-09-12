//
//  ViewController.m
//  ToDoListApp
//
//  Created by Bernard Desert on 09/12/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import "ToDoListViewController.h"

@interface ToDoListViewController ()

@property (nonatomic,strong) UILabel *tasksToCompleteLabel;
@property (nonatomic,strong) UITextField *tasksToCompleteText;
@property (nonatomic,strong) UILabel *tasksListedtoCompleteLabel;




@end

@implementation ToDoListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"To Do List";
    self.view.backgroundColor = [UIColor whiteColor];
    self.tasksToCompleteLabel = [UILabel new];
    self.tasksToCompleteLabel.text = @"AddToDos";
 //   self.tasksToCompleteLabel.frame = CGRectMake(CGFloat x, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
    self.tasksToCompleteText.keyboardType = UIKeyboardTypeAlphabet; 
    
    self.tasksToCompleteText = [UITextField new];

}


#pragma Actions 

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
