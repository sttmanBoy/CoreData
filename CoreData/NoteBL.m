//
//  NoteBL.m
//  CoreData
//
//  Created by shitaotao on 16/1/18.
//  Copyright © 2016年 shitaotao. All rights reserved.
//

#import "NoteBL.h"

@implementation NoteBL
//插入Note方法
-(NSMutableArray *)createNote:(Note *)model
{
    NoteDAO *dao=[NoteDAO sharedManager];
    [dao create:model];
    
    return [dao findAll];
    
}

//删除note方法
-(NSMutableArray *)remove:(Note *)model
{
    NoteDAO *dao=[NoteDAO sharedManager];
    [dao remove:model];
    
    return [dao findAll];
}

//修改note方法
-(NSMutableArray *)modify:(Note *)model
{
    NoteDAO *dao=[NoteDAO sharedManager];
    [dao modify:model];
    
    return [dao findAll];
}


//查询所有数据方法
-(NSMutableArray *)findAll
{
    NoteDAO *dao=[NoteDAO sharedManager];
    return [dao findAll];
}
@end
