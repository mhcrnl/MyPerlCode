#!/usr/bin/perl
print <<EOF;
	Find a copy of dir program on this PC
	File: findDir.plx
	Author: Mihai
	
EOF
use warnings;
use strict;

use File::Spec::Functions;
#use Benchmark;
#my $howmany = 100000;
foreach (path()) {
	my $test = catfile($_,"dir");
	print "Da, dir este in $_ directory.\n";
	exit;
}
print "Dir nu a fost gasit";

