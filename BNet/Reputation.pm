package BNet::Reputations;
use strict;
use warnings;
sub reputation ($%) {
	my ($count, %multirep) = @_;
	reputation_vanilla ($count, %multirep);
#	reputation_burning_crusade ($count, %multirep);
#	reputation_wrath ($count, %multirep);
#	reputation_cataclysm ($count, %multirep);
#	reputation_mists ($count, %multirep);
#	reputation_warlords ($count, %multirep);
#	reputation_legion ($count, %multirep);
#	reputation_bfa ($count, %multirep);
}
sub reputation_vanilla ($%) {
	my ($count, %multirep) = @_;
	BNet::Utils::groupheader ("Vanilla");
	BNet::Utils::preprintrep($count, '529', "Argent Dawn", %multirep);
#	BNet::Utils::preprintrep($count, '87', "Bloodsail Buccaneers", %multirep);
#	BNet::Utils::preprintrep($count, '609', "Cenarion Circle", %multirep);
#	BNet::Utils::preprintrep($count, '909', "Darkmoon Faire", %multirep);
#	BNet::Utils::preprintrep($count, '576', "Timbermaw Hold", %multirep);
#	BNet::Utils::preprintrep($count, '349', "Ravenholdt", %multirep);
#	BNet::Utils::preprintrep($count, '70', "Syndicate", %multirep);
#	BNet::Utils::preprintrep($count, '92', "Gelkis Clan Centaur", %multirep);
#	BNet::Utils::preprintrep($count, '93', "Magram Clan Centaur", %multirep);
#	BNet::Utils::groupheader ("Vanilla: Steamwheedle Cartel");
#	BNet::Utils::preprintrep($count, '21', "Booty Bay", %multirep);
#	BNet::Utils::preprintrep($count, '577', "Everlook", %multirep);
#	BNet::Utils::preprintrep($count, '369', "Gadgetzan", %multirep);
#	BNet::Utils::preprintrep($count, '470', "Ratchet", %multirep);
#	BNet::Utils::groupheader ("Vanilla: Raids");
#	BNet::Utils::preprintrep($count, '910', "Brood of Nozdormu", %multirep);
#	BNet::Utils::preprintrep($count, '749', "Hydraxian Waterlords", %multirep);
#	BNet::Utils::preprintrep($count, '59', "Thorium Brotherhood", %multirep);
#	BNet::Utils::groupheader ("Vanilla: Alliance");
#	BNet::Utils::preprintrep($count, '72', "Stormwind", %multirep);
#	BNet::Utils::preprintrep($count, '47', "Ironforge", %multirep);
#	BNet::Utils::preprintrep($count, '54', "Gnomeregan", %multirep);
#	BNet::Utils::preprintrep($count, '69', "Darnassus", %multirep);
#	BNet::Utils::preprintrep($count, '930', "Exodar", %multirep);
#	BNet::Utils::preprintrep($count, '1134', "Gilneas", %multirep);
#	BNet::Utils::preprintrep($count, '1353', "Tushui Pandaren", %multirep);
#	BNet::Utils::groupheader ("Vanilla: Horde");
#	BNet::Utils::preprintrep($count, '76', "Orgrimmar", %multirep);
#	BNet::Utils::preprintrep($count, '81', "Thunder Bluff", %multirep);
#	BNet::Utils::preprintrep($count, '68', "Undercity", %multirep);
#	BNet::Utils::preprintrep($count, '530', "Darkspear Trolls", %multirep);
#	BNet::Utils::preprintrep($count, '911', "Silvermoon City", %multirep);
#	BNet::Utils::preprintrep($count, '922', "Tranquillien", %multirep);
#	BNet::Utils::preprintrep($count, '1133', "Bilgewater Cartel", %multirep);
#	BNet::Utils::preprintrep($count, '1352', "Huojin Pandaren", %multirep);
#	BNet::Utils::groupheader ("Vanilla: PvP: Alliance");
#	BNet::Utils::preprintrep($count, '890', "Silverwing Sentinels", %multirep);
#	BNet::Utils::preprintrep($count, '730', "Stormpike Guard", %multirep);
#	BNet::Utils::preprintrep($count, '209', "The League of Arathor", %multirep);
#	BNet::Utils::preprintrep($count, '1419', "Bizmo\'s Brawlpub (Season 1)", %multirep);
#	BNet::Utils::preprintrep($count, '1691', "Bizmo\'s Brawlpub (Season 2)", %multirep);
#	BNet::Utils::preprintrep($count, '2011', "Bizmo\'s Brawlpub", %multirep);
#	BNet::Utils::groupheader ("Vanilla: PvP: Horde");
#	BNet::Utils::preprintrep($count, '510', "The Defilers", %multirep);
#	BNet::Utils::preprintrep($count, '889', "Warsong Outriders", %multirep);
#	BNet::Utils::preprintrep($count, '729', "Frostwolf Clan", %multirep);
#	BNet::Utils::preprintrep($count, '2010', "Brawl'gar Arena (Season 1)", %multirep);
#	BNet::Utils::preprintrep($count, '1374', "Brawl'gar Arena (Season 2)", %multirep);
#	BNet::Utils::preprintrep($count, '1619', "Brawl'gar Arena", %multirep);
#	BNet::Utils::groupheader ("Vanilla: Removed");
#	BNet::Utils::preprintrep($count, '809', "Shen\'dralar", %multirep);
#	BNet::Utils::preprintrep($count, '270', "Zandalar Tribe", %multirep);

}

