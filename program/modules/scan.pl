#!/usr/bin/perl
# by @nu11secur1ty > Penetration testing engineer
use strict;
use warnings;
use diagnostics;
use Term::ANSIColor;

print "Give target host or IP\n";
my $target_ = <STDIN>;

our @koshinudze_ = (
	[ my $m0de1 = `nmap -A $target_`, my $m0de2 = `nmap -p 22 $target_` ],
	[ my $m0de3 = `nmap -p 1-100 $target_`, my $m0de4 = `nmap --script=http-title $target_` ],
	[ my $m0de5 = `nmap -sU -A -PN -n -pU:19,53,123,161 -script=ntp-monlist,dns-recursion,snmp-sysdescr $target_` ],
	[ my $m0de6 = `nmap -sV --script=smb* $target_`, ``,``]
);

print "Your result\n";
# First line of array
print color('blue');
	print "$koshinudze_[0][0]\n";
	print "$koshinudze_[0][1]\n";
	print color('reset');

# Second line from array;
print color('green');
	print "$koshinudze_[1][0]\n";
	print "$koshinudze_[1][1]\n";
	print color('reset');

# Third line of array
print color('yellow');
	print "$koshinudze_[2][0]\n";
	print color('reset');

# Forth line of array
print color('red');
	print "$koshinudze_[3][0]\n";
	print color('reset');

	print "finish the scaning\n";
