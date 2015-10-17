#!/usr/bin/perl
# Convertor valutar Lei/Euro
# Author:	Mihai Cornel
# File:	converLeiEuro.plx

#use warnings;
#use strict;

print "Introduce-ti cursul Leu/Euro: ";
chomp ($rataDeSchimb = <STDIN>);
print "Introduce-ti suma pe care o schimbati: ";
chomp ($sumaDeSchimbat = <STDIN>);

$sumaTotala = $sumaDeSchimbat / $rataDeSchimb;
$sumaTotala = sprintf('%.2f',$sumaTotala); 

print "Pentru suma de $sumaDeSchimbat Lei ve-ti primi $sumaTotala Euro \n"; 
