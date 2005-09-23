use Module::Build;
my $b= Module::Build->new(
	module_name        => 'String::Rexx',
	dist_version_from  => 'lib/String/Rexx.pm',
	dist_author        => 'Ioannis Tambouras <ioannis@yahoo.com>',
	requires           => {  perl                => '5.6',
				'Params::Validate'   =>  0 ,
			        'Regexp::Common'     =>  0 , 
                              },
	recommends         => { 'Test::More'         => 0,
				'Test::Exception'    => 0,
	                        'Test::Pod::Coverage'=> '1.0',
				'Test::Pod'          => 0,
			      },
	license            => 'perl',
	#create_makefile_pl=> 'traditional',
	#create_readme     => 1,
);

$b->create_build_script;
#$b->dispatch( 'manifest' );
