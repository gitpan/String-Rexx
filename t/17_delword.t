use Test::More ;
use String::Rexx qw(delword);
 

BEGIN { plan tests =>  18  };



### Basic Usage

is   delword( 'a b c'   , 1, 1  )           =>   'b c'         ;  
is   delword( 'a b c'   , 2, 1  )           =>   'a c'         ;  
is   delword( 'a b  c'  , 2, 1  )           =>   'a c'         ;  
is   delword( 'a  b  c' , 2, 1  )           =>   'a  c'        ;  
is   delword( 'a b c'   , 2, 2  )           =>   'a '          ; 
is   delword( 'a b c'   , 3, 1  )           =>   'a b '        ; 
is   delword( 'a b c'   , 3, 9  )           =>   'a b '        ; 
is   delword( 'a b  c'  , 3, 1  )           =>   'a b  '       ; 
is   delword( 'a b  c'  , 1, 3  )           =>   ''            ; 

is   delword( 'one two three' , 1, 1  )     =>  'two three'    ;  
is   delword( 'one two three' , 1, 2  )     =>  'three'        ;  
is   delword( 'one two three' , 2, 1  )     =>  'one three'    ;  

is   delword( 'a b c' , 1  )                =>  ''             ;  
is   delword( 'a b c' , 2  )                =>  'a '           ;  
is   delword( 'a b c' , 5  )                =>  'a b c'        ;  


### Extra

is   delword( 'a b c'  , 1, 0  )            =>  'a b c'        ;  
is   delword( ''       , 1, 0  )            =>  ''             ;  
is   delword( 'a *?? b', 2, 1  )            =>  'a b'          ;  
