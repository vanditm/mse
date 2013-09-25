//
//  empinfo.m
//  sqldb
//
//  Created by Vandit Maheshwari on 9/25/13.
//  Copyright (c) 2013 Vandit Maheshwari. All rights reserved.
//

#import "empinfo.h"

@implementation empinfo

@synthesize empdept,empid,empname;

-(id)init
{
    if(self=[super init])
    {
        self.empname=empname;
        self.empid=empid;
        self.empdept=empdept;
    }
}
@end