sub reputation_burning_crusade ($%) {
	my ($count, %multirep) = @_;

	BNet::Utils::groupheader ("Burning Crusade");
	BNet::Utils::preprintrep($count, '942', "Cenarion Expedition", %multirep);
	BNet::Utils::preprintrep($count, '1015', "Netherwing", %multirep);
	BNet::Utils::preprintrep($count, '933', "The Consortium", %multirep);
	BNet::Utils::preprintrep($count, '970', "Sporeggar", %multirep);
	BNet::Utils::preprintrep($count, '1038', "Ogri'la", %multirep);
	BNet::Utils::groupheader ("Burning Crusade: Shattrath");
	BNet::Utils::preprintrep($count, '932', "The Aldor", %multirep);
	BNet::Utils::preprintrep($count, '934', "The Scryers", %multirep);
	BNet::Utils::preprintrep($count, '935', "The Sha'tar", %multirep);
	BNet::Utils::preprintrep($count, '1011', "Lower City", %multirep);
	BNet::Utils::preprintrep($count, '1031', "Sha'tari Skyguard", %multirep);
	BNet::Utils::preprintrep($count, '1077', "Shattered Sun Offensive", %multirep);
	BNet::Utils::groupheader ("Burning Crusade: Raids");
	BNet::Utils::preprintrep($count, '1012', "Ashtongue Deathsworn", %multirep);
	BNet::Utils::preprintrep($count, '989', "Keepers of Time", %multirep);
	BNet::Utils::preprintrep($count, '990', "The Scale of the Sands", %multirep);
	BNet::Utils::preprintrep($count, '967', "The Violet Eye", %multirep);
	BNet::Utils::groupheader ("Burning Crusade: Alliance");
	BNet::Utils::preprintrep($count, '946', "Honor Hold", %multirep);
	BNet::Utils::preprintrep($count, '978', "Kurenai", %multirep);
	BNet::Utils::groupheader ("Burning Crusade: Horde");
	BNet::Utils::preprintrep($count, '941', "The Mag'har", %multirep);
	BNet::Utils::preprintrep($count, '947', "Thrallmar", %multirep);

}

