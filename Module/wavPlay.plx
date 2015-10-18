#!/usr/bin/perl

use warnings;
use strict;
use Audio::Wav;

my $wav = new Audio::Wav;
my $read = $wav -> read('test_tone.wav');
my $details = $read -> details();
use Data::Dumper;
print Dumper ($details)."\n";
