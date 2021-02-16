import logging
import os
import argparse
import requests
import json
import io
import sys
from characterutil import *
from characterquests import *
from characterprof import *
from pprint import pprint
from requests.auth import HTTPBasicAuth

def data_imported_href(href,locale,access_token):
	if locale == "NULL":
		path = "&locale=en_US" + "&access_token=" + access_token
	else:
		path = "&locale=" + locale + "&access_token=" + access_token
	url = href + path
	return (requests.get(url))

def data_get_char_info(region,server,character,locale,namespace,access_token):

	if locale == "NULL":
		path = "/profile/wow/character/" + server + "/" + character + "?namespace=" + namespace + "&locale=en_US" + "&access_token=" + access_token
	else:
		path = "/profile/wow/character/" + server + "/" + character + "?namespace=" + namespace + "&locale=" + locale + "&access_token=" + access_token

	if region == 'cn':
		url = (f'https://www.battlenet.com.cn{path}')
	else:
		url = (f'https://{region}.api.blizzard.com{path}')
	return (requests.get(url))


def printsinglerep(count,datatree,openfile,repid):
	for number in datatree:
		try:
			if (
			datatree[number]['reputations'][repid]['standingname'] == "Best Friend" or 
			datatree[number]['reputations'][repid]['standingname'] == "Max Rank" or 
			datatree[number]['reputations'][repid]['standingname'] == "Rank 8" or 
			datatree[number]['reputations'][repid]['standingname'] == "Personal Wingman" or 
			datatree[number]['reputations'][repid]['standingname'] == "Timelord"
			):
				htmltabletdopenclass(openfile,"Exalted")
			elif (
			datatree[number]['reputations'][repid]['standingname'] == "Good Friend" or 
			datatree[number]['reputations'][repid]['standingname'] == "Rank 7" or 
			datatree[number]['reputations'][repid]['standingname'] == "Trusted Bodyguard" or 
			datatree[number]['reputations'][repid]['standingname'] == "Epoch-Mender"
			):
				htmltabletdopenclass(openfile,"Revered")
			elif (
			datatree[number]['reputations'][repid]['standingname'] == "Good Friend" or 
			datatree[number]['reputations'][repid]['standingname'] == "Rank 6" or 
			datatree[number]['reputations'][repid]['standingname'] == "Bodyguard" or 
			datatree[number]['reputations'][repid]['standingname'] == "Bronze Ally"
			):
				htmltabletdopenclass(openfile,"Honored")
			elif (
			datatree[number]['reputations'][repid]['standingname'] == "Friend" or 
			datatree[number]['reputations'][repid]['standingname'] == "Rank 5" or 
			datatree[number]['reputations'][repid]['standingname'] == "Chrono-Friend"
			):
				htmltabletdopenclass(openfile,"Friendly")
			elif (
			datatree[number]['reputations'][repid]['standingname'] == "Friend" or 
			datatree[number]['reputations'][repid]['standingname'] == "Rank 4" or 
			datatree[number]['reputations'][repid]['standingname'] == "Timehopper"
			):
				htmltabletdopenclass(openfile,"Neutral")
			elif (
			datatree[number]['reputations'][repid]['standingname'] == "Buddy" or 
			datatree[number]['reputations'][repid]['standingname'] == "Rank 3" or 
			datatree[number]['reputations'][repid]['standingname'] == "Temporal Trainee"
			):
				htmltabletdopenclass(openfile,"Unfriendly")
			elif (
			datatree[number]['reputations'][repid]['standingname'] == "Acquaintance" or 
			datatree[number]['reputations'][repid]['standingname'] == "Rank 2" or
			datatree[number]['reputations'][repid]['standingname'] == "Whelpling"
			):
				htmltabletdopenclass(openfile,"Hostile")
			elif (
			datatree[number]['reputations'][repid]['standingname'] == "Stranger" or 
			datatree[number]['reputations'][repid]['standingname'] == "Rank 1"
			):
				htmltabletdopenclass(openfile,"Hated")
			else:
				htmltabletdopenclass(openfile,datatree[number]['reputations'][repid]['standingname'])
			htmldivopen(openfile)
			print (datatree[number]['reputations'][repid]['standingname'], end="\n", file=openfile)
			htmldivclose(openfile)
			if (
			datatree[number]['reputations'][repid]['standingname'] != "Best Friend" and 
			datatree[number]['reputations'][repid]['standingname'] != "Max Rank" and 
			datatree[number]['reputations'][repid]['standingname'] != "Exalted"
			):
				print ("<div><span class=\"tip\" title=\"\">", end="", file=openfile)
				print (datatree[number]['reputations'][repid]['standingvalue'], end="", file=openfile)
				print ("&nbsp;/&nbsp;", end="", file=openfile)
				print (datatree[number]['reputations'][repid]['standingmax'], end="", file=openfile)
				print ("</span>", end="\n", file=openfile)
			htmldivclose(openfile)
			htmltabletdclose(openfile)
		except KeyError:
			print ("<td class=\"blackout\"></td>", end="\n", file=openfile)

