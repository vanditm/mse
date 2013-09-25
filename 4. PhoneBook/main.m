#import<Foundation/Foundation.h>
#import "phonecard.h"
#import "phonebook.h"

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *mempool = [[NSAutoreleasePool alloc]init];
   
   phonecard *pc1 = [[phonecard alloc] init];
	phonecard *pc2 = [[phonecard alloc] init];
	phonecard *pc3 = [[phonecard alloc] init];
   phonecard *pc4 = [[phonecard alloc] init];   //phonecards created


	phonebook *pb = [[phonebook alloc]init];
	
   [pb setup];

	[pc1 setName:@"John Appleseed"];
	[pc1 setMailid:@"john@apple.com"];
	[pc1 setPhoneno:91113454];

	[pc2 setName:@"Ben Davies"];
	[pc2 setMailid:@"ben@random.org"];
	[pc2 setPhoneno:11323363];

	[pc3 setName:@"Timothy Cook"];
	[pc3 setMailid:@"tim@apple.com"];
	[pc3 setPhoneno:43236315];
   
   [pc4 setName:@"Steve Balmer"];
	[pc4 setMailid:@"balmer@windows.com"];
	[pc4 setPhoneno:33362163];


	[pb addCard:pc1];
	[pb addCard:pc2];
	[pb addCard:pc3];
   [pb addCard:pc4];
   [pb showBook];       //display phonebook

   [pb remCard:pc3];

	[pb showBook];
   
   [pb searchByName:@"Timothy Dalton"]; 
   [pb searchByName:@"John Appleseed"];     //search for contact

	NSLog(@"Number of Entries: %d\n", [pb count]);

	[mempool release];

	return 0;
}