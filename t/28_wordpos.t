use strict     ;
use Test::More ;
use String::Rexx qw( wordpos );


BEGIN { plan tests =>  8  };


### Basic Usage
is    wordpos( 'r'  ,   ' the perl republic')      =>    6     ;
is    wordpos( 'p'  ,   ' the perl republic')      =>    6     ;
is    wordpos( 't'  ,   ' the perl republic')      =>    2     ;
is    wordpos( 'u'  ,   ' the perl republic')      =>   11     ;
is    wordpos( 'c'  ,   ' the perl republic')      =>   11     ;
is    wordpos( 'e'  ,   ' the perl republic')      =>    2     ;
is    wordpos( 'ic' ,   ' the perl republic')      =>   11     ;


### Extra

is    wordpos( 'B' ,    ' the perl republic')      =>    0     ;
#is   wordpos( ''  ,    ' the perl republic')      =>    1     ;
#is   wordpos( 'r' ,    ' @!r perl republic')      =>    2     ;
