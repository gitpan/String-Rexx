use Test::More ;
use String::Rexx qw(strip) ;


BEGIN { plan tests =>  14  };


### Basic Functionality

is  strip(   The     => 'leading'        )  , 'The'   ,  'leading' ;
is  strip( ' The'    => 'LEADING'        )  , 'The'   ;
is  strip( ' The'    => 'leading '       )  , 'The'   ; 
is  strip( '_The'    =>  leading => '_'  )  , 'The'   ; 

is  strip(  The      => 'trailing'       )  ,  'The'  ,  'trailing';
is  strip( 'The '    => 'TRAILING'       )  ,  'The'  ; 
is  strip( 'The '    => 'Trailing'       )  ,  'The'  ; 
is  strip(  The_     =>  Trailing => '_' )  ,  'The'  ; 

is  strip(  The      => 'both'           )  ,  'The'  ,  'both' ; 
is  strip( ' The '   => 'BOTH '          )  ,  'The'  ;
is  strip(  _The_    => 'BOTH ' , '_'    )  ,  'The'  ;
is  strip(  __The__  => 'BOTH ' , '_'    )  ,  'The'  ;


### Extra

SKIP: {
	eval {  require Test::Exception ; Test::Exception::->import } ;
        skip 'Test::Exception not available',  2   if $@ ;

        dies_ok(   sub { strip(apple => '   leading'     )}    );
        dies_ok(   sub { strip(apple => 'wrong_direction')}    );
}
