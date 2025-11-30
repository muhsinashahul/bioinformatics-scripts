#!/usr/bin/perl
use strict;
use warnings;

my $seq = shift @ARGV or die "Usage: $0 <DNA_sequence>\n";

$seq = uc($seq);
$seq =~ tr/ACGT/TGCA/;
my $revcomp = reverse $seq;

print "Original:        $ARGV[0]\n";
print "Reverse complement: $revcomp\n";