def printsinglerepparagon(count,datatree,openfile,repid):
	for number in datatree:
		try:
			htmltabletdopenclass(openfile,datatree[number]['reputations'][repid]['standingname'])
			htmldivopen(openfile)
			print (datatree[number]['reputations'][repid]['standingname'], end="\n", file=openfile)
			htmldivclose(openfile)
			if datatree[number]['reputations'][repid]['standingname'] != "Exalted":
				print ("<div><span class=\"tip\" title=\"\">", end="", file=openfile)
				print (datatree[number]['reputations'][repid]['standingvalue'], end="", file=openfile)
				print ("&nbsp;/&nbsp;", end="", file=openfile)
				print (datatree[number]['reputations'][repid]['standingmax'], end="", file=openfile)
				print ("</span>", end="\n", file=openfile)
			elif datatree[number]['reputations'][repid]['standingname'] == "Exalted":
				htmldivopen(openfile)
				print ("<div><span class=\"tip\" title=\"\">", end="", file=openfile)
				print (datatree[number]['reputations'][repid]['paragonvalue'], end="", file=openfile)
				print ("&nbsp;/&nbsp;", end="", file=openfile)
				print (datatree[number]['reputations'][repid]['paragonmax'], end="", file=openfile)
				if datatree[number]['reputations'][repid]['paragonraw'] > 10000:
					myvalue = datatree[number]['reputations'][repid]['paragonraw']
					myvalue = str(myvalue)
					print (f"&nbsp;({myvalue[0]})</span>", end="\n", file=openfile)
				else:
					print ("</span>", end="\n", file=openfile)
				htmldivclose(openfile)
			htmldivclose(openfile)
			htmltabletdclose(openfile)
		except KeyError:
			print ("<td class=\"blackout\"></td>", end="\n", file=openfile)

