use strict     ;
use Test::More ;
use String::Rexx qw( datatype );
 


BEGIN { plan tests =>  15  };


### Basic Usag e
is   datatype( '3'   )         ,  'NUM'   ; 
is   datatype( '33'  )         ,  'NUM'   ; 
is   datatype( 'aa'  )         ,  'LIT'   ; 
is   datatype( '33'  , 'NUM')  ,    1     ; 
is   datatype( '33'  , 'LIT')  ,    0     ; 
is   datatype( 'a'   , 'LIT')  ,    1     ; 
is   datatype( 'aa'  , 'LIT')  ,    1     ; 
is   datatype( 'aa'  , 'NUM')  ,    0     ; 


is   datatype( '0'   , 'NUM')  ,    1     ; 
is   datatype( '0.0' , 'NUM')  ,    1     ; 
is   datatype( '0.1' , 'NUM')  ,    1     ; 
is   datatype( '00'  , 'NUM')  ,    1     ; 
is   datatype( '0a'  , 'LIT')  ,    1     ; 
is   datatype( '0.a' , 'LIT')  ,    1     ; 

#### Extra
is   datatype( '33'  , 'xLT')  ,   undef  ; 
#is  datatype( ''          )   ,   'NUM'  ; 
#is  datatype( '33'  ,''   )   ,   'NUM'  ; 
