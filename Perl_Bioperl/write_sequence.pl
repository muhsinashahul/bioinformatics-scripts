#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

use Bio::Seq;
use Bio::SeqIO;

my $seq_obj = Bio::Seq->new(
    -seq        => 'ATGCGATTGGA',
    -display_id => 'example_seq',
    -alphabet   => 'dna'
);

my $seq_out = Bio::SeqIO->new(-file => ">output.fasta", -format => 'fasta');
$seq_out->write_seq($seq_obj);

print "Sequence written to output.fasta\n";
