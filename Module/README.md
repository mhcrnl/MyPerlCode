##Modulele in Perl

Modulele sunt o cale de a reutiliza codul. Multe din modulele disponibile in Perl sunt arhivate in CPAN("Comprehensive Perl Archive Network").

Intrebarea: De ce sa folosim module? are ca raspuns: Pentru ca salveaza timp. Pe scurt *nu reinventati roata - utilizati module*.  

Pentru a include alte fisiere avem urmatoarele posibilitati:

1.  do
2. require
3. use

###Schimbarea @INC
    sub BIGIN {
        push @INC, "my/module/directory";
    }
    use Wibble;
    
sau

    use lib "my/module/directory";
    use Wibble;