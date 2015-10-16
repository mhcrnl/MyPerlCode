#!/usr/bin/perl

# Use of class Person script
#Author: Mihai Cornel
#File: usePerson.plx

use warnings;
use strict;
use Persoana;

my $persoana = Person->new(
	nume 	=> 	"Cornel",
	prenume	=>	"Mihai",
	mobil	=>	"0722279796",
	adresa	=>	"Prevederii 23"
);

print "Numele acestei persoane este: ", $persoana->nume(), "\n";
print "Prenumele acestei persoane este: ", $persoana->prenume(), "\n";
print "Numarul mobil este: ", $persoana->mobil, "\n";

print "Vechea adresa: ", $persoana->adresa(), "\n";
$persoana->adresa("Crevedia Dambovita");
print "Noua adresa: ", $persoana->adresa(), "\n";

print "Populatia acum: ", $persoana->headcount, "\n";
