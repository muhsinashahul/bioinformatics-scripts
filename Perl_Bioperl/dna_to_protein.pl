#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

use Bio::Seq;
use Bio::SeqIO;

my $in  = Bio::SeqIO->new(-format => 'fasta', -file => "sequence.fasta");
my $out = Bio::SeqIO->new(-format => 'fasta', -file => ">protein.fasta");

while (my $dna_seq_obj = $in->next_seq) {
    my $protein_seq_obj = $dna_seq_obj->translate;
    $out->write_seq($protein_seq_obj);
}

print "Conversion Successful\n";
