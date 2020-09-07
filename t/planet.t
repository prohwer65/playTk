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


my $testPlanet = planet->new('name' => "Paul");

if ( defined $testPlanet ) { 
    pass( "Initiate new object");
} else {
    fail( "Initiate new object");
    done_testing();
}

is( ref $testPlanet , "planet", "Verifying object is created");

print $testPlanet->toString();


done_testing();


##################################################################
#
#
#
##################################################################

# vim:tabstop=4:si:expandtab:shiftwidth=4:shiftround
