#
#===============================================================================
#
#         FILE: player.t
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



use_ok( 'player' );


my $testPlayer = player->new('name' => "Paul");

if ( defined $testPlayer ) { 
    pass( "Initiate new object");
} else {
    fail( "Initiate new object");
    done_testing();
}

is( ref $testPlayer , "player", "Verifying object is created");

print $testPlayer->toString();

# gold methods
is( $testPlayer->gold , "0", "Initial gold");
is( $testPlayer->gold(10) , "10", "set gold to 10");
is( $testPlayer->canSpendGold(1) , "1", "Spend 1 gold");
is( $testPlayer->gold , "9", "How much gold");
is( $testPlayer->canSpendGold(10) , "0", "Spend too much gold");
is( $testPlayer->gold , "9", "How much gold");

is( $testPlayer->receiveGold(10) , "19", "Receive 10 gold");
is( $testPlayer->gold , "19", "How much gold");

done_testing();


##################################################################
#
#
#
##################################################################

# vim:tabstop=4:si:expandtab:shiftwidth=4:shiftround