def printreputation(count,datatree,openfile):
	totalreps = count + 1
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Guild", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1168)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Vanilla")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Argent Dawn", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,529)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Bloodsail Buccaneers", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,87)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Cenarion Circle", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,609)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Darkmoon Faire", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,909)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Timbermaw Hold", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,576)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Ravenholdt", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,349)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Syndicate", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,70)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Gelkis Clan Centaur", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,92)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Magram Clan Centaur", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,93)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Vanilla: Steamwheedle Cartel")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Booty Bay", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,21)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Everlook", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,577)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Gadgetzan", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,369)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Ratchet", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,470)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Vanilla: Raids")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Thorium Brotherhood", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,59)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Hydraxian Waterlords", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,749)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Brood of Nozdormu", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,910)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Vanilla: Alliance")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Stormwind", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,72)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Ironforge", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,47)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Gnomeregan", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,54)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Darnassus", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,69)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Exodar", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,930)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Gilneas", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1134)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Tushui Pandaren", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1353)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Vanilla: Horde")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Orgrimmar", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,76)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Thunder Bluff", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,81)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Undercity", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,68)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Darkspear Trolls", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,530)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Silvermoon City", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,911)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Tranquillien", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,922)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Bilgewater Cartel", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1133)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Huojin Pandaren", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1352)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Vanilla: PvP: Alliance")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The League of Arathor", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,209)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Stormpike Guard", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,730)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Silverwing Sentinels", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,890)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Bizmo's Brawlpub (Season 1) (Mists)", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1419)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Bizmo's Brawlpub (Season 2) (Warlords)", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1691)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Bizmo's Brawlpub (Season 3) (Legion)", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2011)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Bizmo's Brawlpub (Season 4) (BFA)", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2371)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Vanilla: PvP: Horde")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Defilers", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,510)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Frostwolf Clan", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,729)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Warsong Outriders", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,889)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Brawl'gar Arena (Season 1) (Mists)", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1374)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Brawl'gar Arena (Season 2) (Warlords)", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1690)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Brawl'gar Arena (Season 3) (Legion)", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2010)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Brawl'gar Arena (BfA)", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2372)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Vanilla: Removed")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Shen'dralar", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,809)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Zandalar Tribe", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,270)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Burning Crusade")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Cenarion Expedition", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,942)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Netherwing", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1015)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Consortium", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,933)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Sporeggar", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,970)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Ogri'la", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1038)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Burning Crusade: Shattrath")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Aldor", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,932)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Scryers", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,934)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Sha'tar", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,935)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Lower City", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1011)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Sha'tari Skyguard", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1031)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Shattered Sun Offensive", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1077)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Burning Crusade: Raids")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Violet Eye", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,967)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Keepers of Time", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,989)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Scale of the Sands", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,990)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Ashtongue Deathsworn", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1012)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Burning Crusade: Alliance")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Honor Hold", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,946)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Kurenai", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,978)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Burning Crusade: Horde")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Thrallmar", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,947)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Mag'har", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,941)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Wrath of the Lich King")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Argent Crusade", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1106)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Kirin Tor", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1090)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Knights of the Ebon Blade", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1098)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Ashen Verdict", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1156)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Kalu'ak", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1073)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Sons of Hodir", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1119)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Wyrmrest Accord", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1091)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Wrath of the Lich King: Shalozar Basin")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Frenzyheart Tribe", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1104)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Oracles", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1105)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Wrath of the Lich King: Alliance Vanguard")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Alliance Vanguard", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1037)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Explorers' League", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1068)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Frostborn", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1126)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Silver Covenant", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1094)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Valiance Expedition", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1050)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Wrath of the Lich King: Horde Expedition")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Horde Expedition", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1052)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Taunka", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1064)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Hand of Vengeance", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1067)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Sunreavers", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1124)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Warsong Offensive", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1085)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Cataclysm")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Avengers of Hyjal", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1204)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Guardians of Hyjal", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1158)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Ramkahen", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1173)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Therazane", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1171)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Earthen Ring", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1135)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Cataclysm: Alliance")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Wildhammer Clan", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1174)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Baradin's Wardens", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1177)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Cataclysm: Alliance")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Dragonmaw Clan", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1172)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Hellscream's Reach", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1178)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Mists of Pandaria")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Golden Lotus", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1269)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Shado-Pan", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1270)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Order of the Cloud Serpent", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1271)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Shado-Pan Assault", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1435)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Emperor Shaohao", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1492)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Klaxxi", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1337)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The August Celestials", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1341)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Lorewalkers", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1345)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Black Prince", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1359)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Mists of Pandaria: The Tillers")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Tillers", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1272)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Jogu the Drunk", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1273)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Ella", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1275)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Old Hillpaw", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1276)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Chee Chee", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1277)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Sho", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1278)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Haohan Mudclaw", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1279)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Tina Mudclaw", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1280)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Gina Mudclaw", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1281)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Fish Fellreed", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1282)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Farmer Fung", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1283)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Mists of Pandaria: The Anglers")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Anglers", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1302)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Nat Pagle", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1358)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Mists of Pandaria: Alliance")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Pearlfin Jinyu", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1241)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Operation: Shieldwall", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1376)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Kirin Tor Offensive", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1387)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Mists of Pandaria: Horde")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Forest Hozen", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1228)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Dominance Offensive", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1375)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Sunreaver Onslaught", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1388)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Warlords of Draenor")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Arakkoa Outcasts", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1515)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Steamwheedle Preservation Society", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1711)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Order of the Awakened", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1849)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Saberstalkers", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1850)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Warlords of Draenor: Barracks Bodyguards")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Tormmok", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1736)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Talonpriest Ishaal", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1737)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Leorajh", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1741)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Delvar Ironfist (Alliance)", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1733)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Defender Illona (Alliance)", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1738)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Vivianne (Horde)", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1739)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Aeda Brightdawn (Horde)", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1740)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Warlords of Draenor: Alliance")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Wrynn's Vanguard", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1682)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Sha'tari Defense", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1710)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Council of Exarchs", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1731)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Hand of the Prophet", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1847)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Warlords of Draenor: Horde")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Vol'jin's Spear", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1681)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Frostwolf Orcs", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1445)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Laughing Skull Orcs", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1708)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Vol'jin's Headhunters", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1848)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Legion")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Court of Farondis", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,1900)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Dreamweavers", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,1883)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Highmountain Tribe", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,1828)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Valarjar", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,1948)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Wardens", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,1894)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Nightfallen", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,1859)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Talon's Vengeance", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2018)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Armies of Legionfall", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2045)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Army of the Light", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2165)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Argussian Reach", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2170)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Chromie", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2135)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Legion: Fishing")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Conjurer Margoss", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1975)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Impus", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2102)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Ilyssia of the Waters", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2097)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Keeper Raynae", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2098)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Akule Riverhorn", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2099)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Corbyn", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2100)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Sha'leth", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2101)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Battle for Azeroth")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Champions of Azeroth", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2164)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Tortollan Seekers", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2163)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Rustbolt Resistance", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2391)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Rajani", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2415)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Uldum Accord", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2417)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Battle for Azeroth: Alliance")
	htmltablethclose(openfile)
	htmltabletropen(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("7th Legion", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2159)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Proudmoore Admiralty", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2160)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Order of Embers", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2161)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Storm's Wake", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2162)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Waveblade Ankoan", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2400)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Honeyback Hive", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2395)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Battle for Azeroth: Horde")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Zandalari Empire", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2103)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Talanji's Expedition", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2156)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Honorbound", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2157)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Voldunai", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2158)
	htmltabletrclose(openfile)
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Unshackled", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2373)
	htmltabletrclose(openfile)
	
	htmltabletropen(openfile)
	htmltablethopen(openfile)
	htmlthcolspan(openfile,totalreps,"Shadowlands: Unsorted")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)
	
	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Ascended", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2407)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Kleia and Pelagos", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2458)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Sika", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2459)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Undying Army", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2410)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Court of Harvesters", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2413)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Shadowlands", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2414)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Ve'nari", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2432)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Avowed", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2439)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Ember Court", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2445)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Baroness Vashj", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2446)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Lady Moonberry", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2447)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Mikanikos", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2448)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Countess", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2449)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Alexandros Mograine", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2450)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Hunt-Captain Korayn", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2451)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Polemarch Adrestes", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2452)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Rendle and Cudgelface", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2453)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Choofa", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2454)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Cryptkeeper Kassir", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2455)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Droman Aliothe", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2456)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Grandmaster Vole", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2457)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Stonehead", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2460)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Plague Deviser Marileth", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2461)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Stitchmasters", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2462)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("Court of Night", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2464)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("The Wild Hunt", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2465)
	htmltabletrclose(openfile)