sub reputation_wrath ($%) {
	my ($count, %multirep) = @_;
	BNet::Utils::groupheader ("Wrath of the Lich King");
	BNet::Utils::preprintrep($count, '1106', "Argent Crusade", %multirep);
	BNet::Utils::preprintrep($count, '1090', "Kirin Tor", %multirep);
	BNet::Utils::preprintrep($count, '1098', "Knights of the Ebon Blade", %multirep);
	BNet::Utils::preprintrep($count, '1156', "The Ashen Verdict", %multirep);
	BNet::Utils::preprintrep($count, '1073', "The Kalu'ak", %multirep);
	BNet::Utils::preprintrep($count, '1119', "The Sons of Hodir", %multirep);
	BNet::Utils::groupheader ("Wrath of the Lich King: Shalozar Basin");
	BNet::Utils::preprintrep($count, '1104', "Frenzyheart Tribe", %multirep);
	BNet::Utils::preprintrep($count, '1105', "The Oracles", %multirep);
	BNet::Utils::groupheader ("Wrath of the Lich King: Alliance Vanguard");
	BNet::Utils::preprintrep($count, '1037', "Alliance Vanguard", %multirep);
	BNet::Utils::preprintrep($count, '1068', "Explorers' League", %multirep);
	BNet::Utils::preprintrep($count, '1126', "The Frostborn", %multirep);
	BNet::Utils::preprintrep($count, '1094', "The Silver Covenant", %multirep);
	BNet::Utils::preprintrep($count, '1050', "Valiance Expedition", %multirep);
	BNet::Utils::groupheader ("Wrath of the Lich King: Horde Expedition");
	BNet::Utils::preprintrep($count, '1052', "Horde Expedition", %multirep);
	BNet::Utils::preprintrep($count, '1064', "The Taunka", %multirep);
	BNet::Utils::preprintrep($count, '1067', "The Hand of Vengeance", %multirep);
	BNet::Utils::preprintrep($count, '1124', "The Sunreavers", %multirep);
	BNet::Utils::preprintrep($count, '1085', "Warsong Offensive", %multirep);

}

sub reputation_cataclysm ($%) {
	my ($count, %multirep) = @_;
	BNet::Utils::groupheader ("Cataclysm");
	BNet::Utils::preprintrep($count, '1204', "Avengers of Hyjal", %multirep);
	BNet::Utils::preprintrep($count, '1158', "Guardians of Hyjal", %multirep);
	BNet::Utils::preprintrep($count, '1173', "Ramkahen", %multirep);
	BNet::Utils::preprintrep($count, '1171', "Therazane", %multirep);
	BNet::Utils::preprintrep($count, '1135', "The Earthen Ring", %multirep);
	BNet::Utils::groupheader ("Cataclysm: Alliance");
	BNet::Utils::preprintrep($count, '1174', "Wildhammer Clan", %multirep);
	BNet::Utils::preprintrep($count, '1177', "Baradin's Wardens", %multirep);
	BNet::Utils::groupheader ("Cataclysm: Horde");
	BNet::Utils::preprintrep($count, '1172', "Dragonmaw Clan", %multirep);
	BNet::Utils::preprintrep($count, '1178', "Hellscream's Reach", %multirep);

}

