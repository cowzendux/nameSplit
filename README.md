#nameSplit

SPSS Python Extension function that breaks a long filename across multiple lines

The function returns a split version of the filename inside of a set of quotes. It uses the SPSS convention of putting plus symbols at the end of each line to indicate that the filename continues on the next line.

This and other SPSS Python Extension functions can be found at http://www.stat-help.com/python.html

##Usage
**nameSplit(splitstring, size)**
* "splitstring" is a string representing the filename to be split. This argument should not contain quotes.
* "size" is a number representing how many characters you want the split version of the string to have on each line. This defaults to 60, so there's extra space in case the command itself isn't starting at the first column. 

##Example
**filename = "C:/Users/jd4nb/Dropbox/02 Jessica/MTP-Goal 3 Child Outcomes SRCD/Data/1 Start/JW SRCD MTP-MS Teacher Analysis.sav"  
filename2 = nameSplit(filename, 50)  
print filename2**
* This produces the following output.

**'C:/Users/jd4nb/Dropbox/02 Jessica/MTP-Goal 3 Child'+  
 ' Outcomes SRCD/Data/1 Start/JW SRCD MTP-MS Teacher'+  
 ' Analysis.sav'**
