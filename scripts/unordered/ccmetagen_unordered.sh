#!/bin/bash

for i in {1..10};do mkdir virus/"$i";done;

for i in {1..10};do CCMetagen.py -m text -i /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-oneshot/virus/"$i".kma.res -o virus/"$i"/"$i".res -d 0 --depth_unit nc;done;

#get the species level results for each sim separately:

for i in {1..10};do CCMetagen_merge.py -i virus/"$i"/ -t Species -kr k -l Superkingdom -tlist Viruses -o virus/"$i";done;

ccmeta2tab.py "virus/*.csv" virus/

for i in {1..10};do mkdir bact/"$i";done;

for i in {1..10};do CCMetagen.py -m text -i /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-oneshot/bact/"$i".kma.res -o bact/"$i"/"$i".res -d 0 --depth_unit nc;done;

#get the species level results for each sim separately:

for i in {1..10};do CCMetagen_merge.py -i bact/"$i"/ -t Species -kr k -l Superkingdom -tlist Bacteria -o bact/"$i";done;

ccmeta2tab.py "bact/*.csv" bact/

for i in {1..10};do mkdir euk/"$i";done;

for i in {1..10};do CCMetagen.py -m text -i euk/"$i".kma.res -o euk/"$i"/"$i".res -d 0 --depth_unit nc;done;

#get the species level results for each sim separately:

for i in {1..10};do CCMetagen_merge.py -i euk/"$i"/ -t Species -kr k -l Superkingdom -tlist Eukaryota -o euk/"$i";done;

ccmeta2tab.py "euk/*.csv" euk/