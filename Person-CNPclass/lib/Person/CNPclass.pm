package Person::CNPclass;

use 5.018002;
use strict;
use warnings;
use Carp;
#THIS IS NO NEEDED----------------------------------------------------------
#require Exporter;
#our @ISA = qw(Exporter);
# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.
# This allows declaration	use Person::CNPclass ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
#our %EXPORT_TAGS = ( 'all' => [ qw() ] );
#our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
#our @EXPORT = qw(	);
#THIS IS NO NEEDED-------------------------------------------------------END
our $VERSION = '0.01';
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

# Preloaded methods go here.--------------------------------------------
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
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Person::CNPclass - Perl extension for blah blah blah

=head1 SYNOPSIS

  use Person::CNPclass;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for Person::CNPclass, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

mhcrnl, E<lt>mhcrnl@E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2015 by mhcrnl

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.18.2 or,
at your option, any later version of Perl 5 you may have available.


=cut
