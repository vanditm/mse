//
//  datopr.m
//  sqldb
//
//  Created by Vandit Maheshwari on 9/25/13.
//  Copyright (c) 2013 Vandit Maheshwari. All rights reserved.
//

#import "datopr.h"
#import "sqlite3.h"
@implementation datopr

- (id)initWithFrame:(CGRect)frame
{
    
    NSString *sqliteDB=[[NSBundle mainBundle]pathForResource:@"person" ofType:@"sqlite3"];
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        // database nil check code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
-(void)insertDB
{
    static datopr *database;
    NSString *query=@"insert into employee values('vandit',48,'ise');";
    sqlite3_stmt *statement;
    if(sqlite3_prepare_v2(database,[query UTF8String], -1, &statement, nil,SQLITE_OK))
    {
        if(sqlite3_step(statement)==SQLITE_DONE)
        {
            NSLog(@"inserted");
        }
        sqlite3_finalize(statement);
    }
}

-(void)selectDB
{
    static datopr *database;
    NSString *query=@"select * from employee;";
    sqlite3_stmt *statement;
    if(sqlite3_prepare_v2(database,[query UTF8String], -1, &statement, nil,SQLITE_OK))
    {
        while(sqlite3_step(statement)==SQLITE_DONE)
        {
            int uniqueId=sqlite3_column_int(statement, 1);
            char *namechars=(char*)sqlite3_column_text(statement, 0);
            char *deptchars=(char*)sqlite3_column_text(statement, 2);
            NSString *empname=[[NSString alloc]initWithUTF8String:namechars];
            NSString *empdept=[[NSString alloc]initWithUTF8String:deptchars];
            empinfo *info=[[empinfo alloc]initWithUniqueId:uniqueId empname:empname empdept:empdept];
            [returnArray addObject:info];
        }
        sqlite3_finalize(statement);
    }
    return returnArray;
    sqlite3_close(database);
}
@end
