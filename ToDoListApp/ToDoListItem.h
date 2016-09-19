//
//  ToDoListCollectionSample.h
//  ToDoListApp
//
//  Created by Bernard Desert on 09/12/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoListItem : NSObject

@property (nonatomic,copy) NSString *text;
@property (nonatomic) NSUInteger toDoId; // integers to identify each TO DO item
@property (nonatomic,strong) NSDate *dateToComplete;
@property (nonatomic) BOOL isComplete;  // primitive type no * , assign automatic

@end
