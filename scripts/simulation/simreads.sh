#metagenome illumina read simulation

#generate list of genomes and their expected abundances

simabund.py sim_abund/bact bact.list 0.97 250 350 1000 ~/db/all_genomes/ 20
simabund.py sim_abund/virus virus.list 0.0075 100 150 1000 ~/db/all_genomes/ 20
simabund.py sim_abund/euk euk.list 0.0027 100 150 5000 ~/db/all_genomes/ 20

for i in {1..20};do cat sim_abund/*_$i.abund >> sim_abund/sim$i.abund;done

#simulate metagenome reads
simreads-para.py "/stornext/HPCScratch/home/allnutt.t/d/082_benchmarking/sim_abund/*.abund" sim-fasta/ 150 10000000 0.001 20