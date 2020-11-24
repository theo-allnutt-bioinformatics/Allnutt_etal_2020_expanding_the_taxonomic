
kraken2.py "/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/*.fasta" /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.12_method_comparison_repeat/unordered/kraken2/bact/ 1.0 24 /stornext/HPCScratch/home/allnutt.t/db/kraken2/bact

kraken2.py "/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/*.fasta" /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.12_method_comparison_repeat/unordered/kraken2/virus/ 1.0 24 /stornext/HPCScratch/home/allnutt.t/db/kraken2/virus

kraken2.py "/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/*.fasta" /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.12_method_comparison_repeat/unordered/kraken2/euk/ 1.0 24 /stornext/HPCScratch/home/allnutt.t/db/kraken2/euk

for i in {1..10};do meta_otu_table3.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.12_method_comparison_repeat/unordered/kraken2/bact/bact"$i".report /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.12_method_comparison_repeat/unordered/kraken2/bact/"$i" "|" 1 1 count ;done;

for i in {1..10};do meta_otu_table3.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.12_method_comparison_repeat/unordered/kraken2/virus/virus"$i".report /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.12_method_comparison_repeat/unordered/kraken2/virus/"$i" "|" 1 1 count ;done;

for i in {1..10};do meta_otu_table3.py /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.12_method_comparison_repeat/unordered/kraken2/euk/euk"$i".report /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.12_method_comparison_repeat/unordered/kraken2/euk/"$i" "|" 1 1 count ;done;