def charreputationoutput(count,datatree,outputfile):
	mytitle = "Reputations"
	openfile = open(outputfile, "w")
	htmlheader(openfile,mytitle)
	htmlbodyopen(openfile)
	htmltableopen(openfile)
	printdataheader(count,datatree,openfile)
	printreputation(count,datatree,openfile)
	htmltableclose(openfile)
	htmlbodyclose(openfile)
	htmlclose(openfile)
	openfile.close()

def printsingleprofrecipe(count,datatree,openfile,recipeid,recipename):
	for number in datatree:
		try:
			if (
			datatree[number]['reputations'][repid]['standingname'] != "Best Friend" and 
			datatree[number]['reputations'][repid]['standingname'] != "Max Rank" and 
			datatree[number]['reputations'][repid]['standingname'] != "Exalted"
			):
				print ("<div><span class=\"tip\" title=\"\">", end="", file=openfile)
				print (datatree[number]['reputations'][repid]['standingvalue'], end="", file=openfile)
				print ("&nbsp;/&nbsp;", end="", file=openfile)
				print (datatree[number]['reputations'][repid]['standingmax'], end="", file=openfile)
				print ("</span>", end="\n", file=openfile)
			htmldivclose(openfile)
			htmltabletdclose(openfile)
		except KeyError:
			print ("<td class=\"blackout\"></td>", end="\n", file=openfile)

