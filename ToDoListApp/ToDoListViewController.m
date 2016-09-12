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
    
    self.title = @"Add To Do List";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.tasksToCompleteLabel = [UILabel new];
    self.tasksToCompleteLabel.text = @"AddToDos";
    self.tasksToCompleteLabel.frame = CGRectMake(20, 40, self.view.bounds.size.width - 40,
                                                 60);
    [self.view addSubview:self.tasksToCompleteLabel];
    
    self.tasksToCompleteText.keyboardType = UIKeyboardTypeAlphabet; 
    self.tasksToCompleteText = [UITextField new];
    self.tasksToCompleteText.frame = CGRectMake(20, 60, self.view.bounds.size.width - 40,
                                                60);
    [self.view addSubview:self.tasksToCompleteText];
    
    self.tasksListedtoCompleteLabel = [UILabel new];
    self.tasksListedtoCompleteLabel.text = @"ToDos";
    self.tasksListedtoCompleteLabel.frame = CGRectMake(20, 100, self.view.bounds.size.width - 40,
                                                       60);
    [self.view addSubview:self.tasksListedtoCompleteLabel];
    
    // need to add in how To Do List Items will show

}


#pragma Actions 

// add in textfield change action 

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
