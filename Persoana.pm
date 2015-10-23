package Person;

#Class for storing data about a person
#Author: Mihai Cornel
#File: Persoana.pm

# Pragmas
use warnings;
use strict;
use Carp;

# Class Attributes________________________________
#my $Population = 0;
my @Everyone;

# The Constructor ________________________
sub new {
	my $class = shift;
	my $self={@_};	#hash referance
	bless($self, $class);		#Transformarea referintei in obiect
	#$Population++;
	#push @Everyone, $self;
	$self->_init;
	return $self;		# We send object back
}

sub _init {
	my $self = shift;
	push @Everyone, $self;
	carp "New object created";
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
# Class accessor methods ------------------------
#sub headcount { $Population }
sub headcount { scalar @Everyone }
sub everyone { @Everyone }

# Utility methods ___________________________________________
sub fullname {
	my $self = shift;
	return $self->nume. " ".$self->prenume;
}
sub printletter {
	my $self = shift;
	my $nume	=	$self->fullname;
	my $adresa	=	$self->adresa;
	my $prenume	=	$self->prenume;
	my $body	=	shift;
	my @date	=	(localtime)[3,4,5];
	$date[1]++;	# Months start at 0! Add one to humanise!
	$date[2]+=1900;	# Add 1900 to get current year.
	my $date	=	join "/", @date;
	
	print <<EOF;
$nume
$adresa
$date
Draga $prenume,
$body
Cu stima!,
EOF
	return $self;
}

	
	


1;
