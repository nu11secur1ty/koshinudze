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
	print "[1] scan\n";
	print "[2] traversal\n";
	print "[3] sniff\n";
	print "[4] attack\n";
	print "[5] CMS-Detect,OS other\n";
	print "[0] CMSmap_nu11secur1ty\n\n\n";
	
print color('reset');
print color('yellow');
	print "For EXIT press Ctrl + C\n";
print color('reset');

my $m0dulEs = <STDIN>;

if ($m0dulEs == 1){
system("perl modules/scan.pl");
}
if ($m0dulEs == 2){
system("perl modules/traversal.pl");
}
if ($m0dulEs == 3){
system("perl modules/sniff.pl");
}
if ($m0dulEs == 4){
system("perl modules/attack.pl");
}
if ($m0dulEs == 5){
system("perl modules/cmsorder.pl");
}
if ($m0dulEs == 0){
print color('yellow');
print "Give options for CMS_nu11secur1ty for example: -h host or EXAMPLE: http://example.com/\n";
print "With output file: http://example.com/ > cms_nu11secur1ty.log\n";
	my $option_cms = <STDIN>;
system("perl CMSmap_nu11secur1ty/cmsmap.py $option_cms");
	print color('reset');
}else{
	exit 0;
	}
