//
//  NoteDAO.h
//  CoreData
//
//  Created by shitaotao on 16/1/18.
//  Copyright © 2016年 shitaotao. All rights reserved.
//  具体进行数据库的操作，是一个数据库操作的单利

#import "CoreDataDAO.h"
#import "Note.h"
#import "NoteManagedObject.h"
@interface NoteDAO : CoreDataDAO
+ (NoteDAO*)sharedManager;

//插入Note方法
-(int) create:(Note*)model;

//删除Note方法
-(int) remove:(Note*)model;

//修改Note方法
-(int) modify:(Note*)model;

//查询所有数据方法
-(NSMutableArray*) findAll;

//按照主键查询数据方法
-(Note*) findById:(Note*)model;
@end
