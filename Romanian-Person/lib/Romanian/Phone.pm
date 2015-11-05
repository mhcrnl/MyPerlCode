<<<<<<< HEAD
#!/usr/bin/perl

package Romanian::Phone;
use lib "/home/mhcrnl/MyPerlCode/Romanian-Person/lib/";
use parent 'Romanian::Person';
use strict;
#--------------------------------------------------------------------
#	Inherits from Person.
#---------------------------------------------------------------------
our @ISA = qw(Person);
=======
package Romanian::Phone;

#use lib "/home/mhcrnl/MyPerlCode/Romanian-Person/lib/";
use parent 'Person'; 	# sets @Romanian::Phone::ISA = ('Person');
use strict;
use warnings;
#push (@Inc, 'pwd');
#--------------------------------------------------------------------
#	Inherits from Person.
#---------------------------------------------------------------------
#our @ISA = qw(Person);
>>>>>>> 054b9bec6fc123a4b39e463d3ad736c5d5a7e1fb
our $VERSION ='0.01_01';
#---------------------------------------------------------------------------
#	Call the _run() method if the module was called as a script
#---------------------------------------------------------------------------
__PACKAGE__->_run unless caller();

#--------------------------------------------------------------------------
#	Override constructor
#----------------------------------------------------------------------------
sub new {
<<<<<<< HEAD
	my ($class) = @_;
	#---------------------------------------------------------------------
	#	Call the constructor of the parent class, Person.
	#---------------------------------------------------------------------
	my $self = $class->Romanian::Person::new( $_[0], $_[1], $_[2] );
=======
	my $class = shift;
	#---------------------------------------------------------------------
	#	Call the constructor of the parent class, Person.
	#---------------------------------------------------------------------
	#my $self = $class->Romanian::Person::new( $_[1], $_[2], $_[3] );
	my $self = {};
	bless $self, $class;
	$self = $self->Romanian::Person::new(shift, shift, shift);
>>>>>>> 054b9bec6fc123a4b39e463d3ad736c5d5a7e1fb
	#---------------------------------------------------------------------
	#	Add few more attributes
	#---------------------------------------------------------------------
	$self->{_phoneNumber} = shift;
<<<<<<< HEAD
	bless $self, $class;
=======
	#bless $self, $class;
>>>>>>> 054b9bec6fc123a4b39e463d3ad736c5d5a7e1fb
	return $self;
}
#--------------------------------------------------------------------------------
#	Method for getPhoneNumber()
#-------------------------------------------------------------------------------
sub getPhoneNumber {
	my $self = shift;
	return $self->{_phoneNumber};
}








#----------------------------------------------------------------
#	Method for run of this code.
#------------------------------------------------------------------
sub _run {
	#--------------------------------------------------------------
	#	Use of class Person.
	#-------------------------------------------------------------
<<<<<<< HEAD
	my $object = new Romanian::Person("Mihai", "Cornel");
=======
	my $object = Romanian::Person->new("Mihai", "Cornel");
>>>>>>> 054b9bec6fc123a4b39e463d3ad736c5d5a7e1fb
	print $object->getFirstName, "\n";
	print $object->getLastName, "\n";
	#-------------------------------------------------------------
	#	Use of class Phone
	#--------------------------------------------------------------
	my $object1 = Romanian::Phone::new( "Mihai", "Cornel", "0722270796");
<<<<<<< HEAD
	print $object1->Romanian::Person::getFirstName, "\n";
	print $object1->Romanian::Person::getLastName, "\n";
	print $object1->Romanian::Phone::getPhoneNumber, "\n";		
}

=======
	print $object1->Romanian::Person::getFirstName(), "\n";
	print $object1->Romanian::Person::getLastName, "\n";
	print $object1->Romanian::Phone::getPhoneNumber, "\n";		
}
>>>>>>> 054b9bec6fc123a4b39e463d3ad736c5d5a7e1fb
1;