def printquestcompletion(count,datatree,openfile,recipeid,recipename):
	for number in datatree:
		try:
			if (
			datatree[number]['reputations'][repid]['standingname'] != "Best Friend" and 
			datatree[number]['reputations'][repid]['standingname'] != "Max Rank" and 
			datatree[number]['reputations'][repid]['standingname'] != "Exalted"
			):
				print ("<div><span class=\"tip\" title=\"\">", end="", file=openfile)
				print (datatree[number]['reputations'][repid]['standingvalue'], end="", file=openfile)
				print ("&nbsp;/&nbsp;", end="", file=openfile)
				print (datatree[number]['reputations'][repid]['standingmax'], end="", file=openfile)
				print ("</span>", end="\n", file=openfile)
			htmldivclose(openfile)
			htmltabletdclose(openfile)
		except KeyError:
			print ("<td class=\"blackout\"></td>", end="\n", file=openfile)

#def printprofessiontailoring(count,datatree,openfile):
#	totalreps = count + 1
#	htmltabletropen(openfile)
#	htmltabletdopen(openfile)
##	print ("Guild", end="\n", file=openfile)
#	htmltabletdclose(openfile)
##	printsingleprofrecipe(count,datatree,openfile,1168)
#	htmltabletrclose(openfile)

#def printprofessiontailoring(count,datatree,openfile):
#	totalreps = count + 1

'''
                     2537: {'recipes': [
21661,
21662,
21663,
21664,
21665,
21666,
21667,
21668,
21669,
21670,
21671,
21672,
21673,
21674,
21675,
21676,
21678,
21679,
21680,
21681,
21682,
21683,
21684,
21685,
21686,
21687,
21688,
21689,
21691,
21692,
21693,
21694,
21695,
21696,
21697,
21698,
21699,
21700,
21701,
21703,
21704,
21706,
21707,
21708,
21710,
21711,
21712,
21713,
21714,
21715,
21716,
21717,
24013,
24302,
24303,
24304,
24305,
24309,
24362,
24581,
24582,
24583,
24584,
39374,
39375,
39377,
39379]},
Tailoring: Cataclysm
74964	Bolt of Embersilk Cloth
75141	Dream of Skywall
75142	Dream of Deepholm
75144	Dream of Hyjal
75145	Dream of Ragnaros
75146	Dream of Azshara
75247	Embersilk Net
75248	Deathsilk Belt
75249	Deathsilk Bracers
75250	Enchanted 
75251	Deathsilk Shoulders
75252	Deathsilk Boots
75253	Deathsilk Gloves
75254	Deathsilk Leggings
75255	Ghostly Spellthread
75256	Deathsilk Cowl
75257	Deathsilk Robe
75258	Spiritmend Belt
75259	Spiritmend Bracers
75260	Spiritmend Shoulders
75261	Spiritmend Boots
75262	Spiritmend Gloves
75263	Spiritmend Leggings
75264	Embersilk Bag
75265	Otherworldly Bag
75266	Spiritmend Cowl
75267	Spiritmend Robe
75268	Hyjal Expedition Bag
75269	Vicious Fireweave Belt
75270	Vicious Embersilk Bracers
75288	Black Embersilk Gown
75289	High Society Top Hat
75290	Vicious Fireweave Bracers
75291	Vicious Embersilk Shoulders
75292	Vicious Fireweave Shoulders
75293	Vicious Embersilk Belt
75294	Vicious Fireweave Boots
75295	Vicious Embersilk Gloves
75296	Vicious Fireweave Gloves
75297	Vicious Embersilk Boots
75298	Belt of the Depths
75299	Dreamless Belt
75300	Breeches of Mended Nightmares
75301	Flame-Ascended Pantaloons
75302	Vicious Fireweave Pants
75303	Vicious Fireweave Robe
75304	Vicious Fireweave Cowl
75305	Vicious Embersilk Robe
75306	Vicious Embersilk Cowl
75307	Vicious Embersilk Pants
75308	Illusionary Bag
75309	Powerful Enchanted Spellthread
75310	Powerful Ghostly Spellthread
75597	Frosty Flying Carpet
94743	Dream of Destruction
99448	Grips of Altered Reality
99449	Don Tayo's Inferno Mittens
99459	Endless Dream Walkers
99460	Boots of the Black Flame
99537	Vicious Embersilk Cape
100585	Luxurious Silk Gem Bag
101920	World Mender's Pants
101921	Lavaquake Legwraps
101922	Dreamwraps of the Light
101923	Bracers of Unconquered Power
125496	Master's Spellthread
125497	Sanctified Spellthread
'''
#def printprofession(count,datatree,openfile):
#	printprofessionalchemy(count,datatree,openfile)
#	printprofessionblacksmith(count,datatree,openfile)
#	printprofessionenchanting(count,datatree,openfile)
#	printprofessionleatherworking(count,datatree,openfile)
#	printprofessionjewelcrafting(count,datatree,openfile)
#	printprofessiontailoring(count,datatree,openfile)
#	printprofessioncooking(count,datatree,openfile)
#	printprofessionmining(count,datatree,openfile)
#	printprofessionbotany(count,datatree,openfile)
#	printprofessionmining(count,datatree,openfile)
	
