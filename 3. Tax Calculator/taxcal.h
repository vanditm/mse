#import<Foundation/Foundation.h>
#import "vat.h"
#import "kst.h"
#import "cst.h"

@interface bill: NSObject <vat,kst,cst>
{
   NSString* billtype;
	int amt;
   double taxval;
}

@property int amt;
@property (assign) NSString* billtype;

-(void)taxCalculator;
-(void)print;

@end