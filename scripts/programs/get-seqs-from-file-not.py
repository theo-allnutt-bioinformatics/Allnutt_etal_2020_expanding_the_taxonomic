#!/usr/bin/env python

#fasta must be one line sequence!!!!!!!!!!!

import sys

listfile1 = open(sys.argv[1],'r') #read list of ids not to save

f = open(sys.argv[2],'r') 
g = open(sys.argv[3],'w') 

x="start"
data={}
print("reading fasta")


for x in f:
	if x[0]==">":
		name1=x
		data[name1]=""
	else:
		data[name1]=x

print("removing hits")

c=0
seta=[]
for x in listfile1:
	seta.append(x)
setb=list(set(seta))
for i in setb:
	
	try:
		del data[">"+i]
		c=c+1
	except:
		pass

print(c,"hits removed")
	
print("writing")

c=0
for j in data.keys():
	c=c+1
	if len(data[j])>0:
		g.write(j+data[j])

print(c,"nohits written")
