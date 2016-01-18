//
//  CoreDataDAO.h
//  CoreData
//
//  Created by shitaotao on 16/1/18.
//  Copyright © 2016年 shitaotao. All rights reserved.
//  数据库管理者

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
@interface CoreDataDAO : NSObject
//被管理的对象上下文
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
//被管理的对象模型
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
//持久化存储协调者
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (NSURL *)applicationDocumentsDirectory;
@end
