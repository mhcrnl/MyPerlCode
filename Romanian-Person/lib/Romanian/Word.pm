package Romanian::Word;

use strict;
sub new {
	my $class=shift;
	my $self =shift;
	$self->{stem} = shift;
	$self->{english}=shift;
	bless $self, $class;
	return $self;
}
1;