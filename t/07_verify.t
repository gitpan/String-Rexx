use strict     ;
use Test::More ;
use String::Rexx qw(verify);
 


BEGIN { plan tests =>  19  };


### Basic Usage
is   verify( perl  =>   'lper' )                    =>   0   ,   'match'  ;
is   verify( peLrl =>   'lper' )                    =>   3   ;
is   verify( perlL =>   'lper' )                    =>   5   ; 


is   verify( _ab   =>   'ba_'  )                    =>   0   ; 
is   verify( _ab   =>   'ba_'  )                    =>   0   ; 
is   verify( aaa   =>   'a'    )                    =>   0   ; 
is   verify( aaa   =>   'a'    )                    =>   0   ; 
is   verify( apple =>   'aple' )                    =>   0   ; 


is   verify( perl  =>   'lper' , 'n'      )         =>   1   ,   'not match' ;
is   verify( peLrl =>   'dsju' , 'm'      )         =>   1   ;
is   verify( perlL =>   'john' , 'N'      )         =>   0   ; 

is   verify( Lperl =>   'lper' , 'M' , 1  )         =>   1   ,    'start'    ;  
is   verify( Lperl =>   'lper' , 'M' , 2  )         =>   0   ; 
is   verify( LPerl =>   'lper' , 'M' , 2  )         =>   2   ; 
is   verify( LPerl =>   'lper' , 'M' , 3  )         =>   0   ; 
is   verify( LP    =>   'lper' , 'M' , 4  )         =>   0   ; 

## Extra
is   verify( perl  =>   'lper' , 'M' , 1  )         =>   0   ; 
is   verify( perl  =>   ''     , 'M' , 1  )         =>   1   ; 
is   verify( ''    =>   'lper' , 'M' , 1  )         =>   0   ; 

