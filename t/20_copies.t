use strict     ;
use Test::More ;
use String::Rexx qw(copies);
 


BEGIN { plan tests =>  5  };


### Basic Usage
is   copies( 'a',  1 )       ,  'a'         ;
is   copies( 'a',  2 )       ,  'aa'        ;
is   copies( 'a',  3 )       ,  'aaa'       ;
is   copies( 'a',  0 )       ,  ''          ;
is   copies( '' ,  0 )       ,  ''          ;
