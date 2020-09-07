
#
#===============================================================================
#
#         FILE: planet.pm
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

my  %planetClasses   = (
    "A" => { golds => 50,    ships => 1.00 },
    "B" => { golds => 46.87, ships => 0.93 },
    "C" => { golds => 43.75, ships => 0.87 },
    "D" => { golds => 40.62, ships => 0.81 },
    "E" => { golds => 37.50, ships => 0.75 },
    "F" => { golds => 34.37, ships => 0.68 },
    "G" => { golds => 31.25, ships => 0.62 },
);

package planet;

use Moose;
use Moose::Util::TypeConstraints;
#use Data::Dumper;

use parent 'myParentOOP';


has 'name'       => ( is => 'ro', isa => "Str" );
has 'owner'      => ( is => 'rw', isa => "Str" );
has 'xloc'       => ( is => 'ro', isa => "Int", default => 0 );
has 'yloc'       => ( is => 'ro', isa => "Int", default => 0 );

has 'zloc'       => ( is => 'rw', isa => "Num", default => 0 );

enum 'planetClass' => [ keys( %planetClasses ) ];
has 'class'      => ( is => 'ro', isa => "planetClass", default => "A" );

has 'availSpaces' => ( is => 'ro', isa => "Int" );
has 'factories'  => ( is => 'rw', isa => "Int", default => 0, );
has 'research'   => ( is => 'rw', isa => "Int", default => 0, );

sub removeResearch {
    my $self = shift; 
    my $numberToRemove = shift || 1;

    if ( $self->{research} >  $numberToRemove ) {
        $self->{research} -= $numberToRemove;
        return 1;
    }

    return 0;
}


sub buildResearch {
    my $self = shift; 
    my $numberToBuild = shift || 1;

    #print "building $numberToBuild research\n";

    if ( $self->{availSpaces} > $self->{research} +$self->{factories} + $numberToBuild ) {
        $self->{research} += $numberToBuild;
        return 1;
    }

    return 0;
}




sub removeFactory {
    my $self = shift; 
    my $numberToRemove = shift || 1;

    if ( $self->{factories} >  $numberToRemove ) {
        $self->{factories} -= $numberToRemove;
        return 1;
    }

    return 0;
}


sub buildFactory {
    my $self = shift; 
    my $numberToBuild = shift || 1;

    #print "building $numberToBuild factories\n";

    if ( $self->{availSpaces} > $self->{research} +$self->{factories} + $numberToBuild ) {
        $self->{factories} += $numberToBuild;
        return 1;
    }

    return 0;
}











1;
##################################################################
#
#
#
##################################################################

# vim:tabstop=4:si:expandtab:shiftwidth=4:shiftround