'''
2454	Legion Blacksmithing
2472	Warlords Blacksmithing
2473	Pandaren Blacksmithing
2474	Cataclysmic Blacksmithing
2475	Northrend Blacksmithing
2476	Legion Alchemy
2476	Outland Blacksmithing
2477	Vanilla Blacksmithing
2480	Warlords Alchemy
2481	Pandaren Alchemy
2482	Cataclysmic Alchemy
2483	Northrend Alchemy
2484	Outland Alchemy
2485	Vanilla Alchemy
2487	Legion Enchanting
2488	Warlords Enchanting
2489	Pandaren Enchanting
2491	Cataclysmic Enchanting
2492	Northrend Enchanting
2493	Outland Enchanting
2494	Vanilla Enchanting
2500	Legion Engineering
2501	Warlords Engineering
2502	Pandaren Engineering
2503	Cataclysmic Engineering
2504	Northrend Engineering
2505	Outland Engineering
2506	Vanilla Engineering
2508	Legion Inscription
2509	Warlords Inscription
2510	Pandaren Inscription
2511	Cataclysmic Inscription
2512	Northrend Inscription
2513	Outland Inscription
2514	Vanilla Inscription
2518	Legion Jewelcrafting
2519	Warlords Jewelcrafting
2520	Pandaren Jewelcrafting
2521	Cataclysmic Jewelcrafting
2522	Northrend Jewelcrafting
2523	Outland Jewelcrafting
2524	Vanilla Jewelcrafting
2526	Legion Leatherworking
2527	Warlords Leatherworking
2528	Pandaren Leatherworking
2529	Cataclysmic Leatherworking
2530	Northrend Leatherworking
2531	Outland Leatherworking
2532	Vanilla Leatherworking
2534	Legion Tailoring
2535	Warlords Tailoring
2536	Pandaren Tailoring
2537	Cataclysmic Tailoring
2538	Northrend Tailoring
2539	Outland Tailoring
2540	Vanilla Tailoring
2542	Legion Cooking
2543	Warlords Cooking
2544	Pandaren Cooking
2545	Cataclysmic Cooking
2546	Northrend Cooking
2547	Outland Cooking
2548	Vanilla Cooking
2550	Legion Herbalism
2551	Warlords Herbalism
2552	Pandaren Herbalism
2553	Cataclysmic Herbalism
2554	Northrend Herbalism
2555	Outland Herbalism
2556	Vanilla Herbalism
2558	Legion Skinning
2559	Warlords Skinning
2560	Pandaren Skinning
2561	Cataclysmic Skinning
2562	Northrend Skinning
2563	Outland Skinning
2564	Vanilla Skinning
2566	Legion Mining
2567	Warlords Mining
2568	Pandaren Mining
2569	Cataclysmic Mining
2570	Northrend Mining
2571	Outland Mining
2572	Vanilla Mining
2586	Legion Fishing
2587	Warlords Fishing
2588	Pandaren Fishing
2589	Cataclysmic Fishing
2590	Northrend Fishing
2591	Outland Fishing
2592	Vanilla Fishing
'''

'''
 1: {
     'professions': {2437: {'recipes': [38731,
                                        38737,
                                        38752,
                                        38756,
                                        40153,
                                        40211]},
                     2477: {'recipes': [1631, 1634, 1798, 6636]},
                     2541: {'recipes': [39619, 39625]},
                     2548: {'recipes': [1535, 1537, 4786]},
                     2565: {'recipes': [39277, 39286, 39317]},
                     2572: {'recipes': [3324, 39310]},
                     2585: {'recipes': []},
                     2586: {'recipes': []},
                     2587: {'recipes': []},
                     2588: {'recipes': []},
                     2589: {'recipes': []},
                     2590: {'recipes': []},
                     2591: {'recipes': []},
                     2592: {'recipes': []}},
     'realm_name': 'Malfurion',

'''

