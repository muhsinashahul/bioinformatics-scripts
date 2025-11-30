# Bioinformatics Utility Programs

This repository contains a collection of bioinformatics programs written in C, Perl (BioPerl), Java, and PHP-MySQL.
These scripts perform common sequence analysis tasks such as DNA/RNA conversion, GC content calculation, FASTA/EMBL conversions, and basic database operations.

## Folder Structure 

C_Programs/         → C programs for sequence manipulation  
Perl_BioPerl/       → BioPerl scripts for file format handling  
Java/               → Java programs for DNA sequence analysis  
PHP_MySQL/          → Simple web form + database insertion example  

## Included Programs 

### C Programs
dna_to_rna.c — Converts DNA sequence into RNA sequence.

### Perl / BioPerl Programs
fasta_to_embl.pl — Convert FASTA format to EMBL format.
write_sequence.pl — Write a sequence into a FASTA output file.
dna_to_protein.pl — Translate DNA FASTA sequence to protein FASTA sequence.

### Java Programs
DNACounter.java — Count number of A, T, C, G nucleotides.
GCContent.java — Calculate GC percentage of a DNA sequence.
DNAPalindrome.java — Check if a DNA sequence is palindromic.

### PHP + HTML
insert.html — Form to collect user input.
insert.php — Insert form data into MySQL database.

## Technologies Used 

C (GCC)

Perl & BioPerl (SeqIO, Seq)

Java (JDK 8+)

PHP & MySQL

HTML5
