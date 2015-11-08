#!/usr/bin/perl
use warnings;
use strict;
#use utf8;
#---------------------------------------------------------------------
# Acesta este un tablou asociativ (hash) format dintr-o cheie si o valoare.
# Mai jos aveti codurile oraselor din Romania cheia este un nr. iar valoare 
#este un string. Cheile trebuie sa fie unice.
#-------------------------------------------------------------------------
my %codul = (
        1  => 'București',
        30 => 'Suceava',
        31 => 'Botoșani',
        32 => 'Iași',
        33 => 'Neamț',
        34 => 'Bacău',
        35 => 'Vaslui',
        36 => 'Galați',
        37 => 'Vrancea',
        38 => 'Buzău',
        39 => 'Brăila',
        40 => 'Tulcea',
        41 => 'Constanța',
        42 => 'Călărași',
        43 => 'Ialomița',
        44 => 'Prahova',
        45 => 'Dâmbovița',
        46 => 'Giurgiu',
        47 => 'Teleorman',
        48 => 'Argeș',
        49 => 'Olt',
        50 => 'Vâlcea',
        51 => 'Dolj',
        52 => 'Mehedinți',
        53 => 'Gorj',
        54 => 'Hunedoara',
        55 => 'Caraș-Severin',
        56 => 'Timiș',
        57 => 'Arad',
        58 => 'Alba',
        59 => 'Bihor',
        60 => 'Sălaj',
        61 => 'Satu Mare',
        62 => 'Maramureș',
        63 => 'Bistrița-Năsăud',
        64 => 'Cluj',
        65 => 'Mureș',
        66 => 'Harghita',
        67 => 'Covasna',
        68 => 'Brașov',
        69 => 'Sibiu',
        );
# Aici obtinem valorile pentru chei $codul{23}. Intre acolade sunt specificate 
#doar numele de chei(aici numere)        
print "Codul 37 este pentru $codul{37}.\n";
print "Codul 39 este pentru $codul{39}.\n";
# Aceste liste pot fi iterate cu ajutorul instructiunii foreach, iar functia each()
#returneaza o pereche cheie-valoare
while((my $codul, my $orasul) = each(%codul)){
        print "Codul $codul este pentru $orasul.\n";
}
# Adaugarea de elemente se poate face prin
$codul{70}="Crevedia";
print "Codul 70 este pentru $codul{70}.\n";
# Un element se poate sterge cu functia delete(), iar existenta unui element
#cu exists()
#if exists ($codul{55}) {
 #       delete($codul{55});
#}
print "Codul 55 este pentru $codul{55}.\n";
# Pentru sortarea unui tablou se utilizeaza sort() iar pentru inversare
#reverse()