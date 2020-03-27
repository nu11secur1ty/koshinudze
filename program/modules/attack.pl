#!/usr/bin/perl
use warnings;
use strict;
use diagnostics;

my @m0dules = ([my $m1 = `ping 8.8.8.8 -c 3`, 
		my $m2, 
		my $m3, 
		my $m4, 
		my $m5]
);
print "$m0dules[0][0]\n";

