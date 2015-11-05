package Enumerate::PerlListClass;

use 5.006;
use strict;
use warnings;
use Carp;

=head1 NAME

Enumerate::PerlListClass - Enumerate a list

=head1 VERSION

VERSION 0.01

=cut
our $VERSION ='0.01';
__PACKAGE__->_run unless caller(); 
#--------------------------------------------------------
#	The Constructor
#---------------------------------------------------------
sub new {
	my $class = shift;
	my $self = {
		 _list	=>	shift,
	};
	bless($self, $class); 
	return $self;
}
#----------------------------------------------------------
#	Method getEnumerateList()
#----------------------------------------------------------
sub getEnumerateList {
	my $self = shift;
	unless (ref $self) {
		croak "Should call this method with an object";
	}
	return $self->{ _list };
}

sub _run {
	
	my $cor = Enumerate::PerlListClass->new("andrei");
	print $cor->getEnumerateList;
}