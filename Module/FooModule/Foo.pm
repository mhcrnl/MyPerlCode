#!/usr/bin/perl
package Foo;

sub bar{
	print "Salut $_[0]\n"
	}

sub blat {
	print "pa $_[0]\n"
	}
	
sub add {
	my ($x, $y) = @_;
	return $x+$y;
}
sub inmultire {
	my ($x, $y)= @_;
	return $x*$y;
}

sub scadere {
	my ($x,$y)=@_;
	return $x-$y;
}

sub impartire {
	my ($x, $y)=@_;
	return $x/$y;
}

1;
