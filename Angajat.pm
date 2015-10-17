package Angajat;
# Perl inheritance example, create a new class based on Persoana
#Author:	Mihai Cornel
#File:	Angajat.pm
use Persoana;
use warnings;
use strict;

our @ISA = qw(Person);

# Adding new methods------------------------------------
sub employer {$_[0]->{employer}=$_[1] if defined $_[1]; $_[0]->{employer}}
sub position {$_[0]->{position}=$_[1] if defined $_[1]; $_[0]->{position}}
sub salary {$_[0]->{salary}=$_[1] if defined $_[1]; $_[0]->{salary}}

sub raise {
	my $self = shift;
	my $newsalary = $self->salary + 200;
	$self->salary($newsalary);
	return $self;
}

# Overriding Methods-----------------------------------------------------------
sub _init {
	my $self = shift;
	my $employer = $self->employer || "unknown";
	unless (ref $employer) {
		my $new_o = Person->new(nume => $employer);
		$self->employer($new_o);
	}
	$self->SUPER::_init();
}


1;