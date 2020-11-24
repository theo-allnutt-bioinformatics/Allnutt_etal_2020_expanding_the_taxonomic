#!/bin/bash

#virus
for i in {1..10};do mkdir virus/"$i";done;
for i in {1..10};do CCMetagen.py -m text -i virus/"$i".kma.res -o virus/"$i"/"$i".res --depth_unit nc;done;
#get the species level results for each sim separately:
for i in {1..10};do CCMetagen_merge.py -i virus/"$i"/ -t Species -kr k -l Superkingdom -tlist Viruses -o virus/"$i";done;
ccmeta2tab.py "virus/*.csv" virus/
bench-process.py "virus/*.tab" virus/ 
list_compare-cc.py 'virus/sort/*.tab' '/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/exp/virus*.abund' virus.stats
#bact
for i in {1..10};do mkdir bact/"$i";done;
for i in {1..10};do CCMetagen.py -m text -i bact/"$i".kma.res -o bact/"$i"/"$i".res --depth_unit nc;done;
#get the species level results for each sim separately:
for i in {1..10};do CCMetagen_merge.py -i bact/"$i"/ -t Species -kr k -l Superkingdom -tlist Bacteria -o bact/"$i";done;
#Prepare and compare lists
ccmeta2tab.py "bact/*.csv" bact/
bench-process.py "bact/*.tab" bact/ 
list_compare-cc.py 'bact/sort/*.tab' '/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/exp/bact*.abund' bact.stats
#euk
for i in {1..10};do mkdir euk/"$i";done;
for i in {1..10};do CCMetagen.py -m text -i euk/"$i".kma.res -o euk/"$i"/"$i".res --depth_unit nc;done;
#get the species level results for each sim separately:
for i in {1..10};do CCMetagen_merge.py -i euk/"$i"/ -t Species -kr k -l Superkingdom -tlist Eukaryota -o euk/"$i";done;
ccmeta2tab.py "euk/*.csv" euk/
bench-process.py "euk/*.tab" euk/ 
list_compare-cc.py 'euk/sort/*.tab' '/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/exp/euk*.abund' euk.stats
