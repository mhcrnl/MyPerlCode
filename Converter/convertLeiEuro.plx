#!/usr/bin/perl
# Convertor valutar Lei/Euro
# Author:	Mihai Cornel
# File:	converLeiEuro.plx

print <<EOF;
Acesta este un program scris in perl, poate fi rulat in linie de comanda.
		## VERSIUNEA 1.0 ##
EOF

use warnings;
use strict;

info();

our $rataDeSchimb;
our $sumaDeSchimbat;
our $sumaTotala;

print "Introduce-ti cursul Leu/Euro: ";
chomp ($rataDeSchimb = <STDIN>);
print "Introduce-ti suma pe care o schimbati: ";
chomp ($sumaDeSchimbat = <STDIN>);

$sumaTotala = $sumaDeSchimbat / $rataDeSchimb;
$sumaTotala = sprintf('%.2f',$sumaTotala); 

print "Pentru suma de $sumaDeSchimbat Lei ve-ti primi $sumaTotala Euro \n"; 

sub info {
	print "Acest program este un convertor valutar Lei/Euro, versiunea 1.0\n";
	print "A fost scris de Mihai Cornel, email: mhcrnl\@gmail.com\n";
	print "------------------Incepem Calculul ----------------------\n";
}
