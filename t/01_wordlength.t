use strict      ;
use Test::More  ;
use String::Rexx qw( wordlength ) ;


BEGIN { plan tests =>  7  };

### Common Usage
is  wordlength('The Republic of Perl', 1)    ,    3 ;
is  wordlength('The Republic of Perl', 2)    ,    8 ;
is  wordlength('The Republic of Perl', 3)    ,    2 ;
is  wordlength('The Republic of Perl', 4)    ,    4 ;
is  wordlength('The Republic of Perl', 5)    ,    0 ;


### OTher Tests
is  wordlength('', 1) , 0 ;
is  wordlength('', 2) , 0 ;

