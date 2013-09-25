//
//  empinfo.h
//  sqldb
//
//  Created by Vandit Maheshwari on 9/25/13.
//  Copyright (c) 2013 Vandit Maheshwari. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface empinfo : NSObject
{
    NSString* empname;
    int empid;
    NSString* empdept;
}
@property(nonatomic,assign)NSString* empname;
@property(nonatomic,assign)int empid;
@property(nonatomic,assign)NSString* empdept;
-(id)init;
@end
