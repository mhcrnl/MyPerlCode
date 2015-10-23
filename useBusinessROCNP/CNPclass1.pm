package CNPclass1;

#Class for storing data about a person:
#	nume	Methods: getNume()	setNume()
#	prenume	Methods: getPrenume()	setPrenume()
#	CNP Cod Numeric Personal	Methods: getCNP()	setCNP()
#	nrTel
#	
#	Email
# Author: Mihai Cornel	mhcrnl@gmail.com	0722270796
# File:	CNPclass1.pm
# Date: 20/10/2015

# Pragmas
use warnings;
use strict;
use Carp;

require Exporter;
#@ISA = qw(Exporter);
#@Export = qw(afiseaza);

our $VERSION=2015.1021;


# Class atributes -------------------------------------------
my @Everyone;

# The Constructor -------------------------------------------
sub new {
	my $class = shift;
	my $self = {
		_nume	=> shift,
		_prenume=> shift,
		_cnp	=> shift,
		_nrTel	=> shift,
		};		# hash referance
	bless ($self, $class);	# Transformarea referintei in obiect
	$self->_init;
	return $self;		# We send object back
	# Print all the values just for clarification--------------------------
	print "Numele DVS. este : $self->{_nume}\n";
}

sub _init {
	my $self = shift;
	push @Everyone, $self;
	carp "New object created";
} 

# Creating Methods (get//set) ----------------------------------------------------
sub getNume {
	my $self = shift;
	unless (ref $self) {
		croak "Should call getNume() with an object, not a class";
	}
	return $self->{ _nume };
}

sub setNume {
	my ($self, $nume) = @_;
	$self->{_nume} = $nume if defined ($nume);
	return $self->{_nume};
}

sub getPrenume {
	my $self = shift;
	unless (ref $self) {
		croak "Should call getPrenume() with an object, not a class";
	}
	return $self->{_prenume};
}

sub setPrenume {
	my ($self, $prenume) = @_;
	$self->{_prenume}= $prenume if defined ($prenume);
	return $self->{_prenume};
}

sub getCNP {
	my $self = shift;
	unless (ref $self) {
		croak "Should call getCNP() with an object, not a class";
		}
	return $self->{ _cnp };
}

sub setCNP {
	my($self, $cnp) = @_;
	$self->{_cnp} = $cnp if defined ($cnp);
	return $self->{_cnp};
}

sub getNrTel {
	my $self = shift;
	unless (ref $self) {
		croak "Should call hrtNrTel() with an object, not a class";
	}
	return $self->{_nrTel};
}

sub setNrTel {
	my($self, $nrTel) = @_;
	$self->{_nrTel} = $nrTel if defined ($nrTel);
	return $self->{_nrTel};
}


sub afiseazaVersion {
	#print getNume()." ".getPrenume()."\n";
	print "Salut din ROMANIA!  This is version $VERSION of this upload script!\n";;
	
}
1;
__END__
=head1 NAME
	CNPclass1.pm - Class for storing data about a person
		This is a CLASS. A class is a corresponding to a Perl Package in
its simplest form. To create a class in Perl, we first create a package.
=head1
