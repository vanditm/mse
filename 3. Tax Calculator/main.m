#import<Foundation/Foundation.h>
#import "taxcal.h"

int main(int argc,const char *argv[])
{
	char buffer[100] = {0};
	int amount;
	
	bill *b = [[bill alloc]init];
	
	NSLog(@"Enter Bill type and Amount\n");
	scanf("%s",buffer);     //Accept input
	scanf("%d",&amount);
	
	[b setAmt:amount];
	[b setBilltype:(NSString *)buffer];    //setting values
	[b taxCalculator];      //Perform Calculations
   [b print];
  	
	[b release];
	
	return 0;
}