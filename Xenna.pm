# xenna - sleep with a slight discomfort in the groin area. Inspired by Tomasz 'xenna' Konojacki.
# Copyright (c) 2015 szałwia <szalwiaxd@gmail.com>
# License: WTFPL

# [01:46.41] <xenna> zebys ty widziala jak wyglada moje rozdawanie kart w pokerze
# [01:46.42] <xenna> i komentarze
# [01:46.47] <xenna> >jakim cudem on sie nauczyl programowac

package Xenna;
use strict;
no warnings 'redefine';

# perlowcy jedzom guwno xD

my $dyskomfort = 0;

sub spiulkaj {
  if ($dyskomfort) {
    print STDERR "LEKKI DYSKOMFORT W JAJKACH!!!\n";
  } elsif ($_[0] > 15) {
    CORE::sleep ($_[0]);
    $dyskomfort = 1;
    print STDERR "LEKKI DYSKOMFORT W JAJKACH!!!\n";
  } else {
    CORE::sleep ($_[0]);
  }
}

sub podrap_jajka { $dyskomfort = 0; }

sub import {
  *CORE::GLOBAL::sleep = \&spiulkaj;
  1;
}

1;
