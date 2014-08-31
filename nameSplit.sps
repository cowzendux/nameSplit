* Function to split an SPSS filename into smaller parts
* so that it doesn't exceed the maximum line length
* It uses blocks of 60 characters so there's extra space 
* in case the command itself isn't starting at the first column

* The argument for the function should not contain quotes.
* The return of the function WILL contain single quotes

* Written by Jamie DeCoster

**********
* Version History
**********
* 2012-07-12 created
* 2014-08-14 Renamed function
    Added splitsize argument

set printback = off.
begin program python.

def nameSplit(splitstring, size = 60):
   curstring = splitstring
   finished = 0
   returnstring = "'"
   while (finished == 0):
      if (len(curstring) < size):
         returnstring = returnstring + curstring + "'"
         finished = 1
      else:
         returnstring = returnstring + curstring[:size] + "'+\n '"
         curstring = curstring[size:]
   return returnstring

end program python.
set printback = on.
