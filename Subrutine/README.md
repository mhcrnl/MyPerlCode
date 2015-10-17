##Subrutine cu argumente in Perl

    sub sum_of_two_squeres($$){
        my($a,$b)=(shift,shift);
        return $a**2+$b**2;
    }