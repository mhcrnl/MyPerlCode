package Romanian::Person1;

use 5.006;
use strict;
use warnings FATAL => 'all';
use feature qw/say/;

our $VERSION = '0.01_02';
__PACKAGE__->_run unless caller();
#----------------------------------------------------------------------------
#	The Constructor
#----------------------------------------------------------------------------
sub new {
	my $class = shift;
	my $self = {};
	bless ($self, $class);
	$self->_init(@_);
	return $self;
}

sub _init {
	my $self = shift;
	$self->{nume}=shift;
	$self->{prenume}=shift;
	$self->{telefon}=shift;
}

sub _run {
	my $cor = new Romanian::Person1('Mihai', 'Cornel', '0722270796');
	say $cor->{nume};
	say $cor->{prenume};
	say $cor->{telefon};
}