#import "taxcal.h"

@implementation bill
@synthesize amt,billtype;


-(double)vatCal
{
	double rate;
	double tax;
	rate = 0.08;
   tax = amt * rate;
	return tax;
}

- (double)kstCal
{
   double rate;
   double tax;
   rate = 0.14;
   tax = amt * rate;
	return tax;
}

- (double)cstCal
{
   double rate;
   double tax;
   rate = 0.04;
   tax = amt * rate; 
	return tax;
}

-(void)taxCalculator
{
   if(strcmp(billtype,"grocery") == 0)
   	taxval = [self vatCal];
   else if(strcmp(billtype,"fg")==0)
   {
      taxval = [self kstCal] + [self cstCal];
   }
}

-(void)print
{
   NSLog(@"Bill amount is %i & Tax amount is %lf",amt,taxval);
}


@end