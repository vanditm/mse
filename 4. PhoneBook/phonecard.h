#import<Foundation/Foundation.h>

@interface phonecard: NSObject
{
	NSString* name;      //Phonecard class
   int phoneno;
   NSString* mailid;    
}

@property int phoneno;
@property (retain) NSString *name;
@property (retain) NSString *mailid;

-(void)print;

@end