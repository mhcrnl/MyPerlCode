#!/usr/bin/perl

use warnings;
use strict;
use utf8;
use Carp;

use Business::RO::CNP;

my $cnp = Business::RO::CNP->new(1750921151987);

print $cnp->valid ? "CNP-ul este valid" : "CNP-ul nu este valid";

print $cnp->sex;

print $cnp->sex_id;

print $cnp->birthday;
print $cnp->birthday->ymd;
print "\n";
print $cnp->county;

print $cnp->checksum;
