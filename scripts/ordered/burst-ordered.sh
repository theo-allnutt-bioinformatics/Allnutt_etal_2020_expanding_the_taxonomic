#!/bin/bash

burst.py "/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/*.fasta" /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d _bact /stornext/HPCScratch/home/allnutt.t/db/burst/bact 1 24 


for i in {1..10};
do
echo $i;
burstfile=/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_bact.burst;
listfile=/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_bact.list;
fastafile=/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/"$i".fasta;
nohitfile=/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_bact.nohit.fasta;
cut -f1 $burstfile > $listfile;
/stornext/HPCScratch/home/allnutt.t/scripts/get-seqs-from-file-not.py $listfile $fastafile $nohitfile;
done;

burst.py "/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/*_bact.nohit.fasta" /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d _virus /stornext/HPCScratch/home/allnutt.t/db/burst/virus 1 24 


for i in {1..10};
do
echo $i;
burstfile=/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_bact_virus.burst;
listfile=/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_virus.list;
fastafile=/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_bact.nohit.fasta;
nohitfile=/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_virus.nohit.fasta;
cut -f1 $burstfile > $listfile;
/stornext/HPCScratch/home/allnutt.t/scripts/get-seqs-from-file-not.py $listfile $fastafile $nohitfile;
done;

burst.py "/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/*_virus.nohit.fasta" /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d _euk /stornext/HPCScratch/home/allnutt.t/db/burst/euk 1 24  


for i in {1..10};do acc2tax2.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_*virus.burst /stornext/HPCScratch/home/allnutt.t/db/all2taxid.txt 10;done

for i in {1..10};do acc2tax2.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_*euk.burst /stornext/HPCScratch/home/allnutt.t/db/all2taxid.txt 10;done

for i in {1..10};do acc2tax2.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_*bact.burst /stornext/HPCScratch/home/allnutt.t/db/all2taxid.txt 10;done


for i in {1..10};do lca4.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_virus.tax 100 0;done

for i in {1..10};do lca4.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_euk.tax 100 0;done

for i in {1..10};do lca4.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_bact.tax 100 0;done



for i in {1..10};do lca_count.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_virus.lca /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_virus 1 1;done

for i in {1..10};do lca_count.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_euk.lca /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_euk 1 1;done

for i in {1..10};do lca_count.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_bact.lca /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/d/"$i"_bact 1 1;done

