#import "phonecard.h"
@implementation phonecard
@synthesize name, mailid, phoneno;

-(void)print
{
	NSLog(@"\nName: %@\nMail ID: %@\nPhone No: %d\n\n",name,mailid,phoneno);
}

@end