def client_creds(client_id, client_secret, region):
	path = '/oauth/token'

	payload = {
		'grant_type': 'client_credentials',
	}

	if region == 'cn':
		url = 'https://www.battlenet.com.cn' + path
	else:
		url = 'https://' + region + '.battle.net' + path

	logger.info('Fetching new token from: ' + url)

	now = utcnow()

	response = requests.post(url, data=payload, auth = HTTPBasicAuth(client_id, client_secret))
	logger.info(f'Token Retrieved at {now} UTC')

	client_cred_response = response.json()
	token = client_cred_response['access_token']
	expiration = now + timedelta(seconds=client_cred_response['expires_in'])
	logger.info(f'New token {token} expires at {expiration} UTC')
	return (token,expiration)

if __name__ == "__main__":

	logger = logging.getLogger('wowmultiquest')
	logger.setLevel(logging.INFO)
	handler = logging.StreamHandler()
	handler.setLevel(logging.INFO)
	formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
	handler.setFormatter(formatter)
	logger.addHandler(handler)
#	logger.info('Game Data API Example')

	parser = argparse.ArgumentParser()
	parser.add_argument('-if','--inputfile', help='File Listing characters (format=region,encoding(defaults to en_US),server,charactername,wowheadurl(optional))', required=True)
	parser.add_argument('-r','--region', help='Region (us|eu|kr|tw|cn)', required=False)
	parser.add_argument('-cid','--client_id', help='Client ID (needed if you are NOT using -ct)', required=False)
	parser.add_argument('-csec','--client_secret', help='Client Secret Key (needed if you are NOT using -ct)', required=False)
	parser.add_argument('-ct','--client_token', help='Client Access Token (already Retrieved from BNET)', required=False)
	parser.add_argument('-ofrep','--outputrepfile', help='Output filename for the reputation module. Recommended if using multiple modules (default is reputation.html)', required=False)
	parser.add_argument('-ofprof','--outputproffile', help='Output filename for the professions module. Recommended if using multiple modules (default is professions.html)', required=False)
	parser.add_argument('-ofquest','--outputquestfile', help='Output filename for the quests module. Recommended if using multiple modules (default is quests.html)', required=False)
##	parser.add_argument('-hs1','--hashsha256', help='Hash File using the SHA 256 Algorithm', action='store_true', required=False)

	args = parser.parse_args()
	clientid = args.client_id
	clientsc = args.client_secret
	clienttk = args.client_token
	charfile = args.inputfile
	region   = args.region
	outrep   = args.outputrepfile
	outprof  = args.outputproffile
	outquest = args.outputquestfile
	if not outrep:
		outrep = "reputation.html"
	if not outprof:
		outprof = "professions.html"
	if not outquest:
		outquest = "quests.html"
	token_expire = 0
	if clientid and clientsc and not clienttk:
		logger.info('Retrieving Access Token')
		access_token, token_expire = client_creds(clientid, clientsc, region)
	elif clienttk:
		logger.info('Using Provided Access Token')
		access_token = clienttk
	else:
		sys.exit("Neither a Client token (-ct) or Client ID (-cid) and Client Secret (-csec) were provided.\n Please use one of those options in order to use this script.")

	multicharacter = dict()
	characterfile = open(charfile, "rt")
	for count, characterline in enumerate(characterfile):
		if count > 30:
			continue

		linesplit  = characterline.split("\t")
		charregion = linesplit[0]
		locale     = linesplit[1]
		server     = linesplit[2]
		character  = linesplit[3]
		if charregion == "us":
			namespace = "profile-us"
		elif charregion == "eu":
			namespace = "profile-eu"
		elif charregion == "kr":
			namespace = "profile-kr"
		elif charregion == "tw":
			namespace = "profile-tw"
		elif charregion == "cn":
			namespace = "profile-cn"
		if not locale:
			locale = "en_US"
		logger.info(f'Getting basic profile info for {region} - {server} - {character}')
		charjson = data_get_char_info(region,server,character,locale,namespace,access_token)
		charinfo = charjson.json()
		canonname = charinfo['name']
		canonfact = charinfo['faction']['name']
		canoncnme = charinfo['character_class']['name']
		canonrnme = charinfo['realm']['name']
		canonlevl = charinfo['level']
		canonilvl = charinfo['equipped_item_level']
		if charinfo['gender']['type'] == "MALE":
			chargender = 0
		elif charinfo['gender']['type'] == "FEMALE":
			chargender = 1
		profhref  = charinfo['professions']['href']
		rephref   = charinfo['reputations']['href']
		mediahref = charinfo['media']['href']
		questshref = charinfo['quests']['href']
		logger.info(f'Getting profession info for {region} - {server} - {character}')
		charprofessions = data_imported_href(profhref,locale,access_token)
		charprofessions = charprofessions.json()
		logger.info(f'Getting reputation info for {region} - {server} - {character}')
		charreputation = data_imported_href(rephref,locale,access_token)
		charreputation = charreputation.json()
		logger.info(f'Getting media info for {region} - {server} - {character}')
