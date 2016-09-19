//
//  ViewController.m
//  ToDoListApp
//
//  Created by Bernard Desert on 09/12/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import "ToDoListViewController.h"
#import "ToDoListGenerator.h"

@interface ToDoListViewController () <
 UITableViewDelegate, UITableViewDataSource>

@property (nonatomic,strong) UILabel *tasksToCompleteLabel;
@property (nonatomic,strong) UITextField *tasksToCompleteText;
@property (nonatomic,strong) NSArray *toDos;
@property (nonatomic,strong) UITableView *tableView;

@end

@implementation ToDoListViewController


#pragma ViewLifeCycle

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

    
    self.title = @"To Dos";
    self.tableView = [UITableView new];
    self.tableView.frame = CGRectMake(20, 100, self.view.bounds.size.width - 40,
                                            60);
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:@"cell"];
    [self.view addSubview:self.tableView];
    self.toDos = [ToDoListGenerator fakeToDos];
    
}

#pragma UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section { return self.toDos.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [UITableViewCell new];
}

#pragma UITableViewDelegate

/*

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return self.inventoryCollections[section].name;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    InventoryCollection *collection = self.inventoryCollections[indexPath.section];
    InventoryItem *item = collection.inventoryItems[indexPath.row];
    
    InventoryItemViewController *viewController = [[InventoryItemViewController alloc] initWithInventoryItem:item];
    [self.navigationController pushViewController:viewController animated:YES];
}

*/


#pragma Actions 

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
