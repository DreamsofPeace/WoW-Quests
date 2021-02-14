import sys, argparse

def printopenmodule(outputopen):
	print ("import characterquests", end="\n", file=outputopen)
	print ("from characterutil import *", end="\n", file=outputopen)

def printopensub(module,openfile):
	print ("", end="\n", file=openfile)
	print (f"def {module}(count,datatree,openfile):", end="\n", file=openfile)

def printprofheader(headerinfo,openedfile):
	print (f"\tcharprofheader(count,openfile,\"{headerinfo}\")", end="\n", file=openedfile)

def printprofession(openedfile,prof,subprof,recipeid,recipename):
	#		   charprintprofession(count,datatree,openfile,164,2475,17883,"Cobalt Belt")
	print (f"\tcharprintprofession(count,datatree,openfile,{prof},{subprof},{recipeid},\"{recipename}\")", end="\n", file=openedfile)



if __name__ == "__main__":
	
	parser = argparse.ArgumentParser()
	parser.add_argument('-if','--inputfile',  help='Input filename', required=True)
	parser.add_argument('-of','--outputfile', help='Output filename', required=False)
#prof_bs_04_cata	164	2474	Cataclysm Blacksmithing: Armor	Light Elementium Belt	21801
#prof_bs_04_cata	164	2474	Cataclysm Blacksmithing: Armor	Vicious Pyrium Bracers	21809
#	charprintprofession(count,datatree,openfile,164,2475,17883,"Cobalt Belt")
	args = parser.parse_args()
	inputfile = args.inputfile
	outputfile = args.outputfile

	modulename = "NULL"
	headername = "NULL"
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
			mybool = printopensub (splitbytab[0],outputopen)
		if headername != splitbytab[3]:
			headername = splitbytab[3]
			mybool = printprofheader (splitbytab[3],outputopen)
		printprofession(outputopen,splitbytab[1],splitbytab[2],splitbytab[5],splitbytab[4])
#		elif:
#			
#		if splitbytab[3] == "alliance" and splitbytab[1] == 'header':
#			print_header_faction(splitbytab[2],splitbytab[3],outputopen)
#		elif splitbytab[3] == "horde" and splitbytab[1] == 'header':
#			print_header_faction(splitbytab[2],splitbytab[3],outputopen)
#		elif splitbytab[1] == 'header':
#			print_header(splitbytab[2],outputopen)
#		elif (
#			len(splitbytab[4]) != 0 and len(splitbytab[5]) != 0 and splitbytab[3] == "alliance" or 
#			len(splitbytab[4]) != 0 and len(splitbytab[5]) != 0 and splitbytab[3] == "horde"
#		):
#			print_charquestprintfactionclassrace(outputopen,splitbytab[1],splitbytab[2],splitbytab[3],splitbytab[4],splitbytab[5])
#		elif (
#			len(splitbytab[4]) != 0 and splitbytab[3] == "alliance" or 
#			len(splitbytab[4]) != 0 and splitbytab[3] == "horde"
#		):
#			print_charquestprintfactionclass(outputopen,splitbytab[1],splitbytab[2],splitbytab[3],splitbytab[4])
#		elif (
#			len(splitbytab[5]) != 0 and splitbytab[3] == "alliance" or 
#			len(splitbytab[5]) != 0 and splitbytab[3] == "horde"
#		):
#			print_charquestprintfactionrace(outputopen,splitbytab[1],splitbytab[2],splitbytab[3],splitbytab[5])
#		elif splitbytab[3] == "alliance" or splitbytab[3] == "horde":
#			print_charquestprintfaction(outputopen,splitbytab[1],splitbytab[2],splitbytab[3])
#		elif len(splitbytab[4]) != 0 and len(splitbytab[5]) != 0:
#			print_charquestprintclassrace(outputopen,splitbytab[1], splitbytab[2], splitbytab[4], splitbytab[5])
#		elif len(splitbytab[5]) != 0:
#			print_charquestprintrace(outputopen,splitbytab[1], splitbytab[2], splitbytab[5])
#		elif len(splitbytab[4]) != 0:
#			print_charquestprintclass(outputopen,splitbytab[1],splitbytab[2],splitbytab[4])
#		else:
#			print_charquestprint(outputopen,splitbytab[1],splitbytab[2])
#
#