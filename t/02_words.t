use strict       ;
use Test::More   ;
use String::Rexx qw( words) ;




BEGIN { plan tests =>  2  };

### Common Usage
is  words('The Republic of Perl')    ,    4 ;



### OTher Tests
is  words('') , 0 ;

