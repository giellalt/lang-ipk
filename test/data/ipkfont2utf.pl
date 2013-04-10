#!/usr/bin/perl -w
use utf8;

while (<>) 
{
# convert the Iñupiaq "font" to utf8
s/B/Ġ/g ; 
s/b/ġ/g ; 
s/X/Ḷ/g ; 
s/x/ḷ/g ; 
s/O/Ľ/g ; 
s/o/ľ/g ;
s/J/Ł/g ;  
s/j/ł/g ; 
s/F/Ŋ/g ; 
s/f/ŋ/g ; 
s/E/Ñ/g ;
s/e/ñ/g ;

print ;
}
