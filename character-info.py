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
#	logger.info(f'URL {url}')
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
			datatree[number]['reputations'][repid]['standingname'] == "Timelord" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 29" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 30" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 31" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 32"
			):
				htmltabletdopenclass(openfile,"Exalted")
			elif (
			datatree[number]['reputations'][repid]['standingname'] == "Good Friend" or 
			datatree[number]['reputations'][repid]['standingname'] == "Rank 7" or 
			datatree[number]['reputations'][repid]['standingname'] == "Trusted Bodyguard" or 
			datatree[number]['reputations'][repid]['standingname'] == "Epoch-Mender" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 25" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 26" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 27" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 28"
			):
				htmltabletdopenclass(openfile,"Revered")
			elif (
			datatree[number]['reputations'][repid]['standingname'] == "Good Friend" or 
			datatree[number]['reputations'][repid]['standingname'] == "Rank 6" or 
			datatree[number]['reputations'][repid]['standingname'] == "Bodyguard" or 
			datatree[number]['reputations'][repid]['standingname'] == "Bronze Ally" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 21" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 22" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 23" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 24"
			):
				htmltabletdopenclass(openfile,"Honored")
			elif (
			datatree[number]['reputations'][repid]['standingname'] == "Friend" or 
			datatree[number]['reputations'][repid]['standingname'] == "Rank 5" or 
			datatree[number]['reputations'][repid]['standingname'] == "Chrono-Friend" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 17" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 18" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 19" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 20" or 
			datatree[number]['reputations'][repid]['standingname'] == "Preferred"
			):
				htmltabletdopenclass(openfile,"Friendly")
			elif (
			datatree[number]['reputations'][repid]['standingname'] == "Friend" or 
			datatree[number]['reputations'][repid]['standingname'] == "Rank 4" or 
			datatree[number]['reputations'][repid]['standingname'] == "Timehopper" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 13" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 14" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 15" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 16"
			):
				htmltabletdopenclass(openfile,"Neutral")
			elif (
			datatree[number]['reputations'][repid]['standingname'] == "Buddy" or 
			datatree[number]['reputations'][repid]['standingname'] == "Rank 3" or 
			datatree[number]['reputations'][repid]['standingname'] == "Temporal Trainee" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 9" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 10" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 11" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 12"
			):
				htmltabletdopenclass(openfile,"Unfriendly")
			elif (
			datatree[number]['reputations'][repid]['standingname'] == "Acquaintance" or 
			datatree[number]['reputations'][repid]['standingname'] == "Rank 2" or
			datatree[number]['reputations'][repid]['standingname'] == "Whelpling" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 5" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 6" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 7" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 8"
			):
				htmltabletdopenclass(openfile,"Hostile")
			elif (
			datatree[number]['reputations'][repid]['standingname'] == "Stranger" or 
			datatree[number]['reputations'][repid]['standingname'] == "Rank 1" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 1" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 2" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 3" or 
			datatree[number]['reputations'][repid]['standingname'] == "Renown 4"
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

	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1168\">Guild</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1168)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Vanilla")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=529\">Argent Dawn</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,529)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=87\">Bloodsail Buccaneers</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,87)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=609\">Cenarion Circle</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,609)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=909\">Darkmoon Faire</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,909)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=576\">Timbermaw Hold</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,576)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=349\">Ravenholdt</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,349)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=70\">Syndicate</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,70)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=92\">Gelkis Clan Centaur</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,92)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=93\">Magram Clan Centaur</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,93)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Vanilla: Steamwheedle Cartel")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=21\">Booty Bay</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,21)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=577\">Everlook</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,577)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=369\">Gadgetzan</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,369)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=470\">Ratchet</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,470)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Vanilla: Raids")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=59\">Thorium Brotherhood</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,59)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=749\">Hydraxian Waterlords</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,749)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=910\">Brood of Nozdormu</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,910)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Vanilla: Alliance")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=72\">Stormwind</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,72)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=47\">Ironforge</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,47)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=54\">Gnomeregan</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,54)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=69\">Darnassus</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,69)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=930\">Exodar</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,930)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1134\">Gilneas</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1134)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1353\">Tushui Pandaren</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1353)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2524\">Obsidian Warders</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2524)
	htmltabletrclose(openfile)
	
	htmltabletropen(openfile)
	htmlthcolspan(openfile,totalreps,"Vanilla: Horde")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=76\">Orgrimmar</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,76)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=81\">Thunder Bluff</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,81)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=68\">Undercity</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,68)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=530\">Darkspear Trolls</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,530)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=911\">Silvermoon City</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,911)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=922\">Tranquillien</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,922)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1133\">Bilgewater Cartel</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1133)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1352\">Huojin Pandaren</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1352)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2523\">Dark Talons</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2523)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Vanilla: PvP: Alliance")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=209\">The League of Arathor</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,209)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=730\">Stormpike Guard</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,730)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=890\">Silverwing Sentinels</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,890)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1419\">Bizmo's Brawlpub (Season 1) (Mists)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1419)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1691\">Bizmo's Brawlpub (Season 2) (Warlords)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1691)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2011\">Bizmo's Brawlpub (Season 3) (Legion)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2011)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2371\">Bizmo's Brawlpub (Season 4) (BFA)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2371)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Vanilla: PvP: Horde")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=510\">The Defilers</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,510)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=729\">Frostwolf Clan</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,729)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=889\">Warsong Outriders</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,889)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1374\">Brawl'gar Arena (Season 1) (Mists)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1374)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1690\">Brawl'gar Arena (Season 2) (Warlords)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1690)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2010\">Brawl'gar Arena (Season 3) (Legion)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2010)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2372\">Brawl'gar Arena (BfA)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2372)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Vanilla: Removed")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=809\">Shen'dralar</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,809)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=270\">Zandalar Tribe</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,270)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	printdataheader(count,datatree,openfile)

	htmlthcolspan(openfile,totalreps,"Burning Crusade")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=942\">Cenarion Expedition</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,942)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1015\">Netherwing</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1015)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=933\">The Consortium</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,933)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=970\">Sporeggar</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,970)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1038\">Ogri'la</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1038)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Burning Crusade: Shattrath")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=932\">The Aldor</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,932)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=934\">The Scryers</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,934)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=935\">The Sha'tar</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,935)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1011\">Lower City</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1011)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1031\">Sha'tari Skyguard</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1031)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1077\">Shattered Sun Offensive</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1077)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Burning Crusade: Raids")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=967\">The Violet Eye</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,967)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=989\">Keepers of Time</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,989)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=990\">The Scale of the Sands</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,990)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1012\">Ashtongue Deathsworn</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1012)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Burning Crusade: Alliance")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=946\">Honor Hold</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,946)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=978\">Kurenai</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,978)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Burning Crusade: Horde")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=947\">Thrallmar</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,947)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=941\">The Mag'har</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,941)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	printdataheader(count,datatree,openfile)

	htmlthcolspan(openfile,totalreps,"Wrath of the Lich King")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1106\">Argent Crusade</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1106)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1090\">Kirin Tor</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1090)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1098\">Knights of the Ebon Blade</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1098)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1156\">The Ashen Verdict</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1156)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1073\">The Kalu'ak</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1073)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1119\">The Sons of Hodir</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1119)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1091\">The Wyrmrest Accord</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1091)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Wrath of the Lich King: Shalozar Basin")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1104\">Frenzyheart Tribe</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1104)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1105\">The Oracles</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1105)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Wrath of the Lich King: Alliance Vanguard")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1037\">Alliance Vanguard</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1037)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1068\">Explorers' League</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1068)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1126\">The Frostborn</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1126)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1094\">The Silver Covenant</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1094)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1050\">Valiance Expedition</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1050)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Wrath of the Lich King: Horde Expedition")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1052\">Horde Expedition</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1052)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1064\">The Taunka</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1064)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1067\">The Hand of Vengeance</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1067)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1124\">The Sunreavers</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1124)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1085\">Warsong Offensive</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1085)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	printdataheader(count,datatree,openfile)

	htmlthcolspan(openfile,totalreps,"Cataclysm")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1204\">Avengers of Hyjal</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1204)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1158\">Guardians of Hyjal</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1158)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1173\">Ramkahen</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1173)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1171\">Therazane</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1171)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1135\">The Earthen Ring</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1135)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Cataclysm: Alliance")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1174\">Wildhammer Clan</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1174)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1177\">Baradin's Wardens</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1177)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Cataclysm: Alliance")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1172\">Dragonmaw Clan</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1172)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1178\">Hellscream's Reach</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1178)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	printdataheader(count,datatree,openfile)

	htmlthcolspan(openfile,totalreps,"Mists of Pandaria")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1269\">Golden Lotus</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1269)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1270\">Shado-Pan</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1270)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1271\">Order of the Cloud Serpent</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1271)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1435\">Shado-Pan Assault</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1435)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1492\">Emperor Shaohao</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1492)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1337\">The Klaxxi</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1337)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1341\">The August Celestials</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1341)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1345\">The Lorewalkers</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1345)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1359\">The Black Prince</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1359)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Mists of Pandaria: The Tillers")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1272\">The Tillers</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1272)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1273\">Jogu the Drunk</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1273)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1275\">Ella</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1275)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1276\">Old Hillpaw</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1276)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1277\">Chee Chee</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1277)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1278\">Sho</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1278)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1279\">Haohan Mudclaw</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1279)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1280\">Tina Mudclaw</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1280)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1281\">Gina Mudclaw</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1281)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1282\">Fish Fellreed</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1282)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1283\">Farmer Fung</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1283)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Mists of Pandaria: The Anglers")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1302\">The Anglers</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1302)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1358\">Nat Pagle</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1358)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Mists of Pandaria: Alliance")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1241\">Pearlfin Jinyu</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1241)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1376\">Operation: Shieldwall</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1376)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1387\">Kirin Tor Offensive</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1387)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Mists of Pandaria: Horde")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1228\">Forest Hozen</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1228)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1375\">Dominance Offensive</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1375)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1388\">Sunreaver Onslaught</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1388)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	printdataheader(count,datatree,openfile)

	htmlthcolspan(openfile,totalreps,"Warlords of Draenor")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1515\">Arakkoa Outcasts</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1515)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1711\">Steamwheedle Preservation Society</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1711)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1849\">Order of the Awakened</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1849)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1850\">The Saberstalkers</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1850)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Warlords of Draenor: Barracks Bodyguards")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1736\">Tormmok</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1736)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1737\">Talonpriest Ishaal</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1737)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1741\">Leorajh</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1741)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1733\">Delvar Ironfist (Alliance)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1733)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1738\">Defender Illona (Alliance)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1738)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1739\">Vivianne (Horde)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1739)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1740\">Aeda Brightdawn (Horde)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1740)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Warlords of Draenor: Alliance")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1682\">Wrynn's Vanguard</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1682)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1710\">Sha'tari Defense</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1710)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1731\">Council of Exarchs</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1731)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1847\">Hand of the Prophet</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1847)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Warlords of Draenor: Horde")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1681\">Vol'jin's Spear</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1681)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1445\">Frostwolf Orcs</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1445)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1708\">Laughing Skull Orcs</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1708)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1848\">Vol'jin's Headhunters</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1848)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	printdataheader(count,datatree,openfile)

	htmlthcolspan(openfile,totalreps,"Legion")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1900\">Court of Farondis</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,1900)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1883\">Dreamweavers</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,1883)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1828\">Highmountain Tribe</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,1828)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1948\">Valarjar</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,1948)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1894\">The Wardens</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,1894)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1859\">The Nightfallen</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,1859)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2018\">Talon's Vengeance</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2018)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2045\">Armies of Legionfall</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2045)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2165\">Army of the Light</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2165)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2170\">Argussian Reach</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2170)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2135\">Chromie</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2135)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Legion: Fishing")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=1975\">Conjurer Margoss</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,1975)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2102\">Impus</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2102)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2097\">Ilyssia of the Waters</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2097)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2098\">Keeper Raynae</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2098)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2099\">Akule Riverhorn</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2099)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2100\">Corbyn</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2100)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2101\">Sha'leth</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2101)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	printdataheader(count,datatree,openfile)

	htmlthcolspan(openfile,totalreps,"Battle for Azeroth")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2164\">Champions of Azeroth</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2164)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2163\">Tortollan Seekers</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2163)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2391\">Rustbolt Resistance</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2391)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2415\">Rajani</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2415)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2417\">Uldum Accord</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2417)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Battle for Azeroth: Alliance")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2159\">7th Legion</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2159)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2160\">Proudmoore Admiralty</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2160)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2161\">Order of Embers</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2161)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2162\">Storm's Wake</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2162)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2400\">Waveblade Ankoan</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2400)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2395\">Honeyback Hive</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2395)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmlthcolspan(openfile,totalreps,"Battle for Azeroth: Horde")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2103\">Zandalari Empire</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2103)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2156\">Talanji's Expedition</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2156)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2157\">The Honorbound</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2157)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2158\">Voldunai</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2158)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2373\">The Unshackled</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2373)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)

	printdataheader(count,datatree,openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)

	htmlthcolspan(openfile,totalreps,"Shadowlands: Unsorted")
	htmltablethclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2407\">The Ascended</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2407)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2458\">Kleia and Pelagos</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2458)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2459\">Sika</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2459)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2410\">The Undying Army</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2410)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2413\">Court of Harvesters</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2413)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2414\">Shadowlands</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2414)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2432\">Ve'nari</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2432)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2439\">The Avowed</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2439)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2445\">The Ember Court</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2445)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2446\">Baroness Vashj</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2446)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2447\">Lady Moonberry</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2447)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2448\">Mikanikos</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2448)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2449\">The Countess</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2449)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2450\">Alexandros Mograine</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2450)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2451\">Hunt-Captain Korayn</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2451)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2452\">Polemarch Adrestes</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2452)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2453\">Rendle and Cudgelface</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2453)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2454\">Choofa</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2454)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2455\">Cryptkeeper Kassir</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2455)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2456\">Droman Aliothe</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2456)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2457\">Grandmaster Vole</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2457)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2460\">Stonehead</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2460)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2461\">Plague Deviser Marileth</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2461)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2462\">Stitchmasters</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2462)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2464\">Court of Night</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2464)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2465\">The Wild Hunt</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2465)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2472\">The Archivists' Codex</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2472)
	htmltabletrclose(openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2470\">Death's Advance</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerepparagon(count,datatree,openfile,2470)
	htmltabletrclose(openfile)

	printdataheader(count,datatree,openfile)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmlthcolspan(openfile,totalreps,"Dragonscale")
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2507\">Dragonscale Expedition</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2507)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2508\">Dragonscale Expedition (Paragon)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2508)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2547\">Dragonscale Expedition (Renown)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2547)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2503\">Maruuk Centaur</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2503)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2504\">Maruuk Centaur (Paragon)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2504)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2545\">Maruuk Centaur (Renown)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2545)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2511\">Iskaara Tuskarr</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2511)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2551\">Iskaara Tuskarr (Paragon)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2551)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2546\">Iskaara Tuskarr (Renown)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2546)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2512\">Clan Aylaag</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2512)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2555\">Clan Kaighan</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2555)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2520\">Clan Nokhud</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2520)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2521\">Clan Nokhud (Paragon)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2521)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2513\">Clan Ohn'ir</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2513)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2509\">Clan Shikaar</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2509)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2522\">Clan Teerai</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2522)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2554\">Clan Toghus</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2554)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2542\">Clan Ukhel</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2542)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2526\">Winterpelt Furbolg</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2526)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2510\">Valdrakken Accord</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2510)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2552\">Valdrakken Accord (Paragon)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2552)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2548\">Valdrakken Accord (Renown)</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2548)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2544\">Artisan's Consortium - Dragon Isles Branch</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2544)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2550\">Cobalt Assembly</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2550)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2518\">Sabellian</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2518)
	htmltabletrclose(openfile)

	htmltabletropen(openfile)
	htmltabletdopen(openfile)
	print ("<a href=\"https://www.wowhead.com/faction=2517\">Wrathion</a>", end="\n", file=openfile)
	htmltabletdclose(openfile)
	printsinglerep(count,datatree,openfile,2517)
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

#def clearedencounters(count,datatree,openfile,charencdungeons,charencraids,locale,access_token):
#	#data_imported_href(profhref,locale,access_token)
#	
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
	parser.add_argument('-ofenc','--outputencountersfile', help='Output filename for the encounters module. Recommended if using multiple modules (default is encounters.html)', required=False)


	args = parser.parse_args()
	clientid = args.client_id
	clientsc = args.client_secret
	clienttk = args.client_token
	charfile = args.inputfile
	region   = args.region
	outrep   = args.outputrepfile
	outprof  = args.outputproffile
	outquest = args.outputquestfile
	ofenc    = args.outputencountersfile
	if not outrep:
		outrep   = "reputation.html"
	if not outprof:
		outprof  = "professions.html"
	if not outquest:
		outquest = "quests.html"
	if not ofenc:
		ofenc    = "encounters.html"
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
		wowheadurl = linesplit[4]
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
		encountershref = charinfo['encounters']['href']
		questshref = charinfo['quests']['href']
		encountershref = charinfo['encounters']['href']

		logger.info(f'Getting profession info for {region} - {server} - {character}')
		charprofessions = data_imported_href(profhref,locale,access_token)
		charprofessions = charprofessions.json()

		logger.info(f'Getting reputation info for {region} - {server} - {character}')
		charreputation = data_imported_href(rephref,locale,access_token)
		charreputation = charreputation.json()

		logger.info(f'Getting media info for {region} - {server} - {character}')
		charmedia = data_imported_href(mediahref,locale,access_token)
		charmedia = charmedia.json()
		charencounter = data_imported_href(encountershref,locale,access_token)
		charencounter = charencounter.json()

		charencdungeonsurl = charencounter['dungeons']['href']
		charencraidsurl = charencounter['raids']['href']
		
		logger.info(f'Getting encounters (dungeons) info for {region} - {server} - {character}')
		charencounterdungeon = data_imported_href(charencdungeonsurl,locale,access_token)
		charencounterdungeon = charencounterdungeon.json()

		logger.info(f'Getting encounters (raids) info for {region} - {server} - {character}')
		charencounterraids = data_imported_href(charencraidsurl,locale,access_token)
		charencounterraids = charencounterraids.json()
#		pprint (charencounterdungeon)
#		pprint (charencraids)
#		logger.info(f'{region} - {server} - {character} - dungeon encounters url {charencdungeons}')
#		logger.info(f'{region} - {server} - {character} - raid encounters url {charencraids}')
		try:
			for key in charmedia["assets"]:
				k = key["key"]
				v = key["value"]
				if k == "avatar":
					avatarurl = v
				elif k == "inset":
					busturl = v
				elif k == "main":
					renderurl = v
		except:
			avatarurl  = charmedia['avatar_url']
			busturl    = charmedia['bust_url']
			renderurl  = charmedia['render_url']
			
		logger.info(f'Getting quest info for {region} - {server} - {character}')
		tempslit = questshref.split("?")
		questshref = tempslit[0] + "/completed?" + tempslit[1]
		charquests = data_imported_href(questshref,locale,access_token)
		charquests = charquests.json()
		multicharacter[count] = {}
		multicharacter[count]['reputations']    = {}
		multicharacter[count]['professions']    = {}
		multicharacter[count]['name']           = canonname
		multicharacter[count]['faction']        = canonfact
		multicharacter[count]['charcter_class'] = canoncnme
		multicharacter[count]['realm_name']     = canonrnme
		multicharacter[count]['char_level']     = canonlevl
		multicharacter[count]['char_ilvl']      = canonilvl
		multicharacter[count]['avatarurl']      = avatarurl
		multicharacter[count]['busturl']        = busturl
		multicharacter[count]['renderurl']      = renderurl
#		multicharacter[count]['dungeonurl']     = charencdungeons
#		multicharacter[count]['raidsurl']       = charencraids
		try:
			multicharacter[count]['wowheadurl'] = wowheadurl
		except KeyError:
			pass
		for reputation in charreputation['reputations']:
			myid = reputation['faction']['id']
			multicharacter[count]['reputations'][myid] = {}
			multicharacter[count]['reputations'][myid]['factionname']   = reputation['faction']['name']
			multicharacter[count]['reputations'][myid]['factionid']     = reputation['faction']['id']
			multicharacter[count]['reputations'][myid]['standingvalue'] = reputation['standing']['value']
			multicharacter[count]['reputations'][myid]['standingmax']   = reputation['standing']['max']
			if (
				myid == 2507 or
				myid == 2503 or
				myid == 2510 or
				myid == 2511
				):
				multicharacter[count]['reputations'][myid]['standingtier']  = reputation['standing']['renown_level']
				multicharacter[count]['reputations'][myid]['standingname']  = reputation['standing']['name']
			else:
				multicharacter[count]['reputations'][myid]['standingtier']  = reputation['standing']['tier']
				multicharacter[count]['reputations'][myid]['standingname']  = reputation['standing']['name']
			try:
				multicharacter[count]['reputations'][myid]['paragonraw']   = reputation['paragon']['raw']
				multicharacter[count]['reputations'][myid]['paragonvalue'] = reputation['paragon']['value']
				multicharacter[count]['reputations'][myid]['paragonmax']   = reputation['paragon']['max']
			except KeyError:
				pass

		if 'primaries' not in charprofessions:
			multicharacter[count].setdefault('error',{})
			multicharacter[count]['error'].setdefault('professions',{})
			multicharacter[count]['error']['professions']['primary'] = 0
		else:
			for professions in charprofessions['primaries']:
				for tier in professions['tiers']:
					myid = tier['tier']['id']
					multicharacter[count]['professions'][myid] = {}
					multicharacter[count]['professions'][myid]['recipes'] = list()
					for recipe in tier['known_recipes']:
						multicharacter[count]['professions'][myid]['recipes'].append(recipe['id'])

		if 'secondaries' not in charprofessions:
			multicharacter[count].setdefault('error',{})
			multicharacter[count]['error'].setdefault('professions',{})
			multicharacter[count]['error']['professions']['secondaries'] = 0
		else:
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
#		clearedencounters(count,multicharacter,charencounterdungeon,charencounterraids)
		
	characterfile.close()
	charreputationoutput(count,multicharacter,outrep)
	charquestsoutput(count,multicharacter,outquest)
	charprofessionoutput(count,multicharacter,outprof)
#	charpencountersoutput(count,multicharacter,ofenc)
#	pprint (multicharacter)
#	pprint (charencounterdungeon)
