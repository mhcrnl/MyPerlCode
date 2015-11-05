package Romanian::Parent1;

use 5.006;
use strict;
use warnings FATAL => 'all';
use feature qw/say/;
use lib '/home/mhcrnl/MyPerlCode/Romanian-Person/lib/';
use parent 'Romanian::Person1';
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
	$self->Romanian::Person1::_init(shift, shift, shift);
	$self->{cnp}=shift;
	$self->{id}=shift;
}

sub _run {
	my $cor = new Romanian::Person1('Mihai', 'Cornel', '0722270796');
	say $cor->{nume};
	say $cor->{prenume};
	say $cor->{telefon};
	
	my $ncor = new Romanian::Parent1('Andrei', 'Claudiu', '0722270796', '1234567890','1234');
	say $ncor->{nume};
	say $ncor->{prenume};
	say $ncor->{telefon};
	say $ncor->{cnp};
	say $ncor->{id};
}
=head2 OUTPUT

=cut
1;