#!/usr/bin/perl
# by @nu11secur1ty > Penetration testing engineer
use strict;
use warnings;
use diagnostics;
use Term::ANSIColor;
# use 5.010;

print "Give the target host or IP\n";
my $target_ = <STDIN>;
#my $target_ = $ARGV

our @koshinudze_ = (
	[ my $m0de1 = `nmap -A $target_ > out.log`, my $m0de2 = `nmap -p 22 $target_` ],
	[ my $m0de3 = `nmap -p 1-100 $target_`, my $m0de4 = `nmap --script=http-title $target_` ],
	[ my $m0de5 = `nmap -sU -A -PN -n -pU:19,53,123,161 -script=ntp-monlist,dns-recursion,snmp-sysdescr $target_` ],
	[ my $m0de6 = `nmap -sV --script=smb* $target_`, ``,``]
);

print "Your result\n";

# The first line of the array
print "Detect OS and Services and Scan a single Port\n";
print color('blue');
	print "$koshinudze_[0][0]\n";
		print "---------------------------------------------\n";
	print "$koshinudze_[0][1]\n";
	print color('reset');

# The Second line of the array
print "Scan a range of ports and Gather page titles from HTTP services\n";
print color('green');
	print "$koshinudze_[1][0]\n";
		print "----------------------------------------------\n";
	print "$koshinudze_[1][1]\n";
	print color('reset');

# The third line of the array
print "Scan for UDP DDOS reflectors\n";
print color('yellow');
	print "$koshinudze_[2][0]\n";
	print color('reset');

# The fourth line of the array
print "Scan with a set of scripts\n";
print color('red');
	print "$koshinudze_[3][0]\n";
	print color('reset');
# Save
my $filename = 'koshinudze.log';
open(my $fh, '>>', $filename) or die "Could not open file '$filename' $!";
print $fh "$m0de1\n$m0de2\n$m0de3\n$m0de4\n$m0de5\n$m0de6";
close $fh;
print "done\n";
	print "finish the scanning\n";
