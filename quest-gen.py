import sys, argparse

def printopenmodule(moduleid):
	print ("package BNet::", end="")
	print (moduleid, end="")
	print (";", end="\n")
	print ("", end="\n")
	print ("use strict;", end="\n")
	print ("use warnings;", end="\n")
	print ("", end="\n")

def printclosemodule():
	print ("", end="\n")
	print ("1;", end="\n")
	print ("", end="\n")

def printopensub(module):
	print ("sub ", end="")
	print (module, end="")
	print ("($%) {", end="\n")
	print ("\t", end="")
	print ("my ($count, %multiuserquests) = @_;", end="\n")
	print ("", end="\n")

def printclosesub():
	print ("", end="\n")
	print ("}", end="\n")
	print ("", end="\n")

def printheader(headerinfo):
	print ("\tBNet::Utils::groupheader (\"", end="")
	print (headerinfo, end="")
	print ("\");", end="\n")

def printheaderfaction(headerinfo,faction):
	print ("\tBNet::Utils::groupheader (\"", end="")
	print (headerinfo, end="")
	print (" <img src=\\\"https://wow.zamimg.com/images/icons/", end="")
	print (faction, end="")
	print (".png\\\">", end="")
	print ("\");", end="\n")

def printbarequest(questid,questname):
	print ("\tBNet::Utils::preprint ($count, '", end="")
	print (questid, end="")
	print ("', \"", end="")
	print (questname, end="")
	print ("\", %multiuserquests);", end="\n")

def printbarequestclass(questid,questname,myclass):
	print ("\tBNet::Utils::preprint ($count, '", end="")
	print (questid, end="")
	print ("', \"", end="")
	print (questname, end="")
	print (" <img align=\\\"right\\\" src=\\\"https://wow.zamimg.com/images/wow/icons/small/", end="")
	print (myclass, end="")
	print (".jpg\\\">\", %multiuserquests);", end="\n")

def printquestalliance(questid,questname):
	print ("\tBNet::Utils::preprint ($count, '", end="")
	print (questid, end="")
	print ("', \"", end="")
	print (questname, end="")
	print (" <img align=\\\"right\\\" src=\\\"https://wow.zamimg.com/images/icons/alliance.png\\\">\", %multiuserquests);", end="\n")

def printquesthorde(questid,questname):
	print ("\tBNet::Utils::preprint ($count, '", end="")
	print (questid, end="")
	print ("', \"", end="")
	print (questname, end="")
	print (" <img align=\\\"right\\\" src=\\\"https://wow.zamimg.com/images/icons/horde.png\\\">\", %multiuserquests);", end="\n")

#def printheader(header):


if __name__ == "__main__":
	
	controlcount = 0
	inputfile = sys.argv[1]
	outputfile = sys.argv[2]
#	modulename = sys.argv[3]
	modulename = "NULL"
	openedfile = open(inputfile)
	
	printopenmodule(outputfile)
	for line in openedfile:
		#Split line by Tabs
		splitbytab = line.split('\t')
#		print (splitbytab[0])
		#Set the module name on initial start
		if controlcount == 0:
			modulename = splitbytab[0]
			controlcount = 1
			printopensub (modulename)

		#Verify that the module name is the same
		if modulename == splitbytab[0]:
			fake = 0
		else:
			printclosesub()
			modulename = splitbytab[0]
			printopensub (modulename)

		#
		if splitbytab[1] == 'header':
			if splitbytab[3] == "alliance" or splitbytab[3] == "horde":
				printheaderfaction(splitbytab[2],splitbytab[3])
			else:
				printheader(splitbytab[2])
		else:
			if splitbytab[3] != "alliance" and splitbytab[3] != "horde":
				if not (splitbytab[4]):
					printbarequest(splitbytab[1], splitbytab[2])
				else:
					printbarequestclass(splitbytab[1], splitbytab[2], splitbytab[4])
		#	elif splitbytab[3] != "alliance" and splitbytab[3] != "horde": and ]:
		#		printbarequestclass(splitbytab[1], splitbytab[2])
		#	elif splitbytab[3] == "alliance" and not splitbytab[4]:
		#		printquestallianceclass(splitbytab[1], splitbytab[2])
			elif splitbytab[3] == "alliance":
				printquestalliance(splitbytab[1], splitbytab[2])
			elif splitbytab[3] == "horde":
				printquesthorde(splitbytab[1], splitbytab[2])
	printclosesub()
	printclosemodule()