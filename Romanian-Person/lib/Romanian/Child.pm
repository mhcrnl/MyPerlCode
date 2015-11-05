package Romanian::Child;

use strict;
use warnings;
use feature qw/say/;
use lib "/home/mhcrnl/MyPerlCode/Romanian-Person/lib/";
use Romanian::Parent;
use parent 'Parent';

__PACKAGE__->_run unless caller();

sub new {
	my $class = shift;
	my $self = {
		$class->Romanian::Parent::new(@args);
		telefon=>shift;
	};
	bless $self, $class;
	return $self;
}

sub _run {
	my $name = new Romanian::Parent("Mihai", "Cornel");
	say $name->{name};
	say $name->{prenume};
	
	my $name1 = new Romanian::Child("Andrei", "Vasile");
	say $name1->{name};
}

1;