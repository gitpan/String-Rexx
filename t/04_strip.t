use strict     ;
use Test::More ;
use String::Rexx qw(strip) ;
 


BEGIN { plan tests =>  12  };


### Basic Functionality

is  strip( 'The'     , 'leading'       )  , 'The'   ,  'leading' ;
is  strip( ' The'    , 'LEADING'       )  , 'The'   ;
is  strip( ' The'    , 'Leading '      )  , 'The'   ; 
is  strip( '_The'    , 'leading', '_'  )  , 'The'   ; 

is  strip( 'The'     , 'trailing'      )  ,  'The'  ,  'trailing';
is  strip( 'The '    , 'TRAILING'      )  ,  'The'  ; 
is  strip( 'The '    , 'Trailing'      )  ,  'The'  ; 
is  strip( 'The_'    , 'Trailing', '_' )  ,  'The'  ; 

is  strip( 'The'     , 'both'          )  ,  'The'  ,  'both' ; 
is  strip( ' The '   , 'BOTH '         )  ,  'The'  ;
is  strip( '_The_'   , 'BOTH ' , '_'   )  ,  'The'  ;
is  strip( '__The__' , 'BOTH ' , '_'   )  ,  'The'  ;



