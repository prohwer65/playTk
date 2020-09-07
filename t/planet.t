#
#===============================================================================
#
#         FILE: planet.t
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Paul Rohwer (PWR), prohwer@mindspring.com
# ORGANIZATION: PowerAudio
#      VERSION: 1.0
#      CREATED: 9/6/2020 9:38:21 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

use Test::More;   # tests => 1;                      # last test to print



use_ok( 'planet' );


my $testPlanet = planet->new('name' => "earth", class => "A", availSpaces => 5);

if ( defined $testPlanet ) { 
    pass( "Initiate new object");
} else {
    fail( "Initiate new object");
    done_testing();
}

is( ref $testPlanet , "planet", "Verifying object is created");


# build Factories
is( $testPlanet->availSpaces, 5, "Checking initial availSpaces");
is( $testPlanet->removeFactory(), 0, "Attempt to remove none existing factories");
is( $testPlanet->buildFactory(), 1, "Buid one factory");
is( $testPlanet->buildFactory(5), 0, "Attempt to build too many factories");

# build Research
is( $testPlanet->removeResearch(), 0, "Attempt to remove none existing Research");
is( $testPlanet->buildResearch(), 1, "Buid one Research");
is( $testPlanet->buildResearch(5), 0, "Attempt to build too many Research");


is( $testPlanet->zloc(5), 5, "Setting a Z location");
is( $testPlanet->zloc(5.5), 5.5, "Setting a Z location");

print $testPlanet->toString();


done_testing();


##################################################################
#
#
#
##################################################################

# vim:tabstop=4:si:expandtab:shiftwidth=4:shiftround
