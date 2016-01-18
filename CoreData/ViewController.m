//
//  ViewController.m
//  CoreData
//
//  Created by shitaotao on 16/1/18.
//  Copyright © 2016年 shitaotao. All rights reserved.
//

#import "ViewController.h"
#import "Entity+CoreDataProperties.h"
#import "Note.h"
#import "NoteBL.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self test:nil];
//    [self create:nil];
//    [self modify:nil];
    NoteBL * notebl = [[NoteBL alloc]init];
    NSMutableArray * mutable = [notebl findAll];
    [mutable enumerateObjectsUsingBlock:^(Note * obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%@",obj.date);
        NSLog(@"%@",obj.content);
    }];
}
//找到数据库文件的路径。可以观察到自动生成的数据库文件
- (IBAction)test:(id)sender {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSLog(@"路径：%@",documentsDirectory);
}

- (IBAction)create:(id)sender {
    NoteBL *noteBl=[[NoteBL alloc] init];
    Note *note=[[Note alloc] init];
    note.date = [[NSDate alloc] init];
    note.content = @"hello world";
    
    NSMutableArray *dataList = [noteBl createNote:note];
    int length = dataList.count;
    for(int i=0;i<length;i++){
        Note *tmp = [dataList objectAtIndex:i];
        NSLog(@"------%d",i);
        NSLog(@"date:%@",tmp.date);
        NSLog(@"content:%@",tmp.content);
    }
}
        
- (IBAction)remove:(id)sender {
    NoteBL *noteBl=[[NoteBL alloc] init];
    NSMutableArray *dataList = [noteBl findAll];
    int length = dataList.count;
    NSLog(@"删之前：%d条记录",length);
    
    if(length<=0) return;
    
    Note *tmp = [dataList objectAtIndex:length-1];
    [noteBl remove:tmp];
    
    dataList = [noteBl findAll];
    length = dataList.count;
    NSLog(@"删之后：%d条记录",length);
    
}
        
- (IBAction)modify:(id)sender {
    
    NoteBL *noteBl=[[NoteBL alloc] init];
    NSMutableArray *dataList = [noteBl findAll];
    
    NSLog(@"修改之前：");
    Note *tmp = [dataList objectAtIndex:0];
    NSLog(@"date:%@",tmp.date);
    NSLog(@"content:%@",tmp.content);
    
    
    [tmp setContent:@"hhahahhahahhaha"];
    dataList = [noteBl modify:tmp];
    
    NSLog(@"修改之后：");
    tmp = [dataList objectAtIndex:0];
    NSLog(@"date:%@",tmp.date);
    NSLog(@"content:%@",tmp.content);
    
}
@end
