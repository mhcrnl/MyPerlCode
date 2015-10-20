#!/usr/bin/perl

# Use of class Person script
#Author: Mihai Cornel
#File: usePerson.plx

# Pragmas ----
use warnings;
use strict;

use Persoana;

my $persoana = Person->new(
	nume 	=> 	"Cornel",
	prenume	=>	"Mihai",
	mobil	=>	"0722279796",
	adresa	=>	"Prevederii 23"
);

my $persoana1 = Person->new(
	nume	=>	"Irina",
	prenume	=>	"Mihai",
	mobil	=>	"0723196164",
	adresa	=>	"Prevederii 12"
);

print "Numele acestei persoane este: ", $persoana->nume(), "\n";
print "Prenumele acestei persoane este: ", $persoana->prenume(), "\n";
print "Numarul mobil este: ", $persoana->mobil, "\n";

print "Vechea adresa: ", $persoana->adresa(), "\n";
$persoana->adresa("Crevedia Dambovita");
print "Noua adresa: ", $persoana->adresa(), "\n";

print "Populatia acum: ", $persoana->headcount, "\n";

print "Numele acestei persoane este: ", $persoana1->nume(), "\n";
print "Prenumele acestei persoane este: ", $persoana1->prenume(), "\n";
print "Numarul mobil este: ", $persoana1->mobil, "\n";

$persoana->printletter("Esti dator vandut.");