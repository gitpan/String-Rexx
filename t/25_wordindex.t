use strict     ;
use Test::More ;
use String::Rexx qw(wordindex);
 
BEGIN { plan tests =>  4  };



### Basic Usage
is   wordindex( 'one two three' ,  1  )   =>   1  ;
is   wordindex( 'one two three' ,  2  )   =>   5  ;
is   wordindex( ' one two three',  2  )   =>   6  ;


# Extra
is   wordindex( '?f* two three' ,  2  )   =>   5  ;
