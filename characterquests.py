import characterquests7legion
import characterquests1ek
import characterquests1kd
import characterquests2bc
import characterquests3wrath
import characterquests4cata
import characterquests5mists
import characterquests6warlords
import characterquests7legion
import characterquests8bfa
import characterquestslegend
import characterquestsprofessions
import characterquestmisc
from characterutil import *

def charquestsoutput(count,datatree,outputfile):
	mytitle = "Quests"
	openfile = open(outputfile, "w")
	htmlheader(openfile,mytitle)
	htmlbodyopen(openfile)
	htmltableopen(openfile)
	printdataheader(count,datatree,openfile)
	characterquests1ek.sz_01_20_Dun_Morogh(count,datatree,openfile)
	characterquests1ek.sz_01_20_Elwynn_Forest(count,datatree,openfile)
	characterquests1ek.sz_01_20_Tirisfal_Glades(count,datatree,openfile)
	characterquests1ek.sz_01_20_Eversong_Woods(count,datatree,openfile)
	characterquests1ek.z_10_60_Ghostlands(count,datatree,openfile)
	characterquests1ek.z_10_60_Loch_Modan(count,datatree,openfile)
	characterquests1ek.z_10_60_Silverpine_Forest(count,datatree,openfile)
	characterquests1ek.z_10_60_Westfall(count,datatree,openfile)
	characterquests1ek.z_15_60_Redridge_Mountains(count,datatree,openfile)
	characterquests1ek.z_15_60_Hillsbrad_Foothills(count,datatree,openfile)
	characterquests1ek.z_20_60_Duskwood(count,datatree,openfile)
	characterquests1ek.z_20_60_Wetlands(count,datatree,openfile)
	characterquests1ek.z_25_60_Arathi_Highlands(count,datatree,openfile)
	characterquests1ek.z_25_60_Northern_Stranglethorn(count,datatree,openfile)
	characterquests1ek.z_30_60_Cape_of_Stranglethorn(count,datatree,openfile)
	characterquests1ek.z_30_60_Hinterlands(count,datatree,openfile)
	characterquests1ek.z_35_60_Western_Plaguelands(count,datatree,openfile)
	characterquests1ek.z_40_60_Eastern_Plaguelands(count,datatree,openfile)
	characterquests1ek.z_40_60_Badlands(count,datatree,openfile)
	characterquests1ek.z_40_60_Burning_Steppes(count,datatree,openfile)
	characterquests1ek.z_40_60_Searing_Gorge(count,datatree,openfile)
	characterquests1ek.z_40_60_Swamp_of_Sorrows(count,datatree,openfile)
	characterquests1ek.z_40_60_Blasted_Lands(count,datatree,openfile)
	characterquests1ek.z_55_56_Deadwind_Pass(count,datatree,openfile)
	characterquests1kd.sz_01_20_Durotar(count,datatree,openfile)
	characterquests1kd.sz_01_20_Mulgore(count,datatree,openfile)
	characterquests1kd.sz_01_20_Teldrassil(count,datatree,openfile)
	characterquests1kd.sz_01_20_Azuremyst_Isle(count,datatree,openfile)
	characterquests1kd.z_10_60_Azshara(count,datatree,openfile)
	characterquests1kd.z_10_60_Bloodmyst_Isle(count,datatree,openfile)
	characterquests1kd.z_10_60_Darkshore(count,datatree,openfile)
	characterquests1kd.z_10_60_Northern_Barrens(count,datatree,openfile)
	characterquests1kd.z_15_60_Ashenvale(count,datatree,openfile)
	characterquests1kd.z_20_60_Stonetalon_Mountains(count,datatree,openfile)
	characterquests1kd.z_25_60_Southern_Barrens(count,datatree,openfile)
	characterquests1kd.z_30_60_Desolace(count,datatree,openfile)
	characterquests1kd.z_35_60_Dustwallow_Marsh(count,datatree,openfile)
	characterquests1kd.z_35_60_Feralas(count,datatree,openfile)
	characterquests1kd.z_40_60_Thousand_Needles(count,datatree,openfile)
	characterquests1kd.z_40_60_Felwood(count,datatree,openfile)
	characterquests1kd.z_40_60_Tanaris(count,datatree,openfile)
	characterquests1kd.z_40_60_UnGoro_Crater(count,datatree,openfile)
	characterquests1kd.z_40_60_Winterspring(count,datatree,openfile)
	characterquests1kd.z_40_60_Silithus(count,datatree,openfile)
	characterquests2bc.z_58_80_Hellfire_Peninsula(count,datatree,openfile)
	characterquests2bc.z_60_80_Zangarmarsh(count,datatree,openfile)
	characterquests2bc.z_62_80_Terokkar_Forest(count,datatree,openfile)
	characterquests2bc.z_64_80_Nagrand(count,datatree,openfile)
	characterquests2bc.z_65_80_Blades_Edge_Mountains(count,datatree,openfile)
	characterquests2bc.z_67_80_Netherstorm(count,datatree,openfile)
	characterquests2bc.z_67_80_Shadowmoon_Valley(count,datatree,openfile)
	characterquests2bc.z_70_Isle_Of_Queldanas(count,datatree,openfile)
	characterquests3wrath.sz_55_58_Scarlet_Enclave(count,datatree,openfile)
	characterquests3wrath.z_58_80_Borean_Tundra(count,datatree,openfile)
	characterquests3wrath.z_58_80_Howling_Fjord(count,datatree,openfile)
	characterquests3wrath.z_61_80_Dragonblight(count,datatree,openfile)
	characterquests3wrath.z_63_80_Grizzly_Hills(count,datatree,openfile)
	characterquests3wrath.z_64_80_ZulDrak(count,datatree,openfile)
	characterquests3wrath.z_66_80_Sholazar_Basin(count,datatree,openfile)
	characterquests3wrath.z_67_80_Storm_Peaks(count,datatree,openfile)
	characterquests3wrath.z_67_80_Icecrown(count,datatree,openfile)
	characterquests4cata.sz_01_05_Gilneas_City(count,datatree,openfile)
	characterquests4cata.sz_01_20_Gilneas(count,datatree,openfile)
	characterquests4cata.sz_10_60_Ruins_of_Gilneas(count,datatree,openfile)
	characterquests4cata.sz_01_05_Kezan(count,datatree,openfile)
	characterquests4cata.sz_01_10_Lost_Isles(count,datatree,openfile)
	characterquests4cata.z_80_90_Mount_Hyjal(count,datatree,openfile)
	characterquests4cata.z_80_90_Vashjir(count,datatree,openfile)
	characterquests4cata.z_82_90_Deepholm(count,datatree,openfile)
	characterquests4cata.z_83_90_Uldum(count,datatree,openfile)
	characterquests4cata.z_84_90_Twilight_Highlands(count,datatree,openfile)
	characterquests4cata.z_85_Molten_Front(count,datatree,openfile)
	characterquests5mists.sz_01_10_Wandering_Isle(count,datatree,openfile)
	characterquests5mists.z_80_90_Jade_Forest(count,datatree,openfile)
	characterquests5mists.z_81_90_Valley_of_the_Four_Winds(count,datatree,openfile)
	characterquests5mists.z_81_90_Krasarang_Wilds(count,datatree,openfile)
	characterquests5mists.z_82_90_KunLai_Summit(count,datatree,openfile)
	characterquests5mists.z_83_90_Townlong_Steppes(count,datatree,openfile)
	characterquests5mists.z_84_90_Dread_Wastes(count,datatree,openfile)
	characterquests5mists.z_85_90_Vale_of_Eternal_Blossoms(count,datatree,openfile)
	characterquests5mists.z_85_90_Isle_of_Thunder(count,datatree,openfile)
	characterquests5mists.z_85_90_Timeless_Isle(count,datatree,openfile)
	characterquests5mists.z_85_90_Pandaren_Campaign(count,datatree,openfile)
	characterquests6warlords.z_90_Blasted_Lands_Intro(count,datatree,openfile)
	characterquests6warlords.z_90_Assault_The_Dark_Portal(count,datatree,openfile)
	characterquests6warlords.z_90_100_Frostfire_Ridge(count,datatree,openfile)
	characterquests6warlords.z_90_100_Shadowmoon_Valley(count,datatree,openfile)
	characterquests6warlords.z_92_100_Gorgrond(count,datatree,openfile)
	characterquests6warlords.z_94_100_Talador(count,datatree,openfile)
	characterquests6warlords.z_96_100_Spires_of_Arak(count,datatree,openfile)
	characterquests6warlords.z_98_100_Nagrand(count,datatree,openfile)
	characterquests6warlords.z_100_Tanaan_Jungle(count,datatree,openfile)
	characterquests7legion.charquest_z_98_legion_intro(count,datatree,openfile)
	characterquests7legion.charquest_z_100_azsuna(count,datatree,openfile)
	characterquests7legion.charquest_z_100_valsharah(count,datatree,openfile)
	characterquests7legion.charquest_z_100_highmountain(count,datatree,openfile)
	characterquests7legion.charquest_z_100_stormheim(count,datatree,openfile)
	characterquests7legion.charquest_z_110_suramar(count,datatree,openfile)
	characterquests7legion.charquest_z_110_legion_fall(count,datatree,openfile)
	characterquests7legion.charquest_z_110_Argus(count,datatree,openfile)
	characterquests7legion.charquest_chromie(count,datatree,openfile)
	characterquests7legion.charquest_artifact_improvingonhistory(count,datatree,openfile)
	characterquests7legion.charquest_empoweredartifacts(count,datatree,openfile)
	characterquests8bfa.z_110_120_Alliance_Tiragarde_Sound(count,datatree,openfile)
	characterquests8bfa.z_110_120_Alliance_Drustvar(count,datatree,openfile)
	characterquests8bfa.z_110_120_Alliance_Stormsong_Valley(count,datatree,openfile)
	characterquests8bfa.z_110_120_Horde_Zuldazar(count,datatree,openfile)
	characterquests8bfa.z_110_120_Horde_Nazmir(count,datatree,openfile)
	characterquests8bfa.z_110_120_Horde_Voldun(count,datatree,openfile)
	characterquestslegend.legendary_cloak(count,datatree,openfile)
	characterquestslegend.legendary_thunderfury(count,datatree,openfile)
	characterquestslegend.legendary_ring(count,datatree,openfile)
	characterquestslegend.legendary_valanyr(count,datatree,openfile)
	characterquestslegend.legendary_shadowmourne(count,datatree,openfile)
	characterquestslegend.legendary_rogue_daggers(count,datatree,openfile)
	characterquestslegend.legendary_dragonwrath(count,datatree,openfile)
	characterquestsprofessions.prof_tailoring_1vanilla(count,datatree,openfile)
	characterquestsprofessions.prof_tailoring_7legion(count,datatree,openfile)
	characterquestmisc.dungeons(count,datatree,openfile)
	characterquestmisc.raid_60_aq10(count,datatree,openfile)
	characterquestmisc.raid_100_brf(count,datatree,openfile)
	characterquestmisc.raid_100_hfc(count,datatree,openfile)
	characterquestmisc.raid_110_en(count,datatree,openfile)
	characterquestmisc.raid_110_nh(count,datatree,openfile)
	characterquestmisc.raid_110_tos(count,datatree,openfile)
	characterquestmisc.class_quests(count,datatree,openfile)
	characterquestmisc.warlock_green_fire(count,datatree,openfile)

