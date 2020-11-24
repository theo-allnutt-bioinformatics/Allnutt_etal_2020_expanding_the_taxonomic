
centrifuge.py "/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/*.fasta" /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.12_method_comparison_repeat/unordered/centrifuge/virus _virus /stornext/HPCScratch/home/allnutt.t/db/centrifuge/virus 24 f

centrifuge.py "/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/*.fasta" /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.12_method_comparison_repeat/unordered/centrifuge/bact _bact /stornext/HPCScratch/home/allnutt.t/db/centrifuge/bact 24 f

centrifuge.py "/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/*.fasta" /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.12_method_comparison_repeat/unordered/centrifuge/euk _euk /stornext/HPCScratch/home/allnutt.t/db/centrifuge/euk 24 f


for i in {1..10};do centrifuge2taxtable.py centrifuge/bact/"$i"_bact.report centrifuge/bact/"$i"_s.tab all species 1 1; done

for i in {1..10};do centrifuge2taxtable.py centrifuge/virus/"$i"_virus.report centrifuge/virus/"$i"_s.tab all species 1 1; done

for i in {1..10};do centrifuge2taxtable.py centrifuge/euk/"$i"_euk.report centrifuge/euk/"$i"_s.tab all species 1 1; done

for i in {1..10};do cut -f1,3 centrifuge/virus/"$i"_s.tab > centrifuge/virus/cut/"$i"_s.tab; done
mv centrifuge/virus/cut/* centrifuge/virus/

for i in {1..10};do cut -f1,3 centrifuge/bact/"$i"_s.tab > centrifuge/bact/cut/"$i"_s.tab; done
mv centrifuge/bact/cut/* centrifuge/bact/

for i in {1..10};do cut -f1,3 centrifuge/euk/"$i"_s.tab > centrifuge/euk/cut/"$i"_s.tab; done
mv centrifuge/euk/cut/* centrifuge/euk/
