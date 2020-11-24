#!/usr/bin/env python
import sys
import random
#made in 082.0

name1=sys.argv[1] #output
h=open(sys.argv[2],'r') #list of genomes in ref directory

prop=float(sys.argv[3]) #total proportion

nlow=int(sys.argv[4]) #lowest acceptable number

nhigh=int(sys.argv[5]) #highest acceptable number

tot=int(sys.argv[6]) #total number to test.. can be infinite but would not complete

dbfolder=sys.argv[7] 

nreps=int(sys.argv[8])

#model y = (a + x)^b 
#a =  3.322096
#b = -1.408582

for reps in range(1,nreps+1):
	print "rep",reps
	end1=0
	ptest=0
	#find range that covers desired total proportion
	for n in range(nlow,nhigh+1):
		err1=float(prop/n)
		if end1==1:
			break
		for i in range(1,tot-n+1): #sliding list start
			#print n,i
			if end1==1:
				break
			#print i,prop,ptest,err1
			ptest=0
			props=[]
			for x in range(i,i+n+1):
				p=float((3.322096 + x)**-1.408582)
				
				ptest=float(ptest+p)
				props.append(p)
				
			if ptest>prop-err1 and ptest<prop+err1:
				print 'error=',err1
				print 'prop=',ptest
				print 'n=',n
				
				end1=1
			
				break

	genomes=[]
	h.seek(0)
	for i in h:

		genomes.append(i.rstrip("\n"))
	
	g=open(name1+"_"+str(reps)+".abund",'w')
	for j in props:

		genome=random.choice(genomes)
		genomes.remove(genome)
		print genome,j
		g.write(dbfolder+"/"+genome+"\t"+str(j)+"\n")
				