#!/usr/bin/perl
use warnings;
use strict;
# Incarcarea filei pe care dorim sa o prelucram
my $filename = 'simple.xml';
print "Numele filei XML de incarcat: $filename.\n";
# Incarcam in aceast fila modulul XML::LibXML
use XML::LibXML;
# Creem un obiect $parser
my $parser = XML::LibXML->new();
# Cerem obiectului $parser prin functia parse_file sa parcurga fila xml
my $doc = $parser->parse_file($filename);
# Parcurgem elementele si le afisam prin functia print
foreach my $book($doc->findnodes('/breakfast_menu/food')){
	my ($name) = $book->findnodes('./name');
	my ($price) = $book->findnodes('./price');
	print $name->to_literal," ", $price->to_literal, "\n";
	
}