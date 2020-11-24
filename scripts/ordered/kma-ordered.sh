source activate py3

kma shm -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/bact/bact -shmLvl 1

for i in {1..10};do kma -i /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/"$i".fasta -o /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-ordered/bact/"$i".kma -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/bact/bact -t 48 -1t1 -mem_mode -and -nc ;done;

kma shm -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/bact/bact -shmLvl 1 -destroy

gunzip /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-ordered/bact/*.gz
for i in {1..10};
do
echo $i
fragfile=/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-ordered/bact/"$i".kma.frag;
listfile=/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-ordered/bact/"$i".list;
fastafile=/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/"$i".fasta;
nohitfile=/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-ordered/bact/"$i"_nohit.fasta;
cut -f7 $fragfile > $listfile;
get-seqs-from-file-not.py $listfile $fastafile $nohitfile;
done;


kma shm -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/virus/virus -shmLvl 1

for i in {1..10};do kma -i /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-ordered/bact/"$i"_nohit.fasta -o /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-ordered/virus/"$i".kma -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/virus/virus -t 48 -1t1 -mem_mode -and -nc ;done;

kma shm -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/virus/virus -shmLvl 1 -destroy



gunzip /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-ordered/virus/*.gz
for i in {1..10};
do
echo $i
fragfile=/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-ordered/virus/"$i".kma.frag;
listfile=/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-ordered/virus/"$i".list;
fastafile=/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-ordered/bact/"$i"_nohit.fasta;
nohitfile=/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-ordered/virus/"$i"_nohit.fasta;
cut -f7 $fragfile > $listfile;
get-seqs-from-file-not.py $listfile $fastafile $nohitfile;
done;



kma shm -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/euk/euk -shmLvl 1

for i in {1..10};do kma -i /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-ordered/virus/"$i"_nohit.fasta -o /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-ordered/euk/"$i".kma -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/euk/euk -t 48 -1t1 -mem_mode -and -nc ;done;

kma shm -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/euk/euk -shmLvl 1 -destroy