sub reputation_mists ($%) {
	my ($count, %multirep) = @_;
	BNet::Utils::groupheader ("Mists of Pandaria");
	BNet::Utils::preprintrep($count, '1440', "Darkspear Rebellion", %multirep);
	BNet::Utils::preprintrep($count, '1492', "Emperor Shaohao", %multirep);
	BNet::Utils::preprintrep($count, '1269', "Golden Lotus", %multirep);
	BNet::Utils::preprintrep($count, '1270', "Shado-Pan", %multirep);
	BNet::Utils::preprintrep($count, '1271', "Order of the Cloud Serpent", %multirep);
	BNet::Utils::preprintrep($count, '1435', "Shado-Pan Assault", %multirep);
	BNet::Utils::preprintrep($count, '1216', "Shang Xi's Academy", %multirep);
	BNet::Utils::preprintrep($count, '1337', "The Klaxxi", %multirep);
	BNet::Utils::preprintrep($count, '1341', "The August Celestials", %multirep);
	BNet::Utils::preprintrep($count, '1345', "The Lorewalkers", %multirep);
#	BNet::Utils::preprintrep($count, '1351', "The Brewmasters", %multirep);
	BNet::Utils::preprintrep($count, '1359', "The Black Prince", %multirep);
	BNet::Utils::groupheader ("Mists of Pandaria: The Tillers");
	BNet::Utils::preprintrep($count, '1272', "The Tillers", %multirep);
	BNet::Utils::preprintrep($count, '1277', "Chee Chee", %multirep);
	BNet::Utils::preprintrep($count, '1275', "Ella", %multirep);
	BNet::Utils::preprintrep($count, '1283', "Farmer Fung", %multirep);
	BNet::Utils::preprintrep($count, '1282', "Fish Fellreed", %multirep);
	BNet::Utils::preprintrep($count, '1281', "Gina Mudclaw", %multirep);
	BNet::Utils::preprintrep($count, '1279', "Haohan Mudclaw", %multirep);
	BNet::Utils::preprintrep($count, '1273', "Jogu the Drunk", %multirep);
	BNet::Utils::preprintrep($count, '1276', "Old Hillpaw", %multirep);
	BNet::Utils::preprintrep($count, '1278', "Sho", %multirep);
	BNet::Utils::preprintrep($count, '1280', "Tina Mudclaw", %multirep);
	BNet::Utils::groupheader ("Mists of Pandaria: The Anglers");
	BNet::Utils::preprintrep($count, '1302', "The Anglers", %multirep);
	BNet::Utils::preprintrep($count, '1358', "Nat Pagle", %multirep);
	BNet::Utils::groupheader ("Mists of Pandaria: Alliance");
	BNet::Utils::preprintrep($count, '1242', "Pearlfin Jinyu", %multirep);
	BNet::Utils::preprintrep($count, '1376', "Operation: Shieldwall", %multirep);
	BNet::Utils::preprintrep($count, '1387', "Kirin Tor Offensive", %multirep);
	BNet::Utils::groupheader ("Mists of Pandaria: Horde");
	BNet::Utils::preprintrep($count, '1228', "Forest Hozen", %multirep);
	BNet::Utils::preprintrep($count, '1375', "Dominance Offensive", %multirep);
	BNet::Utils::preprintrep($count, '1388', "Sunreaver Onslaught", %multirep);

}

sub reputation_warlords ($%) {
	my ($count, %multirep) = @_;

	BNet::Utils::groupheader ("Warlords of Draenor");
	BNet::Utils::preprintrep($count, '1515', "Arakkoa Outcasts", %multirep);
#	BNet::Utils::preprintrep($count, '1520', "Shadowmoon Exiles", %multirep);
	BNet::Utils::preprintrep($count, '1711', "Steamwheedle Preservation Society", %multirep);
#	BNet::Utils::preprintrep($count, '1732', "Steamwheedle Draenor Expedition", %multirep);
	BNet::Utils::preprintrep($count, '1849', "Order of the Awakened", %multirep);
	BNet::Utils::preprintrep($count, '1850', "The Saberstalkers", %multirep);
	BNet::Utils::preprintrep($count, '1735', "Barracks Bodyguards", %multirep);
	BNet::Utils::groupheader ("Warlords of Draenor: Barracks Bodyguards");
	BNet::Utils::preprintrep($count, '1741', "Leorajh", %multirep);
	BNet::Utils::preprintrep($count, '1736', "Tormmok", %multirep);
	BNet::Utils::preprintrep($count, '1737', "Talonpriest Ishaal", %multirep);
	BNet::Utils::groupheader ("Warlords of Draenor: Barracks Bodyguards: Alliance");
	BNet::Utils::preprintrep($count, '1738', "Defender Illona", %multirep);
	BNet::Utils::preprintrep($count, '1733', "Delvar Ironfist", %multirep);
	BNet::Utils::groupheader ("Warlords of Draenor: Barracks Bodyguards: Horde");
	BNet::Utils::preprintrep($count, '1740', "Aeda Brightdawn", %multirep);
	BNet::Utils::preprintrep($count, '1739', "Vivianne", %multirep);
	BNet::Utils::groupheader ("Warlords of Draenor: Alliance");
	BNet::Utils::preprintrep($count, '1731', "Council of Exarchs", %multirep);
	BNet::Utils::preprintrep($count, '1847', "Hand of the Prophet", %multirep);
	BNet::Utils::preprintrep($count, '1710', "Sha'tari Defense", %multirep);
	BNet::Utils::preprintrep($count, '1682', "Wrynn's Vanguard", %multirep);
	BNet::Utils::groupheader ("Warlords of Draenor: Horde");
	BNet::Utils::preprintrep($count, '1445', "Frostwolf Orcs", %multirep);
	BNet::Utils::preprintrep($count, '1708', "Laughing Skull Orcs", %multirep);
	BNet::Utils::preprintrep($count, '1848', "Vol'jin's Headhunters", %multirep);
	BNet::Utils::preprintrep($count, '1681', "Vol'jin's Spear", %multirep);

}

