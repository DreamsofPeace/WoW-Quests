from datetime import datetime, timedelta, timezone

def exception_control(Exception):
	pass

def utcnow():
	return datetime.now(timezone.utc)

def htmlclose(openfile):
	print("</html>", end="\n", file=openfile)

def htmlheader(openfile,mytitle):
	print("<html>", end="\n", file=openfile)
	print("\t<head>", end="\n", file=openfile)
	print(f"\t\t<title>{mytitle}</title>", end="\n", file=openfile)
	print(
'''
\t\t<style>
\t\ttable {
\t\t\tborder-collapse:\tcollapse;
\t\t\tborder:\tsolid 1px;
\t\t}
\t\ttable th {
\t\t\tborder:\tsolid 1px;
\t\t\tfont-size:\t14px;
\t\t}
\t\ttable th.quest {
\t\t\ttext-align:\tleft;
\t\t}
\t\ttable td {
\t\t\tborder:\tsolid 1px;
\t\t\tfont-size:\t14px;
\t\t\ttext-align:\tleft;
\t\t}
\t\ttable td.Death-Knight {
\t\t\ttext-align:\tcenter;
\t\t\tbackground-color:\t#C41F3B;
\t\t}
\t\ttable td.Demon-Hunter {
\t\t\ttext-align:\tcenter;
\t\t\tbackground-color:\t#A330C9;
\t\t}
\t\ttable td.Druid {
\t\t\ttext-align:\tcenter;
\t\t\tbackground-color:\t#FF7D0A;
\t\t}
\t\ttable td.Evoker {
\t\t\ttext-align:\tcenter;
\t\t\tbackground-color:\t#33937F;
\t\t}
\t\ttable td.Hunter {
\t\t\ttext-align:\tcenter;
\t\t\tbackground-color:\t#ABD473;
\t\t}
\t\ttable td.Mage {
\t\t\ttext-align:\tcenter;
\t\t\tbackground-color:\t#69CCF0;
\t\t}
\t\ttable td.Monk {
\t\t\ttext-align:\tcenter;
\t\t\tbackground-color:\t#00FF96;
\t\t}
\t\ttable td.Paladin {
\t\t\ttext-align:\tcenter;
\t\t\tbackground-color:\t#F58CBA;
\t\t}
\t\ttable td.Priest {
\t\t\ttext-align:\tcenter;
\t\t\tbackground-color:\t#FFFFFF;
\t\t}
\t\ttable td.Rogue {
\t\t\ttext-align:\tcenter;
\t\t\tbackground-color:\t#FFF569;
\t\t}
\t\ttable td.Shaman {
\t\t\ttext-align:\tcenter;
\t\t\tbackground-color:\t#0070DE;
\t\t}
\t\ttable td.Warlock {
\t\t\ttext-align:\tcenter;
\t\t\tbackground-color:\t#9482C9;
\t\t}
\t\ttable td.Warrior {
\t\t\ttext-align:\tcenter;
\t\t\tbackground-color:\t#C79C6E;
\t\t}
\t\ttable tr.Complete {
\t\t\tbackground-color:\t#1EFF00;
\t\t}
\t\ttable tr.Incomplete {
\t\t\tbackground-color:\t#0070DD;
\t\t}
\t\ttable td.Complete {
\t\t\tbackground-color:\t#1EFF00;
\t\t\ttext-align:\tcenter;
\t\t\tvertical-align:\tmiddle;
\t\t\tfont-size:\t14px;
\t\t}
\t\ttable td.Incomplete {
\t\t\tbackground-color:\t#0070DD;
\t\t}
\t\ttable tr.Incomplete2 {
\t\t\tcolor:\t#000000;
\t\t\tbackground-color:\t#DC143C;
\t\t}
\t\t.r1{
\t\t\tcolor:\t#ff8040;
\t\t}
\t\t.r2{
\t\t\tcolor:\t#ffff00;
\t\t}
\t\t.r3{
\t\t\tcolor:\t#40bf40;
\t\t}
\t\t.r4{
\t\t\tcolor:\t#808080;
\t\t}
\t\t.hated{
\t\t\tbackground-color:\t#cc0000;
\t\t\tcolor:\t#000000;
\t\t}
\t\t.hostile{
\t\t\tbackground-color:\t#ff0000;
\t\t\tcolor:\t#000000;
\t\t}
\t\t.unfriendly{
\t\t\tbackground-color:\t#f26000;
\t\t\tcolor:\t#000000;
\t\t}
\t\t.neutral{
\t\t\tbackground-color:\t#e4e400;
\t\t\tcolor:\t#000000;
\t\t}
\t\t.friendly{
\t\t\tbackground-color:\t#33ff33;
\t\t\tcolor:\t#000000;
\t\t}
\t\t.honored{
\t\t\tbackground-color:\t#5fe65d;
\t\t\tcolor:\t#000000;
\t\t}
\t\t.revered{
\t\t\tbackground-color:\t#53e9bc;
\t\t\tcolor:\t#000000;
\t\t}
\t\t.exalted{
\t\t\tbackground-color:\t#2ee6e6;
\t\t\tcolor:\t#000000;
\t\t}
\t\t.blackout{
\t\t\tbackground-color:\t#000000;
\t\t\tcolor:\t#000000;
\t\t}
\t\tdiv {
\t\t\ttext-align:\tcenter;
\t\t\tvertical-align:\tmiddle;
\t\t}
\t\timg.icons {
\t\t\tcursor:\tpointer !important;
\t\t\tfloat:\tright;
\t\t\tmargin-left:\t1px;
\t\t\tmargin-right:\t1px;
\t\t\theight:\t16px;
\t\t\twidth:\t16px;
\t\t}
\t\timg.character {
\t\t\tmargin-left:\t1px;
\t\t\tmargin-right:\t1px;
\t\t\theight:\t80px;
\t\t\twidth:\t80px;
\t\t}
\t\t</style>
''', end="\n", file=openfile)
	print("\t</head>", end="\n", file=openfile)

