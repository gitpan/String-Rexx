use strict     ;
use Test::More ;
use String::Rexx qw(word);
 


BEGIN { plan tests =>  6  };

### Usefull Variables
my $str  = 'The Republic of Perl' ;


### Basic Usage
is   word( $str, 1 )          ,   'The'          ;
is   word( $str, 2 )          ,   'Republic'     ;
is   word( $str, 3 )          ,   'of'           ;
is   word( $str, 4 )          ,   'Perl'         ;


## Extra
is   word( '', 4 )            ,   ''             ;
is   word( $str, 6 )          ,   ''             ;
