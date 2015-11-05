#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'GraficePerl::Exemple' ) || print "Bail out!\n";
}

diag( "Testing GraficePerl::Exemple $GraficePerl::Exemple::VERSION, Perl $], $^X" );
