#import "phonebook.h"
#import "phonecard.h"
@implementation phonebook

-(void)setup
{
	phonelist = [[NSMutableArray alloc]init]; //setting up mutable array of phonecards
}	

-(void)addCard:(id)obj
{
   [phonelist addObject:obj]; //adding elements
   NSLog(@"Contact added\n");

}

-(void)showBook
{
	NSLog(@"Phonebook Entries:\n");
	for(phonecard *obj in phonelist)
	{
		[obj print];      //display all elements
	}
}


-(void)remCard:(id)obj
{
	if(phonelist!=nil)
	{
		[phonelist removeObject:obj]; //remove element
      NSLog(@"Contact Removed\n\n");
	}
	else
	{
		NSLog(@"Phonebook Empty!\n");    
	}
}

-(int)count
{
	int count = 0;
	for(phonecard *obj in phonelist)
	{
		count = count + 1;      //count of elements
	}
	return count;
}

-(void)searchByName:(NSString *)searchkey
{
	int flag = 0;
	for(phonecard *obj in phonelist)  //enhanced loop
	{
		if([obj.name caseInsensitiveCompare:searchkey] == NSOrderedSame)
		{
			NSLog(@"Phonecard for %@ found \n", searchkey);  
			[obj print];
         flag = 1;
		}
	}
	if(flag == 0)
	{
		NSLog(@"No contact by name %@ exists\n", searchkey);  
	}	
}

/*
-(id)init
{
	return self;
}

-(phonebook*)initWithObject
{
	self = [super init];
	if(self)
	{
	   phonelist = [[NSMutableArray alloc]init];    //constructor
	}
	return self;
}
*/



@end