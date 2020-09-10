import sys, argparse

def printopenmodule(outputopen):
	print ("import characterquests", end="\n", file=outputopen)
	print ("from characterutil import *", end="\n", file=outputopen)

def printopensub(module,openfile):
	print ("", end="\n", file=openfile)
	print (f"def {module}(count,datatree,openfile):", end="\n", file=openfile)

def print_header(headerinfo,openfile):
	print (f"\tcharacterquests.charquestheader(count,\"{headerinfo}\",openfile)", end="\n", file=openfile)

def print_header_faction(headerinfo,faction,openfile):
	print (f"\tcharacterquests.charquestheaderfaction(count,\"{headerinfo}\",\"{faction}\",openfile)", end="\n", file=openfile)

def print_charquestprint(openfile,qid,qname):
	print (f"\tcharacterquests.charquestprint(count,datatree,openfile,{qid},\"{qname}\")", end="\n", file=openfile)

def print_charquestprintfaction(openfile,qid,qname,faction):
	print (f"\tcharacterquests.charquestprintfaction(count,datatree,openfile,{qid},\"{qname}\",\"{faction}\")", end="\n", file=openfile)

def print_charquestprintfactionclass(openfile,qid,qname,faction,myclass):
	print (f"\tcharacterquests.charquestprintfactionclass(count,datatree,openfile,{qid},\"{qname}\",\"{faction}\",\"{myclass}\")", end="\n", file=openfile)

def print_charquestprintclass(openfile,qid,qname,myclass):
	print (f"\tcharacterquests.charquestprintclass(count,datatree,openfile,{qid},\"{qname}\",\"{myclass}\")", end="\n", file=openfile)

def print_charquestprintrace(openfile,qid,qname,race):
	print (f"\tcharacterquests.charquestprintrace(count,datatree,openfile,{qid},\"{qname}\",\"{race}\")", end="\n", file=openfile)

def print_charquestprintfactionrace(openfile,qid,qname,faction,race):
	print (f"\tcharacterquests.charquestprintfactionrace(count,datatree,openfile,{qid},\"{qname}\",\"{faction}\",\"{race}\")", end="\n", file=openfile)

def print_charquestprintfactionclassrace(openfile,qid,qname,faction,myclass,race):
	print (f"\tcharacterquests.charquestprintfactionclassrace(count,datatree,openfile,{qid},\"{qname}\",\"{faction}\",\"{myclass}\",\"{race}\")", end="\n", file=openfile)

def print_charquestprintclassrace(openfile,qid,qname,myclass,race):
	print (f"\tcharacterquests.charquestprintclass(count,datatree,openfile,{qid},\"{qname}\",\"{myclass}\",\"{race}\")", end="\n", file=openfile)

if __name__ == "__main__":
	
	parser = argparse.ArgumentParser()
	parser.add_argument('-if','--inputfile',  help='Input filename', required=True)
	parser.add_argument('-of','--outputfile', help='Output filename', required=False)
#(format=subroutinename\tquestnumber\tquestnameenglish\tfaction(optional)\tclass(optional)\trace(optional)
#(format=subroutinename\theader\theadername)
	args = parser.parse_args()
	inputfile = args.inputfile
	outputfile = args.outputfile

	modulename = "NULL"
	inputopen = open(inputfile, "r")
	outputopen = open(outputfile, "w")

	printopenmodule(outputopen)
	for line in inputopen:
		#Split line by Tabs
		line = line.strip('\n')
		splitbytab = line.split('\t')
		#Verify that the module name is the same
		if modulename != splitbytab[0]:
			modulename = splitbytab[0]
			printopensub (splitbytab[0],outputopen)

		if splitbytab[3] == "alliance" and splitbytab[1] == 'header':
			print_header_faction(splitbytab[2],splitbytab[3],outputopen)
		elif splitbytab[3] == "horde" and splitbytab[1] == 'header':
			print_header_faction(splitbytab[2],splitbytab[3],outputopen)
		elif splitbytab[1] == 'header':
			print_header(splitbytab[2],outputopen)
		elif (
			len(splitbytab[4]) != 0 and len(splitbytab[5]) != 0 and splitbytab[3] == "alliance" or 
			len(splitbytab[4]) != 0 and len(splitbytab[5]) != 0 and splitbytab[3] == "horde"
		):
			print_charquestprintfactionclassrace(outputopen,splitbytab[1],splitbytab[2],splitbytab[3],splitbytab[4],splitbytab[5])
		elif (
			len(splitbytab[4]) != 0 and splitbytab[3] == "alliance" or 
			len(splitbytab[4]) != 0 and splitbytab[3] == "horde"
		):
			print_charquestprintfactionclass(outputopen,splitbytab[1],splitbytab[2],splitbytab[3],splitbytab[4])
		elif (
			len(splitbytab[5]) != 0 and splitbytab[3] == "alliance" or 
			len(splitbytab[5]) != 0 and splitbytab[3] == "horde"
		):
			print_charquestprintfactionrace(outputopen,splitbytab[1],splitbytab[2],splitbytab[3],splitbytab[5])
		elif splitbytab[3] == "alliance" or splitbytab[3] == "horde":
			print_charquestprintfaction(outputopen,splitbytab[1],splitbytab[2],splitbytab[3])
		elif len(splitbytab[4]) != 0 and len(splitbytab[5]) != 0:
			print_charquestprintclassrace(outputopen,splitbytab[1], splitbytab[2], splitbytab[4], splitbytab[5])
		elif len(splitbytab[5]) != 0:
			print_charquestprintrace(outputopen,splitbytab[1], splitbytab[2], splitbytab[5])
		elif len(splitbytab[4]) != 0:
			print_charquestprintclass(outputopen,splitbytab[1],splitbytab[2],splitbytab[4])
		else:
			print_charquestprint(outputopen,splitbytab[1],splitbytab[2])

