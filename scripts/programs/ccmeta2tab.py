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

print(filelist)

for i in filelist:

	f=open(i,'r')
	
	outname = i.split("/")[-1].split(".")[0]
	
	g =open(outfolder+"/"+outname+".tab",'w')
	print(outfolder+"/"+outname+".tab")
	
	f.readline()
	
	for x in f:
	
		k=x.split(",")
		spp = k[-1].rstrip("\n")
		count=int(float(k[0])/150)
		#print(len(k[-1]),count)
		if len(k[-1])>1 and count>0:
		
			g.write(spp+"\t"+str(count)+"\n")
			
			
			
	g.close()
	f.close()
