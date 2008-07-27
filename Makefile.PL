use ExtUtils::MakeMaker;
WriteMakefile
(
          'LICENSE'      => 'perl',
          'PL_FILES'     => {},
          'INSTALLDIRS'  => 'site',
          'NAME'         => 'String::Rexx',
          'VERSION_FROM' => 'lib/String/Rexx.pm',
          'PREREQ_PM'    => { 'Regexp::Common' => 0,
                              'Params::Validate' => 0
                            },
          'ABSTRACT_FROM' => 'lib/String/Rexx.pm',
          'AUTHOR'        => 'Ioannis Tambouras <ioannis@earthlink.net>',
)
;
