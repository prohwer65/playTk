#
#===============================================================================
#
#         FILE: player.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Paul Rohwer (PWR), prohwer@mindspring.com
# ORGANIZATION: PowerAudio
#      VERSION: 1.0
#      CREATED: 9/6/2020 9:21:37 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Data::Dumper;



package player;


use Moose;
use Moose::Util::TypeConstraints;

use parent 'myParentOOP';

has 'name'          => ( is => 'ro', isa => "Str" );
has 'isAlive'       => ( is => 'rw', isa => "Bool", default => 1 );
has 'techLevel'     => ( is => 'rw', isa => "Int",  default => 1 );
has 'gold'          => ( is => 'rw', isa => "Int",  default => 0 );
has 'homePlanet'    => ( is => 'ro', isa => "Str" );
has 'numberOfShips' => ( is => 'rw', isa => "Int", default => 0 );


enum 'playerTypes' => [qw( Human Comp2 Comp3 Comp4 Comp5 )];
has 'playerType'    => ( is => 'ro', isa => "playerTypes", default => "Human" );





# gold methods 
sub receiveGold {
    my $self = shift; 
    my $goldReceived = shift; 


    $self->{gold} += $goldReceived;

    return $self->{gold} ;

}


#===  FUNCTION  ================================================================
#         NAME: canSpendGold
#      PURPOSE: checks to see if X gold pieces can be spent.
#               Returns 0 if you can't. No change is made.
#               Returns 1 if you can and subtracts the spend gold. 
#   PARAMETERS: ????
#      RETURNS: ????
#  DESCRIPTION: ????
#       THROWS: no exceptions
#     COMMENTS: none
#     SEE ALSO: n/a
#===============================================================================
sub canSpendGold {
    my $self = shift; 
    my $goldToSpend = shift; 

    return 0 if ( $goldToSpend > $self->gold);

    $self->{gold} -= $goldToSpend;

    return 1;

}










1;
##################################################################
#
#
#
##################################################################

# vim:tabstop=4:si:expandtab:shiftwidth=4:shiftround
