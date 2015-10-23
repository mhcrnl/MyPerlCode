#!/usr/bin/perl

use warnings;
use strict;
use utf8;
use Carp;

my @CNP =qw/0750921196788/;
print "Acum este: " . localtime() . "\n";

print "CNP Dvs. este : $CNP[0]\n";

for my $num ( @CNP ) {
	print $num . "\n";
	my $sex = substr $num, 0, 1;
	print $sex . "\n";
	
	if ($sex == 1){
		print "Sex: Masculin\n";
	} else {
		print "Sex: Feminin\n";
	}
	
	my $dataNasterii = substr $num, 1,6;
	print $dataNasterii. "\n";
	
	my $codulJudetului = substr $num, 7,2;
	print $codulJudetului . "\n";
	
	my %counties = (
        '01' => 'Alba',
        '02' => 'Arad',
        '03' => 'Argeş',
        '04' => 'Bacău',
        '05' => 'Bihor',
        '06' => 'Bistriţa-Năsăud',
        '07' => 'Botoşani',
        '08' => 'Braşov',
        '09' => 'Brăila',
        '10' => 'Buzău',
        '11' => 'Caraş-Severin',
        '12' => 'Cluj',
        '13' => 'Constanţa',
        '14' => 'Covasna',
        '15' => 'Dâmboviţa',
        '16' => 'Dolj',
        '17' => 'Galaţi',
        '18' => 'Gorj',
        '19' => 'Harghita',
        '20' => 'Hunedoara',
        '21' => 'Ialomiţa',
        '22' => 'Iaşi',
        '23' => 'Ilfov',
        '24' => 'Maramureş',
        '25' => 'Mehedinţi',
        '26' => 'Mureş',
        '27' => 'Neamţ',
        '28' => 'Olt',
        '29' => 'Prahova',
        '30' => 'Satu Mare',
        '31' => 'Sălaj',
        '32' => 'Sibiu',
        '33' => 'Suceava',
        '34' => 'Teleorman',
        '35' => 'Timiş',
        '36' => 'Tulcea',
        '37' => 'Vaslui',
        '38' => 'Vâlcea',
        '39' => 'Vrancea',
        '40' => 'Bucureşti',
        '41' => 'Sectorul 1',
        '42' => 'Sectorul 2',
        '43' => 'Sectorul 3',
        '44' => 'Sectorul 4',
        '45' => 'Sectorul 5',
        '46' => 'Sectorul 6',
        '51' => 'Călăraşi',
        '52' => 'Giurgiu',
    );
    #utf8::upgrade(%counties);
    print $counties{$codulJudetului}."\n";
    
	
	my $numarInregistrare = substr $num, 9,4;
	print $numarInregistrare . "\n";
	
}
	
