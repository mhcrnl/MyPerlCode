package Romanian::Parent;

use strict;
use warnings;
use feature qw/say/;

__PACKAGE__->_run unless caller();

sub new {
	my $class = shift;
	my $self  = {
		name 	=> shift,
		prenume => shift,
	};
	
	return bless $self, $class;
}

sub _run {
	my $name = new Romanian::Parent("Mihai", "Cornel");
	say $name->{name};
	say $name->{prenume};
}
1;