use strict     ;
use Test::More ;
use String::Rexx qw(xrange);


BEGIN { plan tests =>  2  };


### Basic Usage
is   xrange( 'a' , 'c' )   =>  'abc'  ;


# Extra
is   xrange( 'a' , 'a' )   =>  'a'    ;
