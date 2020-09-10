import argparse
if __name__ == "__main__":

	parser = argparse.ArgumentParser()
	parser.add_argument('-i','--inputfile', help='Inputfile', required=True)

	args = parser.parse_args()
	filename = args.inputfile
	
	myfile = open(filename, "rt")
	for line in myfile:
		line = line.rstrip("\n")
		mysplit = line.split("\t")
		if mysplit[0] == "rep":
			print ("\thtmltabletropen(openfile)")
			print ("\thtmltabletdopen(openfile)")
			print (f"\tprint (\"{mysplit[2]}\", end=\"\\n\", file=openfile)")
			print ("\thtmltabletdclose(openfile)")
			print (f"\tprintsinglerep(count,datatree,openfile,{mysplit[1]})")
			print ("\thtmltabletrclose(openfile)")
		elif mysplit[0] == "header":
			print ("\thtmltabletrclose(openfile)")
			print ("\thtmltablethopen(openfile)")
			print (f"\thtmlthcolspan(openfile,totalreps,\"{mysplit[1]}\")")
			print ("\thtmltablethclose(openfile)")
			print ("\thtmltabletropen(openfile)")
		elif mysplit[0] == "repparagon":
			print ("\thtmltabletropen(openfile)")
			print ("\thtmltabletdopen(openfile)")
			print (f"\tprint (\"{mysplit[2]}\", end=\"\\n\", file=openfile)")
			print ("\thtmltabletdclose(openfile)")
			print (f"\tprintsinglerepparagon(count,datatree,openfile,{mysplit[1]})")
			print ("\thtmltabletrclose(openfile)")