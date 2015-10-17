#!/usr/bin/perl
#useAngajat.plx

use warnings;
use strict;
use Angajat;

my $angajat1 = Angajat->new (
	nume	=>	"Mihai",
	prenume	=>	"Cornel",
	adresa	=>	"Prevederii",
	ocupatie	=>	"programator"
);
$angajat1->printletter("Ai avut incredere");

$angajat1->salary("1200");
print "Salariu initial: ", $angajat1->salary, "\n";
print "Salariu dupa marire: ", $angajat1->raise->salary, "\n";
	
my $cornel = Angajat->new (
	nume		=>	"Irina",
	employer	=>	"BNR",
	salary		=>	"200"
);

my $boss = $cornel->employer;
$boss->adresa("Primaverii 16");