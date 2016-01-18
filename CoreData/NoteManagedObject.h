//
//  NoteManagedObject.h
//  CoreData
//
//  Created by shitaotao on 16/1/18.
//  Copyright © 2016年 shitaotao. All rights reserved.
//  表单

#import <CoreData/CoreData.h>

@interface NoteManagedObject : NSManagedObject
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSString * content;
@end
