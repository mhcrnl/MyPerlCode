#
# Hello World Program in Perl
#
print "Enter a temperature fahrenheit\n";
chomp ($f = <STDIN>);

$c = ($f - 32 ) * 5/9;
$c = sprintf('%.1f',$c);
print "The temperature in celsius is $c.\n";