#	printprofession(count,datatree,openfile)
	htmltableclose(openfile)
	htmlbodyclose(openfile)
	htmlclose(openfile)
	openfile.close()

def charquestheader(count,info,openfile):
	totalquests = count + 2
	htmltabletropen(openfile)
	htmlthcolspan(openfile,totalquests,info)
	htmltabletrclose(openfile)

def charquestheaderfaction(count,info,faction,openfile):
	totalquests = count + 2
	htmltabletropen(openfile)
	if faction == "alliance":
	#	factionimg = (f"<img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">")
		factionimg = (f"<img src=\"https://wow.zamimg.com/images/icons/alliance.png\">")
	elif faction == "horde":
	#	factionimg = (f"<img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">")
		factionimg = (f"<img src=\"https://wow.zamimg.com/images/icons/horde.png\">")
	info = (f"{info}&nbsp;{factionimg}")
	htmlthcolspan(openfile,totalquests,info)
	htmltabletrclose(openfile)

def charquestprint(count,datatree,openfile,questid,questname):
	totalquests = count + 1
	htmltabletropen(openfile)
	htmltablethopenquests(openfile)
	print(f"<a href=\"https://www.wowhead.com/quest={questid}\">{questname}</a>", end="\n", file=openfile)
	htmltablethclose(openfile)
	for number in datatree:
		if questid in datatree[number]["quests"]:
			print ("<td class=\"Complete\">&#10004</td>", end="\n", file=openfile)
		else:
			print ("<td class=\"Incomplete\">&nbsp;</td>", end="\n", file=openfile)
	htmltabletrclose(openfile)

