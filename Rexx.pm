package String::Rexx;

use 5.006;
use strict;
use warnings;
use Carp;
use Params::Validate ':all' ;

require Exporter;
use AutoLoader qw(AUTOLOAD);

our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(
                      centre     center     changestr    compare    copies     countstr 
		      delstr     delword    datatype     d2c        d2h
		      errortext  insert     lastpos      left       Length     overlay    
		      Pos        right      Reverse      Abbrev
		      space      Substr     strip        subword    translate  verify 
		      word       wordindex  wordlength   wordpos    words      xrange   
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our $VERSION = '0.02';


1;
__END__

=head1 NAME

String::Rexx - Perl extension for blah blah blah

=head1 SYNOPSIS

  use String::Rexx qw( :all );

  use String::Rexx qw( functions... );


=head1 DESCRIPTION

This module implements almost all string functions
of regina2-rexx . The fuctions not yet implemented are
related to hexsting, binstring, and decimal conversions.


=over

=item Abbrev( 'long', 'short' [, len] )

 Return 1 if string $short is a shortcut for string $long. And optionally, $len
 must not be greater than what the number of charecters matched with string $shoft. 
 Otherwise, return 0.

=item countstr( 'pat', 'string' )

 Counts the number of occurences  of 'pat' within 'string'

=item  center( 'string' ,  len   [, char ]  ) 

 Returns a string of length len, with the proper padding so that 'string' is centered


=item  changestr( 'old', 'string' ,  'new' ) 

 Changes all instances of substing 'old' inside 'string' to the new string 'new'

=item  compare( 'string1' ,  'string2'  [, char ]  ) 

 Returns 0 when both strings are equal, or N when they are not. 
 The number N denotes the length of either string -- strings are always 
 compared after padding, so they always have equal length when they are compared. 
 If the comparison fails, and the string contents are unequal, it will 
 return N, the size of either string since by now hey both have the same length.  
 The default pad character is space , ' ' .


=item  copies( 'string' ,  N ) 

 Returns a string consisting of N concatenated copies. N = 0, 1, 2, ...

=item delstr( 'string' , start [,length]  )

 Deletes the substring which starts at $start.  
 Length defaults to the rest of string.

=item delword( 'string' , start [,length]  )

 Deletes $length words, starting from $start.  
 Length defaults to the rest of string.

=item errortext( N ) 

 Returns the error string that describes the error number N .

=item  datatype( 'string'  [, option ]   )

 When 'string' represents a number or a non-number literal, this fuction 
 returns 'NUM' or 'LIT', respectively. 
 Option can be either 'NUM' or 'LIT'; when specified, the fuction returns 1 (true) or
 0 (false) depending whether 'string' is a NUM or a LIT .
 If the user-supplied option is neither NUM or LOT, the return value is set to undef ;

=item  d2c( N )

 Same as chr(N) . Converts decimal N to its char in the character set. 

=item  d2h( N [, length] )

 Converts decimal N to a hex string of size $lenght .

=item  insert( 'source' , 'target' [,'position' ]  [,'length'] [, char ] ) 

 Inserts string 'source' into string 'targer'. 
 Position defaults to 0, length defaults to len of $source , and 
 padding char defaults to ' ' .

=item lastpos( 'needle' , 'haystack',   [, start ]  )

 Returns the position of $needle in $haystack (searching from the end) . 
 Returns 0 if not found, and 1 when neelde occurs at start of haystack

=item left( 'string' , length,   [, 'char']  )

  Returns the leftmost $length chars. If there are not
  enough characters, the string is padded (prepended) with char characters.
  Char defaults to space.

=item Length( 'string' )

 Returns the length of string.

=item overlay( 'source', 'target' [, start] [, length] [, pad]  )

 Overstrikes the $target string, with $source .


=item Reverse( 'string' )

  Reverses the order of characters in string.

=item Pos( 'needle' , 'haystack',   [, start ]  )

 Returns the position of $needle in $haystack . 
 Returns 0 if not found, and 1 when neelde occurs at start of haystack

=item right( 'string' , length,   [, 'char']  )

  Returns the $length chars from the end of string. If there are not
  enough characters, the string is padded (prepended) with char characters.
  Char defaults to space.


=item space( 'string' [, 'length']  [, 'char']  )

  After removing leading and trailing spaces, internal whitespace
  change to $length chars. Char defaults to  ' ' , and length defaults to 1 .


=item strip( 'string' [, 'Option']  [, 'char']  )
  
  Strips leading whitespace from string.
  The optional 2nd param can be set to 'leading', 'trailing', or 'both' .
  The optional 3rd param will strip chars instead of whitespace.
  Returns the striped string.

=item Substr( 'string', start, [, length ]  [, padchar ] )
  
  Returns a substring of string. If string does not have enough chars
  to fill the request, we use padding with character padchar .

=item wordindex( 'string', N )

  Returns the index in the string for the Nth word.

=item wordlength( 'string', N )

  Returns the length of the Nth word in the string. Where N=1,2,...
  Returns 0 if there are less worlds than N .
  Raises exception if is  N < 1

=item subword( 'string', start [, N ] )

  Returns a string of words staring from start. N denotes how many
  words to return (default is as many as possible.)
  start = N = 1,2,...

=item translate( 'string' [, 'new' , 'old'  [, pad] ]  )

  The translitaration oparator. It returns a strings where all characters 
  in 'old' and transformed to the corresponding characters in 'new' .
  In the special case when all options are absent, it translates $string
  to upper case.

=item verify( 'string', 'chars' [, sense] [, start] )

 Returns 0 if $string consists from characters in the set $chars , otherwise
 it returns the position of the 1st character in $sting that failed the match.
 The sense param is either 'M' for match, or 'N' for non-match, default is 'M' .
 The start param indicate the position from 'string' to start matching (default is 1,
 to match from the start of 'string').


=item wordpos( 'pattern' , 'string' )
 
 Returns the position of the word in 'string' containing  'pattern'

=item word( 'string', wordno )

  Returns the nth  word in the string.

=item words( 'string' )

  Returns the number of words in the string.

=item xrange( S , E )

  Retruns a sequence of characters, starting with char S, and ending with char E .


=back

=head2 EXPORT

None by default. 


=head1 AUTHOR

Ioannis Tambouras, E<lt>ioannis@earthlink.netE<gt>

=head1 SEE ALSO

L<regina(1)>.

=cut

sub Abbrev ($$;$) {
         ( local $_ , my ( $short , $len )) =  validate_pos @_ ,
                                        { type  => SCALAR              },
                                        { type  => SCALAR              },
                                        { regex => qr/^\+?\s*\d+$/, 
                                                   optional=>1         };


          /^$short/  ||  ((defined $len)&&length $short >= $len)    ? 1
                                                                    : 0  ;
}


sub center ($$;$) {

       my ($str , $len , $char) =  validate_pos @_  , { type  => SCALAR                   } ,
                                                      { regex => qr/^\+?\s*\d+$/          } ,
						      { regex => qr/^.$/ , default => ' ' },
                                                      ;

       $str       =  substr( $str, 0, $len )   ;  # if they asked less space than given text
       my $offset =  ($len -  length $str)/2  ;
       ($char x $offset)   . $str  .  ($char x ($offset+0.6) )   ;
}


sub centre ($$;$)  { &center }

sub  changestr ($$$) {
	my ( $old , $string, $new) = @_ ;
        $string  =~  s/$old/$new/g ;
        $string;
}

sub compare ($$;$)  {
        my ( $a, $b , $char) =  validate_pos  @_ ,
                                     { type  => SCALAR },
                                     { type  => SCALAR },
                                     { regex => qr/^.$/ , default => ' ' };

        my ($Alen , $Blen)   =  ( length($a)  , length($b) );
        my $max              =  ($Alen > $Blen) ? $Alen : $Blen ;

        substr( $a, $Alen )  =  $char  x ($max - $Alen) ;
        substr( $b, $Blen )  =  $char  x ($max - $Blen) ;
        $a cmp $b  && $max ;
}


sub copies ($$) {
        my ( $string, $num ) = validate_pos  @_  , { type  => SCALAR           } ,
                                                   { regex => qr/^\+?\s*\d+$/  } ,;
        $string x= $num ;
}

sub countstr ($$)  {
	my ( $pat , $string ) = @_ ;
	return 0 unless $pat ;
        $string =~ s/$pat//g   or  0 ;
}


sub datatype ($;$) {
      my    $str    =  shift ;
      local $_      =  shift || 'none' ;
      local $SIG{__WARN__} = \() ;

      eval "$str + 1 " ;
      my $type = $@ ? 'LIT' : 'NUM' ;

      /^ NUM $/xi   and   return ($type eq 'NUM') ? 1 : 0    ;
      /^ LIT $/xi   and   return ($type eq 'LIT') ? 1 : 0    ;
      /none/        and   return $type                       ;
      undef;
}


sub d2c ($) {
      chr(shift) ;
}


sub d2h ($;$) {
      my ($decimal, $len ) = validate_pos  @_ ,
                             { regex => qr/^\+?\s*\d+$/             },
                             { regex => qr/^\+?\s*\d+$/, default=>0 };

      sprintf '%0'.$len.'x',  $decimal ;
}



sub  delstr ($$;$)  {
        my ( $string , $start, $len ) = validate_pos  @_ ,
                                { type  => SCALAR                    },
                                { regex => qr/^\+?\s*\d+$/           },
                                { regex => qr/^\+?\s*\d+$/ ,
                                           default => length $_[0]   } ;

        substr( ($string || return'' ) , $start-1, $len, '' ) ;
        $string;
}


sub  delword ($$;$)   {
        my ($str, $start, $len ) = validate_pos  @_ ,
                                      { type  => SCALAR              },
                                      { regex => qr/^\+?\s*\d+$/     },
                                      { regex => qr/^\+?\s*\d+$/ ,
                                        default => length $_[0]      };

        $str  =~  m/\S+\s*/gc      for 1..--$start ;
        $str  =~  s/ \G (?:\S+\s*){0,$len} //x     ;
        $str ;
}
 

sub errortext ($) {
        local ($!)  = validate_pos @_ , { regex => qr/^\+?\s*\d+$/  } ,;
        $! ;
}


sub insert ($$;$$$) {
         my ($source , $target, $pos, $len, $char) = validate_pos @_ ,
                                     { type  => SCALAR                                    },
                                     { type  => SCALAR                                    },
                                     { regex => qr/^\+?\s*\d+$/ , default => 0            },
                                     { regex => qr/^\+?\s*\d+$/ , default => length $_[0] },
                                     { regex => qr/^.$/         , default => ' '          };

         my $targlen             =  length $target   ;
         substr( $source, $len ) =  '' ;

         ($pos <= $targlen) ?  substr( $target, $pos ,  0 , $source )
                            :  ($target .=   $char x ($pos-$targlen) . $source ) ;
         $target;
}

sub  lastpos  ($$;$)  {
         my ($needle , $hay, $start ) = validate_pos  @_ ,
				       { type => SCALAR                    },
				       { type => SCALAR                    },
				       { regex => qr/^\+?\s*\d+$/,          
						  default => length $_[1]   };

         1 + rindex(  $hay,  ($needle || return 0),    --$start  );
}


sub left ($$;$)  {
        my ($str, $len, $char) = validate_pos  @_  ,
                                          { type  => SCALAR              },
                                          { regex => qr/^\+?\s*\d+$/     },
                                          { type  => SCALAR, default=>' '},;

        my $padding = $char  x  (($len||return '') - length $str) ;
        substr( $str,  0,  $len) . $padding ;
}


sub Length ($)  {
       length shift();
}

sub overlay ($$;$$$)  {
      my ($source , $target, $start, $len, $char ) = validate_pos @_ ,
                                       { type  => SCALAR },
                                       { type  => SCALAR },
                                       { regex => qr/^\+?\s*\d+$/ , default => 1            },
                                       { regex => qr/^\+?\s*\d+$/ , default => length $_[0] },
                                       { regex => qr/^.$/         , default => ' '          };

      $source                 .=   $char x ($len-length $source) ;
      substr( $source, $len )  =   ''                            ;
      substr( $target, --$start, (length $source) , $source )    ;
      $target;
}



sub Pos ($$;$)  {
         my ($needle , $hay, $start ) = @_ ;
	 1 + index( $hay, ($needle||return 0), ($start||0) );
}

sub right ($$;$)  {
        my ($str, $len, $char) = validate_pos  @_  ,
                                          { type  => SCALAR              },
                                          { regex => qr/^\+?\s*\d+$/     },
                                          { type  => SCALAR, default=>' '},;

        my $padding = $char  x  (($len||return '') - length $str) ;
        $padding . substr( $str, - $len);
}


sub Reverse ($)   { 
	scalar reverse shift() ;
}


sub  space ($;$$)  {
        local $_ = shift;
        my ($len , $char) =  validate_pos  @_ ,
                                  { regex => qr/^\+?\s*\d+$/  , default => 1   },
                                  { regex => qr/^.$/          , default => ' ' } ,;

        s/^\s*|\s*$//g                  ;     # strip leading & trailing spaces
        s/\s+/{ $char x $len }/eg  , $_ ;     # add proper spacing and return $_
}


sub  Substr ($$;$$)  {
        my ($str, $start, $len, $char) = @_ ;
	my $slen = length($str) || return '' ;
	my $padding = ( $slen && $start) + $len - ($slen && 1) - $slen ;
	substr($str, $start-1, $len)   .   $char  x $padding    ,
}

sub  strip ($;$$)  {
        my ( $str, $direction, $char )  = @_ ;

        $direction    =~  s/\s*$//             ;
        my $R         =  $char || '\s'         ;
        my $both      =  [qr/^$R*/, qr/$R*$/ ] ;

        my $patterns  = { leading  => [ qr/^$R*/ ] ,
                          trailing => [ qr/$R*$/ ] ,
                          both     => $both        ,
                          ''       => $both        ,
                        }->{ lc $direction } || croak "incorrect call to routine\n";

        $str =~ s/$_//   for @{$patterns}   ;
        $str;
}



sub translate ($;$$$) {
        $_ = shift ,   my ($new, $old, $pad)  = @_ ;
        return uc     unless ( $new || $old );
        return undef  unless  defined $old;

        $pad = $pad || ' ' ;
        eval "y/$old/$new$pad/" ;
        $_;
}


sub verify ($$;$$)   {
           ( local $_,  my ($s, $option, $start))  =
                         validate_pos  @_ , { type  => SCALAR                        },
                                            { type  => SCALAR                        },
                                            { regex => qr/^(M|N)$/i, default => 'M'  },
                                            { type  => SCALAR, default => 1          },;

           return 1  unless $s ;
           my $pat  =    ($option =~ /^M$/i)   ? qr/[$s]*/
                                               : qr/[^$s]*/  ;
           pos()    =  --$start ;

           /$pat/gx ;
           (pos() == length)  ? 0 : 1+pos ;
}



sub word  ($$)  {
         (local $_, my $num)  = validate_pos @_ ,
                                     { type => SCALAR },
                                     { regex => qr/^\+?\s*\d+$/ },;

         (split) [ $num -1 ]  || ''  ;
}



sub  wordindex ($$)  {
        my ($str , $num) = validate_pos  @_ , { type => SCALAR           },
                                              { regex => qr/^\+?\s*\d+$/ },;

        pos($str) =   0  ;
        $str      =~  / \s*/gx  ;
        $str      =~  / \S+ \s+ /xg     for  1..$num-1 ;
        1+ pos $str;
}



sub  wordlength ($$)  {
        (local $_ , my $num ) = validate_pos @_ ,
                                  { type  => SCALAR },
                                  { regex => qr/^\+?\s*\d+$/ },;

        length(  (split)[$num-1]   ||  '' ) ;
}


sub  subword ($$;$)  {
        my ($string, $start, $len)  =  validate_pos  @_ ,
                                         { type => SCALAR                           },
                                         { regex => qr/^\+?\s*\d+$/                 },
                                         { regex => qr/^\+?\s*\d+$/ , optional => 1 };


        $string         =~  /\S+\s*/g    for 1..$start-1;
        $b              =  pos($string) || 0            ;
        (defined $len)  ?  do{ $string =~ /\S+/gc  for 1..$len;
                               substr $string, $b, ((pos $string ||0)-($b)) }
                        :  substr $string, $b;
}
 

sub wordpos ($$)  {
      ( my $pat, local $_ )   =  validate_pos @_ , { type => SCALAR },
                                                   { type => SCALAR };

       / (?=\b\w*$pat) /xg     ?  1+ pos
                               :  0;
}


sub words ($)  {
	local $_    =  shift;
        scalar ( () =  /(\S+)/g   );
}


sub xrange ($$) {
         my ($start, $end ) = validate_pos  @_ ,
                                  { regex => qr/^.$/ },
                                  { regex => qr/^.$/ };

         join '', $start..$end ;
}



