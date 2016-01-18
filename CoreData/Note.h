//
//  Note.h
//  CoreData
//
//  Created by shitaotao on 16/1/18.
//  Copyright © 2016年 shitaotao. All rights reserved.
//  数据库中的数据类型和名称

#import <Foundation/Foundation.h>

@interface Note : NSObject
@property (nonatomic,strong) NSDate *date;
@property (nonatomic,strong) NSString *content;
@end
