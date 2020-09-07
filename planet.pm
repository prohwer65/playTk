
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



package planet;

use Moose;
use utf8;
#use Data::Dumper;

use parent 'myParentOOP';


has 'name' =>( is => 'ro', isa => "Str");
has 'xloc' =>( is => 'ro', isa => "Int");
has 'yloc' =>( is => 'ro', isa => "Int");
has 'class' =>( is => 'ro', isa => "Str");
has 'buildSpace' =>( is => 'ro', isa => "Int");
has 'factories' =>( is => 'rw', isa => "Int");
has 'research' =>( is => 'rw', isa => "Int");


















1;
##################################################################
#
#
#
##################################################################

# vim:tabstop=4:si:expandtab:shiftwidth=4:shiftround
