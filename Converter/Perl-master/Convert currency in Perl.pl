#
# (3)
#
print "Enter the current GBP/USD rate.\n";
chomp ($ex_rate = <STDIN>);
print "Enter the dollar amount.\n";
chomp ($dollar = <STDIN>);
$pound = $ex_rate * $dollar;

$pound = sprintf('%.2f',$pound);

print "The amount $dollar dollar is equivalent to $pound pound.\n";