def charquestprintfaction(count,datatree,openfile,questid,questname,faction):
	totalquests = count + 1
	htmltabletropen(openfile)
	htmltablethopenquests(openfile)
	if faction == "alliance":
		factionimg = (f"<img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">")
	elif faction == "horde":
		factionimg = (f"<img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">")
	print(f"<a href=\"https://www.wowhead.com/quest={questid}\">{questname}&nbsp;{factionimg}</a>", end="\n", file=openfile)
	htmltablethclose(openfile)
	for number in datatree:
		if questid in datatree[number]["quests"]:
			print ("<td class=\"Complete\">&#10004</td>", end="\n", file=openfile)
		else:
			print ("<td class=\"Incomplete\">&nbsp;</td>", end="\n", file=openfile)
	htmltabletrclose(openfile)

def charquestprintclass(count,datatree,openfile,questid,questname,wowclass):
	totalquests = count + 1
	htmltabletropen(openfile)
	htmltablethopenquests(openfile)
	classimg = (f"<img class=\"icons\" src=\"https://wow.zamimg.com/images/wow/icons/small/{wowclass}.jpg\">")
	print(f"<a href=\"https://www.wowhead.com/quest={questid}\">{questname}", end="", file=openfile)
	print(f"&nbsp;{classimg}", end="\n", file=openfile)
	htmltablethclose(openfile)
	for number in datatree:
		if questid in datatree[number]["quests"]:
			print ("<td class=\"Complete\">&#10004</td>", end="\n", file=openfile)
		else:
			print ("<td class=\"Incomplete\">&nbsp;</td>", end="\n", file=openfile)
	htmltabletrclose(openfile)

def charquestprintfactionclass(count,datatree,openfile,questid,questname,faction,wowclass):
	totalquests = count + 1
	htmltabletropen(openfile)
	htmltablethopenquests(openfile)
	if faction == "alliance":
		factionimg = (f"<img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">")
	elif faction == "horde":
		factionimg = (f"<img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">")
		
	classimg = (f"<img class=\"icons\" src=\"https://wow.zamimg.com/images/wow/icons/small/{wowclass}.jpg\">")
	print(f"<a href=\"https://www.wowhead.com/quest={questid}\">{questname}", end="", file=openfile)
	print(f"&nbsp;{classimg}", end="", file=openfile)
	print(f"&nbsp;{factionimg}", end="\n", file=openfile)
	htmltablethclose(openfile)
	for number in datatree:
		if questid in datatree[number]["quests"]:
			print ("<td class=\"Complete\">&#10004</td>", end="\n", file=openfile)
		else:
			print ("<td class=\"Incomplete\">&nbsp;</td>", end="\n", file=openfile)
	htmltabletrclose(openfile)

def charquestprintfactionclassrace(count,datatree,openfile,questid,questname,faction,wowclass,race):
	totalquests = count + 1
	htmltabletropen(openfile)
	htmltablethopenquests(openfile)
	if faction == "alliance":
		factionimg = (f"<img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">")
	elif faction == "horde":
		factionimg = (f"<img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">")
	raceimg = (f"<img class=\"icons\" src=\"https://wow.zamimg.com/images/wow/icons/small/{race}.jpg\">")
	classimg = (f"<img class=\"icons\" src=\"https://wow.zamimg.com/images/wow/icons/small/{wowclass}.jpg\">")
	print(f"<a href=\"https://www.wowhead.com/quest={questid}\">{questname}", end="", file=openfile)
	print(f"&nbsp;{classimg}", end="", file=openfile)
	print(f"&nbsp;{raceimg}", end="", file=openfile)
	print(f"&nbsp;{factionimg}", end="\n", file=openfile)
	htmltablethclose(openfile)
	for number in datatree:
		if questid in datatree[number]["quests"]:
			print ("<td class=\"Complete\">&#10004</td>", end="\n", file=openfile)
		else:
			print ("<td class=\"Incomplete\">&nbsp;</td>", end="\n", file=openfile)
	htmltabletrclose(openfile)

def charquestprintfactionrace(count,datatree,openfile,questid,questname,faction,race):
	totalquests = count + 1
	htmltabletropen(openfile)
	htmltablethopenquests(openfile)
	if faction == "alliance":
		factionimg = (f"<img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">")
	elif faction == "horde":
		factionimg = (f"<img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">")
	raceimg = (f"<img class=\"icons\" src=\"https://wow.zamimg.com/images/wow/icons/small/{race}.jpg\">")
	print(f"<a href=\"https://www.wowhead.com/quest={questid}\">{questname}", end="", file=openfile)
	print(f"&nbsp;{raceimg}", end="", file=openfile)
	print(f"&nbsp;{factionimg}", end="\n", file=openfile)
	htmltablethclose(openfile)
	for number in datatree:
		if questid in datatree[number]["quests"]:
			print ("<td class=\"Complete\">&#10004</td>", end="\n", file=openfile)
		else:
			print ("<td class=\"Incomplete\">&nbsp;</td>", end="\n", file=openfile)
	htmltabletrclose(openfile)

def charquestprintrace(count,datatree,openfile,questid,questname,race):
	totalquests = count + 1
	htmltabletropen(openfile)
	htmltablethopenquests(openfile)
	raceimg = (f"<img class=\"icons\" src=\"https://wow.zamimg.com/images/wow/icons/small/{race}.jpg\">")
	print(f"<a href=\"https://www.wowhead.com/quest={questid}\">{questname}", end="", file=openfile)
	print(f"&nbsp;{raceimg}", end="\n", file=openfile)
	htmltablethclose(openfile)
	for number in datatree:
		if questid in datatree[number]["quests"]:
			print ("<td class=\"Complete\">&#10004</td>", end="\n", file=openfile)
		else:
			print ("<td class=\"Incomplete\">&nbsp;</td>", end="\n", file=openfile)
	htmltabletrclose(openfile)