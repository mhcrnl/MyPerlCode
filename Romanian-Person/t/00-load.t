#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Romanian::Person' ) || print "Bail out!\n";
}

diag( "Testing Romanian::Person $Romanian::Person::VERSION, Perl $], $^X" );
