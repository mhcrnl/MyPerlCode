package Indexuri::Apartament;

use 5.006;
use strict;
use warnings FATAL => 'all';
use Carp;


=head1 NAME

Indexuri::Apartament - The great new Indexuri::Apartament!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 The Constructor

	$newClass = new Indexuri::Apartament(100, 200, 300, 400, 500, 600, 700, 800);

=cut

sub new {
	my $class = shift;
	my $self = {
		_IApaBucRece 	=>	shift,
		_IApaBucCalda	=>	shift,
		_IApaBaiRece	=>	shift,
		_IApaBaiCalda	=>	shift,
		_IGaze		=>	shift,
		_ICal6261	=>	shift,
		_ICal6262 	=>	shift,
		_ICal6263	=>	shift,
	};
	bless ($self, $class);
	return $self;
}



=head1 SYNOPSIS

The module store the index of utilities. 

Perhaps a little code snippet.

    use Indexuri::Apartament;

    my $foo = Indexuri::Apartament->new(890, 456, 456, 456, 300, 400, 500, 600);
    ...
    
More info in file : t/useApartament.plx

=head1 SUBROUTINES/METHODS

=head2 getIApaBucRece()

This get the value from constructor.

	print $foo->getIApaBucRece; 	#OUTPUT: 890 
=cut

sub getIApaBucRece {
	my $self = shift;
	unless (ref $self) {
		croak "Should call method with an object";
	}
	return $self->{_IApaBucRece};
}
=head2 setIApaBucRece()

This set a new value for variable _IApaBucRece from constructor

	$foo->setIApaBucRece(200);
	print $foo->getIApaBucRece;	#NEW OUTPUT: 200
	
=cut

sub setIApaBucRece {
	my ($self, $IApaBucRece)= @_;
	$self->{_IApaBucRece}= $IApaBucRece if defined ($IApaBucRece);
	return $self->{_IApaBucRece};
}

=head2 getIApaBucCalda() and setIApaBucCalda()

=cut

sub getIApaBucCalda {
	my $self = shift;
	unless (ref $self) {
		croak "Should call method with an object";
	}
	return $self->{_IApaBucCalda};
}

sub setIApaBucCalda {
	my ($self, $IApaBucCalda)=@_;
	$self->{_IApaBucCalda}=$IApaBucCalda if defined ($IApaBucCalda);
	return $self->{_IApaBucCalda};
}

=head2 Methods

=cut

sub getIApaBaiRece {
	my $self = shift;
	unless (ref $self) {
		croak "Should call method with an object";
	}
	return $self->{_IApaBaiRece};
}

sub setIApaBaiRece {
	my ($self, $IApaBaiRece) = @_;
	$self->{_IApaBaiRece}=$IApaBaiRece if defined ($IApaBaiRece);
	return $self->{_IApaBaiRece};
}

=head2 Methods

=cut

sub getIApaBaiCalda {
	my $self = shift;
	unless (ref $self) {
		croak "Should call method with an object";
	}
	return $self->{_IApaBaiCalda};
}

sub setIApaBaiCalda {
	my ($self, $IApaBaiCalda) = @_;
	$self->{_IApaBaiCalda}=$IApaBaiCalda if defined ($IApaBaiCalda);
	return $self->{_IApaBaiCalda};
}

=head2 Methods

=cut

sub getIGaze {
	my $self = shift;
	unless (ref $self) {
		croak "Should call method with an object";
	} 
	return $self->{_IGaze};
}

sub setIGaze {
	my ($self, $IGaze) = @_;
	$self->{_IGaze} = $IGaze if defined ($IGaze);
	return $self->{_IGaze};
}


=head2 Methods

=cut

sub getICal6261 {
	my $self = shift;
	unless (ref $self) {
		croak "Should call method with an object";
	}
	return $self->{_ICal6261};
}

sub setICal6261 {
	my ($self, $ICal6261) = @_;
	$self->{_ICal6261} = $ICal6261 if defined ($ICal6261);
	return $self->{ICal6261};
}

=head2 Methods

=cut

sub getICal6262 {
	my $self = shift;
	unless (ref $self) {
		croak "Should call method with an object";
	}
	return $self->{_ICal6262};
}

sub setICal6262 {
	my ($self, $ICal6262) = @_;
	$self->{_ICal6262} = $ICal6262 if defined ($ICal6262);
	return $self->{ICal6262};
}

=head2 Methods

=cut

sub getICal6263 {
	my $self = shift;
	unless (ref $self) {
		croak "Should call method with an object";
	}
	return $self->{_ICal6263};
}

sub setICal6263 {
	my ($self, $ICal6263) = @_;
	$self->{_ICal6263} = $ICal6263 if defined ($ICal6263);
	return $self->{ICal6263};
}

=head1 AUTHOR

Mihai Cornel, C<< <mhcrnl at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-indexuri-apartament at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Indexuri-Apartament>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Indexuri::Apartament


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Indexuri-Apartament>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Indexuri-Apartament>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Indexuri-Apartament>

=item * Search CPAN

L<http://search.cpan.org/dist/Indexuri-Apartament/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2015 Mihai Cornel.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


=cut

1; # End of Indexuri::Apartament
