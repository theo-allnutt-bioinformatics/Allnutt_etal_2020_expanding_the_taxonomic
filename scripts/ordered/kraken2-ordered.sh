#!/bin/bash

kraken2.py "/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/*.fasta" /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.9_kraken2/d/bact _bact 1.0 24 /stornext/HPCScratch/home/allnutt.t/db/kraken2/bact

kraken2.py "/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.9_kraken2/d/bact/*_bact.nohit.fasta" /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.9_kraken2/d/virus/ _virus 1.0 24 /stornext/HPCScratch/home/allnutt.t/db/kraken2/virus

kraken2.py "/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.9_kraken2/d/virus/*_bact_virus.nohit.fasta" /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.9_kraken2/d/euk _euk 1.0 24 /stornext/HPCScratch/home/allnutt.t/db/kraken2/euk

for i in {1..10};do meta_otu_table3.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.9_kraken2/d/bact/"$i"_*.report /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.9_kraken2/d/bact/"$i" "|" 1 1 count ;done;

for i in {1..10};do meta_otu_table3.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.9_kraken2/d/virus/"$i"_*.report /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.9_kraken2/d/virus/"$i" "|" 1 1 count ;done;

for i in {1..10};do meta_otu_table3.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.9_kraken2/d/euk/"$i"_*.report /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.9_kraken2/d/euk/"$i" "|" 1 1 count ;done;
