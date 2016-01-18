//
//  NoteBL.h
//  CoreData
//
//  Created by shitaotao on 16/1/18.
//  Copyright © 2016年 shitaotao. All rights reserved.
//  工具类，用来操作数据库的

#import <Foundation/Foundation.h>
#import "Note.h"
#import "NoteDAO.h"
@interface NoteBL : NSObject
//插入Note方法
-(NSMutableArray *)createNote:(Note *)model;

//删除note方法
-(NSMutableArray *)remove:(Note *)model;

//查询所有数据方法
-(NSMutableArray *)findAll;

//修改note方法
-(NSMutableArray *)modify:(Note *)model;
@end