sub reputation_legion ($%) {
	my ($count, %multirep) = @_;
	BNet::Utils::groupheader ("Legion");
	BNet::Utils::preprintrep($count, '1900', "Court of Farondis", %multirep);
	BNet::Utils::preprintrep($count, '1883', "Dreamweavers", %multirep);
	BNet::Utils::preprintrep($count, '1828', "Highmountain Tribe", %multirep);
	BNet::Utils::preprintrep($count, '1948', "Valarjar", %multirep);
	BNet::Utils::preprintrep($count, '1894', "The Wardens", %multirep);
	BNet::Utils::preprintrep($count, '1859', "The Nightfallen", %multirep);
	BNet::Utils::preprintrep($count, '2018', "Talon's Vengeance", %multirep);
	BNet::Utils::preprintrep($count, '2045', "Armies of Legionfall", %multirep);
	BNet::Utils::preprintrep($count, '2165', "Army of the Light", %multirep);
	BNet::Utils::preprintrep($count, '2170', "Argussian Reach", %multirep);
	BNet::Utils::preprintrep($count, '2135', "Chromie", %multirep);
	BNet::Utils::groupheader ("Legion: Fishing");
	BNet::Utils::preprintrep($count, '1975', "Conjurer Margoss", %multirep);
	BNet::Utils::preprintrep($count, '2102', "Impus", %multirep);
	BNet::Utils::preprintrep($count, '2097', "Ilyssia of the Waters", %multirep);
	BNet::Utils::preprintrep($count, '2098', "Keeper Raynae", %multirep);
	BNet::Utils::preprintrep($count, '2099', "Akule Riverhorn", %multirep);
	BNet::Utils::preprintrep($count, '2100', "Corbyn", %multirep);
	BNet::Utils::preprintrep($count, '2101', "Sha'leth", %multirep);

}

sub reputation_legion ($%) {
	my ($count, %multirep) = @_;
	BNet::Utils::groupheader ("Battle for Azeroth: Neutral Factions");
	BNet::Utils::preprintrep($count, '2164', "Champions of Azeroth", %multirep);
	BNet::Utils::preprintrep($count, '2163', "Tortollan Seekers", %multirep);
	BNet::Utils::groupheader ("Battle for Azeroth: Alliance");
	BNet::Utils::preprintrep($count, '2160', "Proudmoore Admiralty", %multirep);
	BNet::Utils::preprintrep($count, '2161', "Order of Embers", %multirep);
	BNet::Utils::preprintrep($count, '2162', "Storm's Wake", %multirep);
	BNet::Utils::preprintrep($count, '2159', "7th Legion", %multirep);
	BNet::Utils::groupheader ("Battle for Azeroth: Horde");
	BNet::Utils::preprintrep($count, '2103', "Zandalari Empire", %multirep);
	BNet::Utils::preprintrep($count, '2156', "Talanji's Expedition", %multirep);
	BNet::Utils::preprintrep($count, '2157', "The Honorbound", %multirep);
	BNet::Utils::preprintrep($count, '2158', "Voldunai", %multirep);

}

1;