#		logger.info(f'Media URL {mediahref}')
		charmedia = data_imported_href(mediahref,locale,access_token)
		charmedia = charmedia.json()
		logger.info(f'Getting quest info for {region} - {server} - {character}')
		tempslit = questshref.split("?")
		questshref = tempslit[0] + "/completed?" + tempslit[1]
		charquests = data_imported_href(questshref,locale,access_token)
		charquests = charquests.json()
		try:
			avatarurl = charmedia['avatar_url']
			busturl = charmedia['bust_url']
			renderurl = charmedia['render_url']
		except KeyError:
			for item in charmedia["assets"]:
				k = item["key"]
				v = item["value"]
				if k == "avatar":
					avatarurl = v
				elif k == "inset":
					busturl = v
				elif k == "main":
					renderurl = v

		multicharacter[count] = {}
		multicharacter[count]['reputations'] = {}
		multicharacter[count]['professions'] = {}
		multicharacter[count]['name'] = canonname
		multicharacter[count]['faction'] = canonfact
		multicharacter[count]['charcter_class'] = canoncnme
		multicharacter[count]['realm_name'] = canonrnme
		multicharacter[count]['char_level'] = canonlevl
		multicharacter[count]['char_ilvl'] = canonilvl
		multicharacter[count]['avatarurl'] = avatarurl
		multicharacter[count]['busturl'] = busturl
		multicharacter[count]['renderurl'] = renderurl
		for reputation in charreputation['reputations']:
			myid = reputation['faction']['id']
			multicharacter[count]['reputations'][myid] = {}
			multicharacter[count]['reputations'][myid]['factionname']   = reputation['faction']['name']
			multicharacter[count]['reputations'][myid]['factionid']     = reputation['faction']['id']
			multicharacter[count]['reputations'][myid]['standingvalue'] = reputation['standing']['value']
			multicharacter[count]['reputations'][myid]['standingmax']   = reputation['standing']['max']
			multicharacter[count]['reputations'][myid]['standingtier']  = reputation['standing']['tier']
			multicharacter[count]['reputations'][myid]['standingname']  = reputation['standing']['name']
			try:
				multicharacter[count]['reputations'][myid]['paragonraw']   = reputation['paragon']['raw']
				multicharacter[count]['reputations'][myid]['paragonvalue'] = reputation['paragon']['value']
				multicharacter[count]['reputations'][myid]['paragonmax']   = reputation['paragon']['max']
			except KeyError:
				pass
		for professions in charprofessions['primaries']:
			for tier in professions['tiers']:
				myid = tier['tier']['id']
				multicharacter[count]['professions'][myid] = {}
				multicharacter[count]['professions'][myid]['recipes'] = list()
				for recipe in tier['known_recipes']:
					multicharacter[count]['professions'][myid]['recipes'].append(recipe['id'])
		for professions in charprofessions['secondaries']:
			try:
				for tier in professions['tiers']:
					myid = tier['tier']['id']
					multicharacter[count]['professions'][myid] = {}
					multicharacter[count]['professions'][myid]['recipes'] = list()
					try:
						for recipe in tier['known_recipes']:
							multicharacter[count]['professions'][myid]['recipes'].append(recipe['id'])
					except KeyError:
						pass
			except KeyError:
				pass
		multicharacter[count]["quests"] = list()
		for quest in charquests['quests']:
			multicharacter[count]["quests"].append(quest['id'])
	characterfile.close()
	charreputationoutput(count,multicharacter,outrep)
	charquestsoutput(count,multicharacter,outquest)
	charprofessionoutput(count,multicharacter,outprof)
#	pprint (multicharacter)
