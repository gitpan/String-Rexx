use Test::More ;
use String::Rexx qw(subword);
 
BEGIN { plan tests =>  16  };



### Common Usage
is  subword('The Republic of Perl', 1, 0)    =>   ''                     ;
is  subword('The Republic of Perl', 1, 1)    =>   'The'                  ;
is  subword('The Republic of Perl', 1, 2)    =>   'The Republic'         ;
is  subword('The Republic of Perl', 1, 3)    =>   'The Republic of'      ;
is  subword('The Republic of Perl', 1, 4)    =>   'The Republic of Perl' ;
is  subword('The Republic of Perl', 1, 5)    =>   'The Republic of Perl' ;
is  subword('The Republic of Perl', 1, 6)    =>   'The Republic of Perl' ;

is  subword('The Republic of Perl', 2, 1)    =>   'Republic'             ;
is  subword('The Republic of Perl', 2, 2)    =>   'Republic of'          ;
is  subword('The Republic of Perl', 2, 3)    =>   'Republic of Perl'     ;
is  subword('The Republic of Perl', 2, 4)    =>   'Republic of Perl'     ;

is  subword('The Republic of Perl', 4)       =>   'Perl'                 ; 
is  subword('The Republic of Perl', 3)       =>   'of Perl'              ; 
is  subword('The Republic of Perl', 2)       =>   'Republic of Perl'     ; 
is  subword('The Republic of Perl', 1)       =>   'The Republic of Perl' ; 


### OTher Tests
is  subword('The   Republic of Perl', 1, 2)  =>   'The   Republic'       ; 

