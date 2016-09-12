//
//  ToDoListCollectionSample.h
//  ToDoListApp
//
//  Created by Bernard Desert on 09/12/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoListItems : NSObject

@property (nonatomic,strong) NSString *toDo;
@property (nonatomic,strong) NSDate *dateToDoBy;
@property (nonatomic,strong) BOOL *isComplete;

@end
