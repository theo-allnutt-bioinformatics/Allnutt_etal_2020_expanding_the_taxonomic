This repository contains the scripts and data supplementary for the paper:

Expanding the taxonomic range in the fecal metagenome

Theo R. Allnutt, Alexandra J. Roth-Schulze, Leonard C. Harrison.

Walter and Eliza Hall Institute of Medical Research, Melbourne, VIC 3052, Australia and Department of Medical Biology, University of Melbourne, Melbourne, VIC 3010, Australia.



The directory 'expected_abundances/' contains the replicate simulations' expected species relative abundances, which were used to generate the metagenome simulations

The directory 'sim_abund' contains the simulated abundances for each taxonomic group separately and concatenated.

The file 'Abundance_model_fit.xlsx' shows the metagenome abundance data observed in our laboratoy from other studies that was used to fit an expected abundance profile to simulated metagenomes. The '.list' files contain lists of all the RefSeq genomes that were downloaded and used to draw from randomly for the metagenome simulations.

Scripts are organised into directories:

General python program wrappers and format conversion / parsing: programs/

Statistics and comparisons: stats/

Abundance profile and metagenome read simulations: simulation/

Unordered analyses: unordered/

Ordered analyses (method d example only): ordered/

N.B. scripts entitled 'kma' are the first step of CCMetagen using the kma mapper


Theo R. Allnutt, November, 2020.