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



package player;




sub new {
	my  $class  = shift;
	my  $self   = {
		'name'  => $_[0],
		'isAlive' => 1,
		'techLevel' => 1,
		'gold' => 1,
		'homePlanet' => 1,
		'numberOfShips' => 1,
		'listOfPlanets' = undef,


		@_,
	};
	bless( $self, $class );
	return $self;

}


sub toString {
	my $self = shift; 

    local $Data::Dumper::Sortkeys = 1;
    local $Data::Dumper::Purity   = 1;  ##new to verify this


    my $string    = Data::Dumper->Dump( [ \$self ], [qw(self  )] );

	return $string;
}


sub getValue {
	my $self = shift; 
	my $valueName = shift; 

	return $self->{ $valueName };
}

sub setValue {
	my $self = shift; 
	my $valueName = shift; 
	my ($value) = shift; 

	$self->{ $valueName }  = $value;
	return $self->{ $valueName };
}


















1;
##################################################################
#
#
#
##################################################################

# vim:tabstop=4:si:expandtab:shiftwidth=4:shiftround
