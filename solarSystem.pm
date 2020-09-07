#
#===============================================================================
#
#         FILE: solarSystem.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Paul Rohwer (PWR), prohwer@mindspring.com
# ORGANIZATION: PowerAudio
#      VERSION: 1.0
#      CREATED: 9/7/2020 3:56:30 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
 

package solarSystem;

use Moose;
use Moose::Util::TypeConstraints;

use parent 'myParentOOP';

has 'name'           => ( is => 'ro', isa => "Str" );
has 'listOfPlanets'  => ( is => 'rw', isa => "ArrayRef" );
has 'listOfPlayers'  => ( is => 'rw', isa => "ArrayRef" );
has 'listOfCommands' => ( is => 'rw', isa => "ArrayRef" );
has 'listOfResults'  => ( is => 'rw', isa => "ArrayRef" );


sub dummy {
	my $self = shift; 
	my $newPlayer = shift; 

	$self->{'name'} = $newPlayer;
}
sub pushPlayer {
	my $self = shift; 
	my $newPlayer = shift; 

	push (  @{$self->{'listOfPlayer'}}, $newPlayer);
}

sub pushPlanet {
	my $self = shift; 
	my $newPlanet = shift; 

	push (  @{$self->{'listOfPlanets'}}, $newPlanet);
}
sub pushCommand {
	my $self = shift; 
	my $newCommand = shift; 

	push (  @{$self->{'listOfCommand'}}, $newCommand);
}

sub pushResults {
	my $self = shift; 
	my $newResults = shift; 

	push (  @{$self->{'listOfResults'}}, $newResults);
}
1;


##################################################################
#
#
#
##################################################################

# vim:tabstop=4:si:expandtab:shiftwidth=4:shiftround

