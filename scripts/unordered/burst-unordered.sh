burst.py "/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/*.fasta" /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/g _euk /stornext/HPCScratch/home/allnutt.t/db/burst/euk 1 24 
#
#
burst.py "/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/*.fasta" /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/g _virus /stornext/HPCScratch/home/allnutt.t/db/burst/virus 1 24 
#
#
burst.py "/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/*.fasta" /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/g bact /stornext/HPCScratch/home/allnutt.t/db/burst/bact 1 24  


for i in {1..10};do acc2tax2.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/g/"$i"*virus.burst /stornext/HPCScratch/home/allnutt.t/db/all2taxid.txt 10;done

for i in {1..10};do acc2tax2.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/g/"$i"*euk.burst /stornext/HPCScratch/home/allnutt.t/db/all2taxid.txt 10;done

for i in {1..10};do acc2tax2.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/g/"$i"*bact.burst /stornext/HPCScratch/home/allnutt.t/db/all2taxid.txt 10;done


for i in {1..10};do lca4.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/g/"$i"virus.tax 100 0;done

for i in {1..10};do lca4.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/g/"$i"euk.tax 100 0;done

for i in {1..10};do lca4.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/g/"$i"bact.tax 100 0;done



for i in {1..10};do lca_count.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/g/"$i"_virus.lca /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/g/"$i"_virus 1 1;done

for i in {1..10};do lca_count.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/g/"$i"_euk.lca /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/g/"$i"_euk 1 1;done

for i in {1..10};do lca_count.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/g/"$i"bact.lca /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.5_test_order/g/"$i"_bact 1 1;done

