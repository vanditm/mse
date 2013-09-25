//
//  datopr.h
//  sqldb
//
//  Created by Vandit Maheshwari on 9/25/13.
//  Copyright (c) 2013 Vandit Maheshwari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface datopr : UIView
{
    NSString* empname;
    int empid;
    NSString* empdept;
}
+(datopr*) database;
-(void) insertDB;
-(void) deleteDB;
-(void) updateDB;
-(void)selectDB;
@end
