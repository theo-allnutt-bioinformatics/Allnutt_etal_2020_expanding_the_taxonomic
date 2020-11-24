#!/bin/bash

for i in {1..10};do metaphlan2folder.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/"$i".fasta metaphlan2/bact/ fasta '--ignore_eukaryotes --ignore_viruses' 12 'rel_ab_w_read_stats';done;

for i in {1..10};do metaphlan2folder.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/"$i".fasta metaphlan2/virus/ fasta '--ignore_eukaryotes --ignore_bacteria --ignore_archaea' 12 'rel_ab_w_read_stats';done;

for i in {1..10};do metaphlan2folder.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/"$i".fasta metaphlan2/euk/ fasta '--ignore_viruses --ignore_bacteria --ignore_archaea' 12 'rel_ab_w_read_stats';done;


for i in {1..10};do meta_otu_table3.py metaphlan2/bact/"$i".fasta.txt metaphlan2/bact/"$i" "|" 0 0 cpm  ;done;
for i in {1..10};do meta_otu_table3.py metaphlan2/euk/"$i".fasta.txt metaphlan2/euk/"$i" "|" 0 0 cpm  ;done;
for i in {1..10};do meta_otu_table3.py metaphlan2/virus/"$i".fasta.txt metaphlan2/virus/"$i" "|" 0 0 cpm  ;done;

