use strict     ;
use Test::More ;
use String::Rexx qw(changestr);
 



BEGIN { plan tests =>  3  };


### Basic Usage
is   changestr( 'p', 'apple', 'P' )     ,   'aPPle'   ; 


# Extra
is   changestr( 'p', '', 'P' )         ,   ''      ; 
is   changestr( 'p', 'apple', '' )     ,   'ale'   ; 