def htmlbodyopen(openfile):
	print("<body>", end="\n", file=openfile)

def htmlbodyclose(openfile):
	print("</body>", end="\n", file=openfile)

def htmltableopen(openfile):
	print("<table>", end="\n", file=openfile)

def htmltableclose(openfile):
	print("</table>", end="\n", file=openfile)

def htmltabletdcharopen(openfile,myclass):
	print(f"\t<td class=\"{myclass}\">", end="\n", file=openfile)

def htmltabletdopen(openfile):
	print(f"\t<td>", end="\n", file=openfile)

def htmltabletdopenclass(openfile,myclass):
	print(f"\t<td class=\"{myclass}\">", end="\n", file=openfile)

def htmltabletdclose(openfile):
	print("\t</td>", end="\n", file=openfile)

def htmltabletropen(openfile):
	print("\t<tr>", end="\n", file=openfile)

def htmltabletrclose(openfile):
	print("\t</tr>", end="\n", file=openfile)

def htmldivopen(openfile):
	print("\t\t<div>", end="\n", file=openfile)

def htmldivclose(openfile):
	print("\t\t</div>", end="\n", file=openfile)

def htmltablethopen(openfile):
	print("\t\t<th>", end="\n", file=openfile)

def htmltablethopenquests(openfile):
	print("\t\t<th class=\"quests\">", end="\n", file=openfile)

def htmltablethclose(openfile):
	print("\t\t</th>", end="\n", file=openfile)

def htmlthcolspan(openfile,colspan,header):
	print(f"\t\t<th colspan=\"{colspan}\">{header}</th>", end="\n", file=openfile)

def htmlstraightimg(openfile,imgurl):
	print(f"\t\t\t<img class=\"character\" src=\"{imgurl}\">", end="\n", file=openfile)

def printdataheader(count,datatree,openfile):
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	htmltabletdclose(openfile)
	for number in datatree:
		if datatree[number]['charcter_class'] == "Death Knight":
			htmltabletdcharopen(openfile,"Death-Knight")
		elif datatree[number]['charcter_class'] == "Demon Hunter":
			htmltabletdcharopen(openfile,"Demon-Hunter")
		else:
			htmltabletdcharopen(openfile,datatree[number]['charcter_class'])
		htmldivopen(openfile)
		htmlstraightimg(openfile,datatree[number]['avatarurl'])
		htmldivclose(openfile)
		htmldivopen(openfile)
		print ("\t", end="", file=openfile)
		print (datatree[number]['name'], end="\n", file=openfile)
		htmldivclose(openfile)
		htmldivopen(openfile)
		print ("\t", end="", file=openfile)
		print (datatree[number]['realm_name'], end="\n", file=openfile)
		htmldivclose(openfile)
		htmldivopen(openfile)
		print ("\t", end="", file=openfile)
		print (datatree[number]['char_level'], end="\n", file=openfile)
		htmldivclose(openfile)
		htmldivopen(openfile)
		print ("\t", end="", file=openfile)
		print (datatree[number]['char_ilvl'], end="\n", file=openfile)
		htmldivclose(openfile)
		htmldivopen(openfile)
		if len(datatree[number]['wowheadurl']) > 20:
			wowheadurl = datatree[number]['wowheadurl']
			wowheadurl = wowheadurl.rstrip("\n")
			print ("\t\t<a href=\"",end="", file=openfile)
			print (wowheadurl, end="", file=openfile)
			print ("\">Wowhead</a>",end="\n", file=openfile)
		else:
			print ("&nbsp;",end="\n", file=openfile)
		htmldivclose(openfile)
		htmldivopen(openfile)
		if len(datatree[number]['wowofficialurl']) > 20:
			wowofficialurl = datatree[number]['wowofficialurl']
			wowofficialurl = wowofficialurl.rstrip("\n")
			print ("\t\t<a href=\"",end="", file=openfile)
			print (wowofficialurl, end="", file=openfile)
			print ("\">WoW Official</a>",end="\n", file=openfile)
		else:
			print ("&nbsp;",end="\n", file=openfile)
		htmldivclose(openfile)
		htmldivopen(openfile)
		if len(datatree[number]['renderurl']) > 20:
			renderurl = datatree[number]['renderurl']
			renderurl = renderurl.rstrip("\n")
			print ("\t\t<a href=\"",end="", file=openfile)
			print (renderurl, end="", file=openfile)
			print ("\">Render</a>",end="\n", file=openfile)
		else:
			print ("&nbsp;",end="\n", file=openfile)
		htmldivclose(openfile)
		htmltabletdclose(openfile)
	htmltabletrclose(openfile)

