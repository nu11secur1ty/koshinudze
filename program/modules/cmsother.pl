#!/usr/bin/perl
# by @nu11secur1ty > Penetration testing engineer
use warnings;
use strict;
use diagnostics;

print "Give URL target for example: http://localhost:8080/\n";
chomp (my $URL_target = <STDIN>);
my @attack_m0de = (
		[my $m1 = `wad -u $target_`], 
);
print "$attack_m0de[0][0]\n";

# Save
my $filename = 'koshinudze_traversal.log';
open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";
        print $fh "$m1\n";
        close $fh;
                print "done\n";
        print "finish the scanning\n";

