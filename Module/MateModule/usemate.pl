#!/usr/bin/perl -w

use strict;
#use warnings;

#use Fille::Basename qw(dirname);
#use Cwd qw(abs_path);

use lib "home/mhcrnl/MyPerlCode/Module/Matematica/mate.pm";

use mate qw(&add);
print mate::add(4,4);

print add(5,5);
