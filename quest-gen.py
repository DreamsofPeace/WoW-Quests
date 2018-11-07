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

def print_header(headerinfo):
	print ("\tBNet::Utils::groupheader (\"", end="")
	print (headerinfo, end="")
	print ("\");", end="\n")

def print_header_faction(headerinfo,faction):
	print ("\tBNet::Utils::groupheader (\"", end="")
	print (headerinfo, end="")
	print (" <img src=\\\"https://wow.zamimg.com/images/icons/", end="")
	print (faction, end="")
	print (".png\\\">", end="")
	print ("\");", end="\n")

def print_quest_no_faction(questid,questname):
	print ("\tBNet::Utils::preprint ($count, '", end="")
	print (questid, end="")
	print ("', \"", end="")
	print (questname, end="")
	print ("\", %multiuserquests);", end="\n")

def print_quest_no_faction_one_image(questid,questname,imagename):
	print ("\tBNet::Utils::preprint ($count, '", end="")
	print (questid, end="")
	print ("', \"", end="")
	print (questname, end="")
	print (" <img class=\\\"icons\\\" src=\\\"https://wow.zamimg.com/images/wow/icons/small/", end="")
	print (imagename, end="")
	print (".jpg\\\">\", %multiuserquests);", end="\n")

def print_quest_no_faction_two_image(questid,questname,imagenameone,imagenametwo):
	print ("\tBNet::Utils::preprint ($count, '", end="")
	print (questid, end="")
	print ("', \"", end="")
	print (questname, end="")
	print (" <img class=\\\"icons\\\" src=\\\"https://wow.zamimg.com/images/wow/icons/small/", end="")
	print (imagenameone, end="")
	print (".jpg\\\">", end="")
	print (" <img class=\\\"icons\\\" src=\\\"https://wow.zamimg.com/images/wow/icons/small/", end="")
	print (imagenametwo, end="")
	print (".jpg\\\">\", %multiuserquests);", end="\n")

def print_quest_faction(questid,questname,faction):
	print ("\tBNet::Utils::preprint ($count, '", end="")
	print (questid, end="")
	print ("', \"", end="")
	print (questname, end="")
	print (" <img class=\\\"icons\\\" src=\\\"https://wow.zamimg.com/images/icons/", end="")
	print (faction, end="")
	print (".png\\\">\", %multiuserquests);", end="\n")

def print_quest_faction_one_image(questid,questname,faction,imagename):
	print ("\tBNet::Utils::preprint ($count, '", end="")
	print (questid, end="")
	print ("', \"", end="")
	print (questname, end="")
	print (" <img class=\\\"icons\\\" src=\\\"https://wow.zamimg.com/images/icons/", end="")
	print (faction, end="")
	print (".png\\\">", end="")
	print (" <img class=\\\"icons\\\" src=\\\"https://wow.zamimg.com/images/wow/icons/small/", end="")
	print (imagename, end="")
	print (".jpg\\\">\", %multiuserquests);", end="\n")

def print_quest_faction_two_image(questid,questname,faction,imagenameone,imagenametwo):
	print ("\tBNet::Utils::preprint ($count, '", end="")
	print (questid, end="")
	print ("', \"", end="")
	print (questname, end="")
	print (" <img class=\\\"icons\\\" src=\\\"https://wow.zamimg.com/images/icons/", end="")
	print (faction, end="")
	print (".png\\\">", end="")
	print (" <img class=\\\"icons\\\" src=\\\"https://wow.zamimg.com/images/wow/icons/small/", end="")
	print (imagenameone, end="")
	print (".jpg\\\">", end="")
	print (" <img class=\\\"icons\\\" src=\\\"https://wow.zamimg.com/images/wow/icons/small/", end="")
	print (imagenametwo, end="")
	print (".jpg\\\">\", %multiuserquests);", end="\n")

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
		line = line.strip('\n')
		splitbytab = line.split('\t')
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
				print_header_faction(splitbytab[2],splitbytab[3])
			else:
				print_header(splitbytab[2])
		else:
			#Has Race Entry
			if len(splitbytab[5]) != 0:
				#Has Class Entry
				if len(splitbytab[4]) != 0:
					#Has Faction Flag
					if splitbytab[3] == "alliance" or splitbytab[3] == "horde":
						print_quest_faction_two_image(splitbytab[1], splitbytab[2], splitbytab[3], splitbytab[4], splitbytab[5])
					else:
						print_quest_no_faction_two_image(splitbytab[1], splitbytab[2], splitbytab[4], splitbytab[5])
				elif len(splitbytab[4]) == 0:
					#Has Faction Flag
					if splitbytab[3] == "alliance" or splitbytab[3] == "horde":
						print_quest_faction_one_image(splitbytab[1], splitbytab[2], splitbytab[3], splitbytab[5])
					else:
						print_quest_no_faction_one_image(splitbytab[1], splitbytab[2], splitbytab[5])
			elif len(splitbytab[5]) == 0:
				if len(splitbytab[4]) != 0:
					#Has Faction Flag
					if splitbytab[3] == "alliance" or splitbytab[3] == "horde":
						print_quest_faction_one_image(splitbytab[1], splitbytab[2], splitbytab[3], splitbytab[4])
					else:
						print_quest_no_faction_one_image(splitbytab[1], splitbytab[2], splitbytab[4])
				#Has No Class Entry
				elif len(splitbytab[4]) == 0:
					#Has Faction Flag
					if splitbytab[3] == "alliance" or splitbytab[3] == "horde":
						print_quest_faction(splitbytab[1], splitbytab[2], splitbytab[3])
					else:
						print_quest_no_faction(splitbytab[1], splitbytab[2])
	printclosesub()
	printclosemodule()