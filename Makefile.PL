use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'              => 'String::Rexx',
    'VERSION_FROM'      => 'Rexx.pm',
    'PREREQ_PM'         => { 'Test::More' },
    ($] >= 5.005 ?
         (ABSTRACT_FROM => 'Rexx.pm',
           AUTHOR       => 'Ioannis Tambouras <ioannis@earthlink.net>') : ()),
);

