#import<Foundation/Foundation.h>

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *mempool = [[NSAutoreleasePool alloc] init];
   
	NSDictionary *unitDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
	             				[NSNumber numberWithInt:10], @"Centimeter",
             					[NSNumber numberWithInt:40], @"Pound",
             					[NSNumber numberWithInt:50], @"Ounce",
            	 				[NSNumber numberWithInt:20], @"Kilogram",
									[NSNumber numberWithInt:30], @"Yard", 
									[NSNumber numberWithInt:10], @"Millimeter",
									[NSNumber numberWithInt:10], @"Kilometer", 
									[NSNumber numberWithInt:20], @"Milligram", 
									[NSNumber numberWithInt:20], @"Gram", 
									[NSNumber numberWithInt:10], @"Meter", nil]; //dictionary definition

	NSLog(@"Items in dictionary containing \"meter\":\n");
   
	for(NSString* unitKey in unitDictionary)  //enhanced for loop
	{
		if ([unitKey rangeOfString:@"meter"].location != NSNotFound)
		{
			NSLog(@"Unit: %@, Value: %@\n", unitKey, [unitDictionary objectForKey:unitKey]);
		}
	}
   
	[mempool release];
	return 0;
}