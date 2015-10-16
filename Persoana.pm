package Person;

#Class for storing data about a person
#Author: Mihai Cornel
#File: Persoana.pm

use warnings;
use strict;
use Carp;

# Class Attributes________________________________
my $Population = 0;

# The Constructor ________________________
sub new {
	my $class = shift;
	my $self={@_};	#hash referance
	bless($self, $class);		#Transformarea referintei in obiect
	$Population++;
	return $self;		# We send object back
}

# Creating Methodes ________________________________________
sub nume {
	my $self = shift;
	unless (ref $self) {
		croak "Should call nume() with an object, not a class";
	}
	#my %hash = %$self;
	#return $hash{nume};
	return $self->{nume}
}

sub prenume {
	my $self = shift;
	return $self->{prenume}
}

sub mobil {
	my $self = shift;
	return $self->{mobil}
}

sub adresa {
	my $self = shift;
	unless (ref $self) {
		croak "Should call adresa() with an object, not a class";
	}
	# Receive more data
	my $data = shift;
	# Set the adres if there's any data there
	$self->{adresa} = $data if defined $data;
	
	return $self->{adresa}
}

sub headcount { $Population }

1;
