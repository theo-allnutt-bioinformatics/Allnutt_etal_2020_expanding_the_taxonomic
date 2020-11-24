#!/usr/bin/env python
import sys
import re
import glob
import subprocess
import os

digits = re.compile(r'(\d+)')
def tokenize(filename):
    return tuple(int(token) if match else token
                 for token, match in
                 ((fragment, digits.search(fragment))
                  for fragment in digits.split(filename)))


folder = sys.argv[1] 
folder = os.path.expanduser(folder)

filelist=glob.glob(folder)

filelist.sort(key=tokenize)

print filelist
	
outfolder=sys.argv[2]

subprocess.Popen("mkdir -p %s" %outfolder,shell=True).wait()
subprocess.Popen("module load kraken2",shell=True).wait()

conf= sys.argv[3]

threads=sys.argv[4]

db= sys.argv[5]


for i in filelist:
	print 'Processing:',i
	filename=i.split("/")[-1].split(".")[0].split("_")[0]
	
	outname=outfolder+filename
	
	subprocess.Popen("/stornext/System/data/apps/kraken2/kraken2-2.0.7-beta/bin/kraken2 --db %s %s --threads %s --classified-out %s_hit.fasta --confidence %s --report %s.report --use-mpa-style --use-names -output %s.out --unclassified-out %s_nohit.fasta" %(db,i,threads,outname,conf,outname,outname,outname),shell=True).wait()



