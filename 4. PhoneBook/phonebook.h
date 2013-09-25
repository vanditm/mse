#import<Foundation/Foundation.h>

@interface phonebook: NSObject
{
	NSMutableArray *phonelist;
}

-(void)setup;

-(void)showBook;
-(void)addCard:(id)obj;
-(void)remCard:(id)obj;

-(int)count;
-(void)searchByName:(NSString *)searchkey;

//-(id)init;
//-(phonebook*)initWithObject;


@end	