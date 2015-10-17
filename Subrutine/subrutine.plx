#!/usr/bin/perl
use warnings;
use strict;

setup();
adunare();
version();
secs2hms();
first_line();

print "Salut! Eu sunt un program PERL\n";

sub version {
	print "Beginning PERL's \"Salut!\" version 1.0\n";
	print "Am fost scris de Mihai Cornel, mhcrnl\@gmail.com\n";
}

# Variabile
#	Scalar = $fred
#	Array = @fred
#	Hash = %fred
#	Filehandle = fred
#	Subrutina = fred
# Toate acestea sunt diferite

adunare(123, 234,345,456,567);
adunare(1...1000);
sub adunare {
	my $total = 0;
	$total += $_ for @_;
	print "Totalul este $total\n";
	
}

sub setup {
	
}
my ($hours, $minutes, $seconds) = secs2hms(3723);
print "3723 secunde = $hours ore, $minutes minute, $seconds secunde.";
print "\n";
sub secs2hms {
	my ($h, $m);
	my $seconds = shift;
	$h = int($seconds/(60*60)); $seconds %= 60*60;
	$m = int($seconds/60);	$seconds %=60;
	($h,$m,$seconds);		
}

sub first_line {
	my $filename = shift;
	open FILE, $filename or return "";
	my $line = <FILE>;
	print "Aceasta este functia first_line(): $line \n";
	return $line;
	
}

my $option = shift;
version if $option eq "-v" or $option eq "--version" ;
print "Salut, din perl!\n";
