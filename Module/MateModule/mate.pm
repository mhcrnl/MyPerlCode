package mate;
use strict;
#use warnings;

use Exporter;
use vars qw($VERSION $ISA @EXPORT_OK %EXPORT_TAGS);

$VERSION	=1.00;
@ISA		=qw(Exporter);
@EXPORT		=();
@EXPORT_OK 	= qw(add multiplay);
%EXPORT_TAGS	=( DEFAULT =>[qw(&add)],
		   Both	   =>[qw(&add &multiplay)]);		

sub add {
	my ($x, $y) = @_;
	return $x+$y;
}

sub multiplay {
	my ($x, $y)=@_;
	return $x+$y;
}

1;
