#!/usr/bin/env perl
#===============================================================================
#
#         FILE: main.pl
#
#        USAGE: ./main.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Paul Rohwer (PWR), prohwer@mindspring.com
# ORGANIZATION: PowerAudio
#      VERSION: 1.0
#      CREATED: 9/6/2020 6:00:11 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


use Getopt::Std;
use POSIX ":sys_wait_h";
use English '-no_match_vars';
    # see perlvar for variable names and features
    # no_match to reduce regx effiecency loss

use Tk; 
use Tk::NoteBook; 


#use File::stat;
#use File::Copy;
	#use Config;
use Data::Dumper;

#use pwr_library;
#use Readonly;
#Readonly my $PI => 3.14;

use FindBin qw{$Script };
my $VERSION        = '$Date: 2018-03-12 14:32:37 -0600 (Mon, 12 Mar 2018) $';
my ($gitRev) = `git log --oneline`;



my $DOCUMENTATION = <<EOMESSAGE;
Please describe what this program does

Usage : $Script [-he [-w Z] [-d X] [-f N] 

    Options     : Descriptions
    --------      ------------------------------------------------------
    -h          : Help menu
    -e          : Enable something
    -d  drive   : Option with agrument
    -w  win     : Option with agrument
    --help      : Help Menu
    --version   : Version 


EOMESSAGE


# ------------------------------------------------------------------------------
# BEGIN
# ------------------------------------------------------------------------------
#BEGIN {
#}

# ------------------------------------------------------------------------------
# INIT
# ------------------------------------------------------------------------------
#INIT {
#}

# ------------------------------------------------------------------------------
# END
# ------------------------------------------------------------------------------
#END {
#}

# ------------------------------------------------------------------------------
# CHECK
# ------------------------------------------------------------------------------
#CHECK {
#}

# ------------------------------------------------------------------------------
# declare sub  <+SUB+>
# ------------------------------------------------------------------------------
#sub passing_argu_3orless;
#sub passing_argu_4ormore;
sub HELP_MESSAGE();
sub VERSION_MESSAGE();

# ------------------------------------------------------------------------------
# global variables
# ------------------------------------------------------------------------------

my $OS;
my $DEBUGLEVEL = 0;
my %cmdLineOptions;
getopts( "hd:f:", \%cmdLineOptions );




local $Data::Dumper::Sortkeys = 1;
local $Data::Dumper::Purity   = 1;  ##new to verify this

#print Data::Dumper->Dump( [ \%Config ], [qw(Config  )] );

if ( defined $cmdLineOptions{h} ) {
    HELP_MESSAGE();
    exit(15);
}

if ( defined $cmdLineOptions{d} )  {
 	$DEBUGLEVEL =   $cmdLineOptions{d} ;
 
}

#if ( defined $cmdLineOptions{f} )  {
# something =   $cmdLineOptions{f} ;
#	<+INPUTOPTIONS+>
#}



################################################################################
################################################################################
#  MAIN 
################################################################################
################################################################################



my $mainWin = MainWindow->new;

#my $button  = Button::new( $mainWin, -text => 'Hellow');
#$button->configure( -method => sub {exit} );
#
$mainWin->title("Heelo World");
my $button1 = $mainWin->Button( -text => "Done", -command => sub{ exit} )->pack(-side => 'right');
my $button2 = $mainWin->Button( -text => "End", -command => sub{ exit} )->pack(-side => 'left');

if ( $DEBUGLEVEL ) {
 	my @list = $mainWin->packSlaves( ); 
 	print Dumper(\@list);
}


# Create the notebook and fill the whole window 
my $nb = $mainWin->NoteBook( )->pack(-expand => 1, -fill => 'both');	# Notebook Object
# Page 1 on the notebook, with button on that page 
my $reportPage = $nb->add('Report', -label => 'Report');
   $reportPage->Button(-text => 'Battle')->pack( );
   $reportPage->Button(-text => 'Click me!')->pack( );
# # Empty page 2 
my $mapPage    =  $nb->add('Map', -label => 'Map');
my $techPage   =  $nb->add('Technology', -label => 'Technology');
my $planetPage =  $nb->add('Planet', -label => 'Planet');
my $endPage    =  $nb->add('End', -label => 'End Turn');
MainLoop; 



# ------------------------------------------------------------------------------
# ------------------------------------------------------------------------------
sub HELP_MESSAGE() {

    print <<EOTEXT;
-----------------------------------------------------------------------------
$Script - TITLE
$DOCUMENTATION

$^X
EOTEXT
    exit(1);
}

# ------------------------------------------------------------------------------
# ------------------------------------------------------------------------------
sub VERSION_MESSAGE() {
    $Getopt::Std::STANDARD_HELP_VERSION = 1;

    # The above prevents this function from running exit();
    # but it causes a false warning, therefore I print it.
    print "$Script :  $VERSION $Getopt::Std::STANDARD_HELP_VERSION \n";
}






















##################################################################
#
#
#
##################################################################

# vim:tabstop=4:si:expandtab:shiftwidth=4:shiftround
