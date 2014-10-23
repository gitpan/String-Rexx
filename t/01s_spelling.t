use Test::More ;

my $dir  = $ENV{PWD} =~ m#\/t$#  ? '../' : '';
##plan skip_all => "Spelling tests only for author" unless -d 'inc/.author';
my $filter = sub {
		my $_ = shift;
		! (/_ja.pod$/ || /_es.pad$/ )
};

use constant { NO_CHECK => 1 };

eval 'use Test::Spelling' ;

SKIP: {        
		done_testing(1)                        if $@ || NO_CHECK ;
        skip  'no Test::Spelling', scalar 1    if $@ || NO_CHECK ;
		add_stopwords(<DATA>);
		set_pod_file_filter($filter) ;
		my @files = all_pod_files ( "${dir}blib"  );
		pod_file_spelling_ok( $_, ) for @files;
		done_testing( scalar @files );
};

__END__
#     Rexx
#     len
#     padchar
#     regina
#     rexx
#     wordno
