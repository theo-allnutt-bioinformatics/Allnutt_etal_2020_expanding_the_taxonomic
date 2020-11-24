#!/usr/bin/env python

#written fo 082 benchmarking. prepare files for list_compare.py 

import sys
import os
import re
import glob
import subprocess as sp

digits = re.compile(r'(\d+)')
def tokenize(filename):
    return tuple(int(token) if match else token
                 for token, match in
                 ((fragment, digits.search(fragment))
                  for fragment in digits.split(filename)))
				  
folder = sys.argv[1] #working folder files
outfolder=sys.argv[2]


filelist=glob.glob(folder)

filelist.sort(key=tokenize)


for i in filelist:

	iname = i.split("/")[-1]

	p0=sp.Popen("sed -i 's/_/ /g' %s" %i,shell=True).wait()

	p1=sp.Popen("sed -i 's/Mycobacterium sinensis/Mycobacterium sinense/g' %s" %i,shell=True).wait()
	p2=sp.Popen("sed -i 's/Eggerthellaceae bacterium/Eggerthella sp/g' %s" %i,shell=True).wait()
	
	p3=sp.Popen("sed -i '/^name/ d' %s" %i,shell=True).wait()
	
	p3=sp.Popen("sed -i '/^#/ d' %s" %i,shell=True).wait()

	p4=sp.Popen("sed -i 's/\sp./sp/g' %s" %i,shell=True).wait()

	p5=sp.Popen("sed -i 's/\[//g' %s" %i,shell=True).wait()

	p6=sp.Popen("sed -i 's/\]//g' %s" %i,shell=True).wait()

	p7=sp.Popen("sed -i '/^$/d' %s" %i,shell=True).wait()

	p8=sp.Popen("sed -i '/^\t/ d' %s" %i,shell=True).wait()
	

	#p9=sp.Popen("source activate py2",shell=True).wait()
	
	p10=sp.Popen("mkdir -p %s/rename" %outfolder,shell=True).wait()
	
	p11=sp.Popen("binary_names.py %s %s/rename/" %(i,outfolder),shell=True).wait()
	
	p12=sp.Popen("mkdir -p %s/sort" %outfolder,shell=True).wait()
	
	p13=sp.Popen("sort -k2 -g -r -t$'\t' %s/rename/%s > %s/sort/%s" %(outfolder,iname,outfolder,iname),shell=True).wait()



	
	
	
	
