use strict     ;
use Test::More ;
use String::Rexx qw(countstr);
 



BEGIN { plan tests =>   6 };


### Basic Usage
is   countstr( 'a' ,  'apple' )       ,  1      ;
is   countstr( 'p' ,  'apple' )       ,  2      ;
is   countstr( 'pp',  'apple' )       ,  1      ;
is   countstr( 'aa',  'aapaa' )       ,  2      ;

# Extra
is   countstr( 'p' ,  ''     )       ,  0      ;        
is   countstr( '' ,  'apple'     )       ,  0      ;        
