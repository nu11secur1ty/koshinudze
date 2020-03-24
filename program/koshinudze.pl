#!/usr/bin/perl
# by @nu11secur1ty > Penetration testing engineer
# v-1.1
use strict;
use warnings;
use diagnostics;
use Term::ANSIColor;

print color('red');
print "Choice module\n";
print color('reset');

print color('green');
	print "[1]scan\n";
	print "[2]attack\n";
	print "[3]sniff\n";
print color('reset');

my $m0dulEs = <STDIN>;

if ($m0dulEs == 1){
system("perl modules/scan.pl");
}else{
	exit 0;
}
if ($m0dulEs == 2){
system("perl modules/attack.pl");
}else{
        exit 0;
}
if ($m0dulEs == 3){
system("perl modules/sniff.pl");
}else{
        exit 0;
}
	exit 0;
