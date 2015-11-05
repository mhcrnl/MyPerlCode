#!/usr/bin/perl

package Romanian::Phone;
use lib "/home/mhcrnl/MyPerlCode/Romanian-Person/lib/";
use parent 'Romanian::Person';
use strict;
#--------------------------------------------------------------------
#	Inherits from Person.
#---------------------------------------------------------------------
our @ISA = qw(Person);
our $VERSION ='0.01_01';
#---------------------------------------------------------------------------
#	Call the _run() method if the module was called as a script
#---------------------------------------------------------------------------
__PACKAGE__->_run unless caller();

#--------------------------------------------------------------------------
#	Override constructor
#----------------------------------------------------------------------------
sub new {
	my ($class) = @_;
	#---------------------------------------------------------------------
	#	Call the constructor of the parent class, Person.
	#---------------------------------------------------------------------
	my $self = $class->Romanian::Person::new( $_[0], $_[1], $_[2] );
	#---------------------------------------------------------------------
	#	Add few more attributes
	#---------------------------------------------------------------------
	$self->{_phoneNumber} = shift;
	bless $self, $class;
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
	my $object = new Romanian::Person("Mihai", "Cornel");
	print $object->getFirstName, "\n";
	print $object->getLastName, "\n";
	#-------------------------------------------------------------
	#	Use of class Phone
	#--------------------------------------------------------------
	my $object1 = Romanian::Phone::new( "Mihai", "Cornel", "0722270796");
	print $object1->Romanian::Person::getFirstName, "\n";
	print $object1->Romanian::Person::getLastName, "\n";
	print $object1->Romanian::Phone::getPhoneNumber, "\n";		
}

1;