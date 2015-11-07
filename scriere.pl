#!/usr/bin/perl
#	Pragmas
use strict;
use warnings;

=head1 Scrierea filelor in perl

Pentru a scrie o fila in perl este necesara deschiderea acesteia si pentru acesta
perl ofera functia open().

=cut
my $numeleFilei = 'report.txt';
open (my $fm, '>', $numeleFilei) or die "Fila nu sa deschis";
print $fm "Aceasta este fila $numeleFilei scrisa de Perl open()";
# Urmatoarea linie de cod va inchide scrierea filei.
close $fm;
#Aceasta linie afiseaza in terminal reusita operatiei
print "Operatia de scriere s-a terminat\n";

=head2

Functia open() are trei parametri: variabila scalar $fm definita chiar in functia open(),
al doilea parametru este semnul > care indica deschiderea filei pt scriere si al treilea
parametru este numele filei care va fi scrisa.

Parametrul $fm este pus in functia print() ca prim parametru si aceasta va scrie fila.

=cut