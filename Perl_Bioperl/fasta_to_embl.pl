#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

use Bio::SeqIO;

my $fasta_file = "sequence.fasta";
my $embl_file  = "sequence.embl";

my $fasta_seqio = Bio::SeqIO->new(-file => $fasta_file, -format => 'fasta');
my $embl_seqio  = Bio::SeqIO->new(-file => ">$embl_file", -format => 'embl');

while (my $embl_seq = $fasta_seqio->next_seq) {
    $embl_seqio->write_seq($embl_seq);
}

print "Conversion completed.\n";
