use strict     ;
use Test::More ;
use String::Rexx qw( centre 
                     errortext
		     d2c
		     d2h
		   );
 




######### Usefull Constants
BEGIN { plan tests =>  7  };


is     centre('a',3)  , ' a '                    ,   'centre'     ;
is     errortext(15)  , 'Block device required'  ,   'errortext'  ;    
is     d2c(65)        , 'A'                      ,   'd2c'        ;

is     d2h(65   )     , '41'                      ,   'd2h'        ;
is     d2h(65, 0)     , '41'                      ;   
is     d2h(65, 1)     , '41'                      ;   
is     d2h(65, 3)     , '041'                     ;   
