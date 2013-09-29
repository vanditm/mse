//
//  ViewController.m
//  sampleSQL
//
//  Created by MSE on 26/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import "ViewController.h"
#import "sqlite3.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)insert:(id)sender {
    sqlite3 *database = nil;
    sqlite3_stmt *stmt = nil;
    NSString *query = @"insert into person values ('a2', 'def');";
    NSString *db = [[NSBundle mainBundle] pathForResource:@"person" ofType:@"sqlite"];
    if(sqlite3_open([db UTF8String], &database)!=SQLITE_OK)
        
    {
        NSLog(@"Failed to open");
    
    }
    else
    {
        sqlite3_prepare_v2(database, [query UTF8String], -1, &stmt, nil);
        if(sqlite3_step(stmt)==SQLITE_DONE)
        {
            NSLog(@"Inserted");
        }
        else
        {
            NSLog(@"Failed to insert");
        }   
    }
    sqlite3_finalize(stmt);
}

- (IBAction)delete:(id)sender {
    sqlite3 *database = nil;
    sqlite3_stmt *stmt = nil;
    NSString *query = @"delete from person where id = 'a2';";
    NSString *db = [[NSBundle mainBundle] pathForResource:@"person" ofType:@"sqlite"];
    if(sqlite3_open([db UTF8String], &database)!=SQLITE_OK)
        
    {
        NSLog(@"Failed to open");
        
    }
    else
    {
        sqlite3_prepare_v2(database, [query UTF8String], -1, &stmt, nil);
        if(sqlite3_step(stmt)==SQLITE_DONE)
        {
            NSLog(@"Deleted");
        }
        else
        {
            NSLog(@"Failed to delete");
        }
    }
    sqlite3_finalize(stmt);

}
- (IBAction)update:(id)sender {
    NSString *query = @"SELECT * FROM person";
    sqlite3 *database = nil;
    sqlite3_stmt *stmt = nil;
    NSString *db = [[NSBundle mainBundle] pathForResource:@"person" ofType:@"sqlite"];
    sqlite3_open([db UTF8String], &database);
    if(sqlite3_prepare_v2(database, [query UTF8String], -1, &stmt, nil)== SQLITE_OK){
        while(sqlite3_step(stmt)==SQLITE_ROW){
            char *uniqueId = (char*)sqlite3_column_text(stmt, 0);
            char *nameChars = (char *)sqlite3_column_text(stmt, 1);
            NSString *name = [[NSString alloc]initWithUTF8String:nameChars];
            NSString *uid = [[NSString alloc]initWithUTF8String:uniqueId];
            
            NSLog(@"%@, %@", uid, name);
        }
        sqlite3_finalize(stmt);
    }
    sqlite3_close(database);

    
}
@end
