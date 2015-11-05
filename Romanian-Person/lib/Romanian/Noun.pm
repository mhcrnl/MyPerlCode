package Romanian::Noun;
use strict;
use warnings;
use parent 'Word';
our @ISA = qw(Word);
__PACKAGE__->_run unless caller();

sub new{
	my $class = shift;
	my $self = {};
	bless $self, $class;
	$self = $self->Romanian::Word::new(shift, shift);
	$self->{gender} = shift;
	$self->{nom_sg} = shift;
	$self->{gen_sg} = shift;
	return $self;
}
1;

sub _run{
	my $w = new Romanian::Noun("ai(=m-", "blood", "n", "a", "atos");
	print $w->{english};
}