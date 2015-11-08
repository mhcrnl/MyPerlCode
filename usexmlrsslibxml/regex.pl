#!/usr/bin/perl
use warnings;
use strict;
#---EXPRESII REGULATE IN PERL---
# OPERATORUL: =~ cautarea unui sablon intr-un text dat true 
#daca gaseste si false daca nu
if ("Salut Romania" =~ /Salut/){
	print "Am gasit Salut\n";
}else{
	print "Nu am gasit Salut\n";
}
# Daca salut cu s mic
if ("salut Romania" =~ /Salut/){
	print "Am gasit Salut\n";
}else{
	print "Nu am gasit Salut\n";
}
# OPERATORUL: !~ este inversul lui =~
if ("Salut Romania" !~ /Salut/){
	print "Am gasit Salut\n";
}else{
	print "Nu am gasit Salut\n";
} 
# Inlocuirea cuvantului cautat cu o variabila
my $var = "Salut";
if ("Salut Romania" =~ /$var/){
	print "Am gasit Salut\n";
}else{
	print "Nu am gasit Salut\n";
}
my $text = "acestA ESTE UN TEXT
	ce se intinde pe mai multe linii
	dupa cum vedeti";
# ^ desemneaza inceputul de sir, $ desemneaza sfarsitul de sir
# s trateaza sirul ca find stocat pe o singura linie
$text =~ /(^.*a.*$)/s;
print "\"$1\"\n";
# m trateaza sirul ca o singura linie si nu mai citeste alte linii
$text =~ /(^.*a.*$)/m;
print "\"$1\"\n";
# g cauta in sir toate secventele care se potrivesc sablonului.
my $nr = 0;
while ($text =~ /a/g){
	$nr++;
}
print "Am gasit caracterul \'a\' de $nr ori.\n";
#Afiseaza: Am gasit caracterul 'a' de 3 ori.