
kma shm -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/virus/virus -shmLvl 1

for i in {1..10};do kma -i /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/"$i".fasta -o /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-oneshot/virus/"$i".kma -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/virus/virus -t 48 -1t1 -mem_mode -and -nc -nf ;done;

kma shm -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/virus/virus -shmLvl 1 -destroy

kma shm -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/bact/bact -shmLvl 1

for i in {1..10};do kma -i /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/"$i".fasta -o /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-oneshot/bact/"$i".kma -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/bact/bact -t 48 -1t1 -mem_mode -and -nc -nf ;done;

kma shm -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/bact/bact -shmLvl 1 -destroy

kma shm -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/euk/euk -shmLvl 1

for i in {1..10};do kma -i /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/fasta/"$i".fasta -o /stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/82.11ccmetagen/kma-oneshot/euk/"$i".kma -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/euk/euk -t 48 -1t1 -mem_mode -and -nc -nf ;done;

kma shm -t_db /stornext/HPCScratch/home/allnutt.t/db/kma/euk/euk -shmLvl 1 -destroy

