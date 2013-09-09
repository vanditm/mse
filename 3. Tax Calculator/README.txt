README

LAB 3

Objective C program to calculate tax based upon the type of goods purchased. The type and the bill amount are accepted from the user.
Protocols are used for different types of tax calculations.

Execution :
Compile all the files. At the prompt enter bill type and amount.

Bill type options:
	1. "grocery" - only VAT is calculated.
	2. "fg" for furnished goods - CST and KST are calculated.

Note:
	1.During compilation, warnings are issued for "strcmp" statement usage. Please ignore. Using "isEqualToString" or "caseInsensitiveCompare" causes the program to crash.

	2.Using "id" as datatype for members cannot be done with @property. Will investigate and update.