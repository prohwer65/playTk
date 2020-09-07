#
#===============================================================================
#
#         FILE: myParentOOP.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Paul Rohwer (PWR), prohwer@mindspring.com
# ORGANIZATION: PowerAudio
#      VERSION: 1.0
#      CREATED: 9/7/2020 11:03:14 AM
#     REVISION: ---
#===============================================================================

 

package myParentOOP; 

use strict;
use warnings;
use utf8;
use Data::Dumper;

sub toString {
	my $self = shift; 

    local $Data::Dumper::Sortkeys = 1;
    local $Data::Dumper::Purity   = 1;  ##new to verify this


    my $string    = Data::Dumper->Dump( [ \$self ], [qw(self  )] );

	return $string;
}




1;
