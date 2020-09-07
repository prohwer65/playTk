#
#===============================================================================
#
#         FILE: solarSystem.t
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Paul Rohwer (PWR), prohwer@mindspring.com
# ORGANIZATION: PowerAudio
#      VERSION: 1.0
#      CREATED: 9/7/2020 3:57:01 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

use Test::More tests => 1;                      # last test to print


use_ok( 'solarSystem');

my $testSolarSystem = solarSystem->new( 'name' => 'newGame' );

if ( defined $testSolarSystem ) { 
    pass( "Initiate new object");
} else {
    fail( "Initiate new object");
    done_testing();
}

is( ref $testSolarSystem , "solarSystem", "Verifying object is created");

my $planet1 = 'earth';
my $planet2 = 'mars';

$testSolarSystem->pushPlanet( $planet1 );
$testSolarSystem->pushPlanet( $planet2 );

my $player1 = 'thing1';
my $player2 = 'thing2';

$testSolarSystem->pushPlayer( $player1 );
$testSolarSystem->pushPlayer( $player2 );

my $command1 = '10 ships from X to Y';
my $command2 = '1 ships from Y to Z';

$testSolarSystem->pushCommand( $command1 );
$testSolarSystem->pushCommand( $command2 );


my $results1 = 'all ships died';
my $results2 = 'conquered';

$testSolarSystem->pushResults( $results1 );
$testSolarSystem->pushResults( $results2 );

#$testSolarSystem->name('zzzdummy');
#$testSolarSystem->dummy('dummy');

print $testSolarSystem->toString();
