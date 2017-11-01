package BNet::Professions;

use strict;
use warnings;

sub reputation ($%) {
	my ($count, %multirep) = @_;

#	BNet::Utils::groupheader ("Old World Recipies");
#	BNet::Utils::preprintprofcooking($count, '18247', "Baked Salmon", "inv_misc_fish_20", %multiusercriteria);

}

sub reputation_vanilla ($%) {
	my ($count, %multirep) = @_;

	BNet::Utils::groupheader ("Vanilla: Steamwheedle Cartel");
	BNet::Utils::preprintrep($count, '529', "Argent Dawn", %multirep);
	BNet::Utils::preprintrep($count, '87', "Bloodsail Buccaneers", %multirep);
	BNet::Utils::preprintrep($count, '609', "Cenarion Circle", %multirep);
	BNet::Utils::preprintrep($count, '909', "Darkmoon Faire", %multirep);
	BNet::Utils::preprintrep($count, '576', "Timbermaw Hold", %multirep);
	BNet::Utils::preprintrep($count, '349', "Ravenholdt", %multirep);
	BNet::Utils::preprintrep($count, '70', "Syndicate", %multirep);
	BNet::Utils::groupheader ("Vanilla: Steamwheedle Cartel");
	BNet::Utils::preprintrep($count, '21', "Booty Bay", %multirep);
	BNet::Utils::preprintrep($count, '577', "Everlook", %multirep);
	BNet::Utils::preprintrep($count, '369', "Gadgetzan", %multirep);
	BNet::Utils::preprintrep($count, '470', "Ratchet", %multirep);

	BNet::Utils::groupheader ("Vanilla: Raids");
	BNet::Utils::preprintrep($count, '910', "Brood of Nozdormu", %multirep);
	BNet::Utils::preprintrep($count, '749', "Hydraxian Waterlords", %multirep);
	BNet::Utils::preprintrep($count, '59', "Thorium Brotherhood", %multirep);

	BNet::Utils::groupheader ("Vanilla: Alliance");
	BNet::Utils::preprintrep($count, '72', "Stormwind", %multirep);
	BNet::Utils::preprintrep($count, '47', "Ironforge", %multirep);
	BNet::Utils::preprintrep($count, '54', "Gnomeregan", %multirep);
	BNet::Utils::preprintrep($count, '69', "Darnassus", %multirep);
	BNet::Utils::preprintrep($count, '930', "Exodar", %multirep);
	BNet::Utils::preprintrep($count, '1134', "Gilneas", %multirep);
	BNet::Utils::preprintrep($count, '1353', "Tushui Pandaren", %multirep);


	BNet::Utils::groupheader ("Vanilla: Horde");
	BNet::Utils::preprintrep($count, '76', "Orgrimmar", %multirep);
	BNet::Utils::preprintrep($count, '81', "Thunder Bluff", %multirep);
	BNet::Utils::preprintrep($count, '68', "Undercity", %multirep);
	BNet::Utils::preprintrep($count, '530', "Darkspear Trolls", %multirep);
	BNet::Utils::preprintrep($count, '911', "Silvermoon City", %multirep);
	BNet::Utils::preprintrep($count, '922', "Tranquillien", %multirep);
	BNet::Utils::preprintrep($count, '1133', "Bilgewater Cartel", %multirep);
	BNet::Utils::preprintrep($count, '1352', "Huojin Pandaren", %multirep);

	BNet::Utils::groupheader ("Vanilla: PvP: Alliance");
	BNet::Utils::preprintrep($count, '890', "Silverwing Sentinels", %multirep);
	BNet::Utils::preprintrep($count, '730', "Stormpike Guard", %multirep);
	BNet::Utils::preprintrep($count, '209', "The League of Arathor", %multirep);
	BNet::Utils::preprintrep($count, '1419', "Bizmo\'s Brawlpub (Season 1)", %multirep);
	BNet::Utils::preprintrep($count, '1691', "Bizmo\'s Brawlpub (Season 2)", %multirep);
	BNet::Utils::preprintrep($count, '2011', "Bizmo\'s Brawlpub", %multirep);
	BNet::Utils::groupheader ("Vanilla: PvP: Horde");
	BNet::Utils::preprintrep($count, '510', "The Defilers", %multirep);
	BNet::Utils::preprintrep($count, '889', "Warsong Outriders", %multirep);
	BNet::Utils::preprintrep($count, '729', "Frostwolf Clan", %multirep);
	BNet::Utils::preprintrep($count, '2010', "Brawl'gar Arena (Season 1)", %multirep);
	BNet::Utils::preprintrep($count, '1374', "Brawl'gar Arena (Season 2)", %multirep);
	BNet::Utils::preprintrep($count, '1619', "Brawl'gar Arena", %multirep);

	BNet::Utils::groupheader ("Vanilla: Removed");
	BNet::Utils::preprintrep($count, '809', "Shen\'dralar", %multirep);
	BNet::Utils::preprintrep($count, '270', "Zandalar Tribe", %multirep);
	BNet::Utils::preprintrep($count, '92', "Gelkis Clan Centaur", %multirep);
	BNet::Utils::preprintrep($count, '93', "Magram Clan Centaur", %multirep);

}

sub reputation_burning_crusade ($%) {
	my ($count, %multirep) = @_;

}




=pod

Burning Crusade
1012	Ashtongue Deathsworn
942	Cenarion Expedition
1015	Netherwing
933	The Consortium
941	The Mag'har
947	Thrallmar
970	Sporeggar
1038	Ogri'la
Shattrath City
1011	Lower City
1031	Sha'tari Skyguard
1077	Shattered Sun Offensive
932	The Aldor
934	The Scryers
935	The Sha'tar


Raid Reputations
989	Keepers of Time
990	The Scale of the Sands
967	The Violet Eye



1106	Argent Crusade
1090	Kirin Tor
1098	Knights of the Ebon Blade
1156	The Ashen Verdict
1073	The Kalu'ak
1119	The Sons of Hodir
1091	The Wyrmrest Accord



1052	Horde Expedition
1064	The Taunka
1067	The Hand of Vengeance
1124	The Sunreavers
1085	Warsong Offensive

1104	Frenzyheart Tribe
1105	The Oracles



1133	Bilgewater Cartel
1135	The Earthen Ring
1158	Guardians of Hyjal
1168	Guild
1171	Therazane
1172	Dragonmaw Clan
1173	Ramkahen
1178	Hellscream's Reach
1204	Avengers of Hyjal



1216	Shang Xi's Academy
1269	Golden Lotus
1270	Shado-Pan
1271	Order of the Cloud Serpent
1272	The Tillers
1273	Jogu the Drunk
1275	Ella
1276	Old Hillpaw
1277	Chee Chee
1278	Sho
1279	Haohan Mudclaw
1280	Tina Mudclaw
1281	Gina Mudclaw
1282	Fish Fellreed
1283	Farmer Fung
1302	The Anglers
1337	The Klaxxi
1341	The August Celestials
1345	The Lorewalkers
1358	Nat Pagle
1359	The Black Prince
1375	Dominance Offensive
1388	Sunreaver Onslaugh
1435	Shado-Pan Assault



1515	Arakkoa Outcasts
1711	Steamwheedle Preservation Society
1849	Order of the Awakened
1850	The Saberstalkers

Barracks Bodyguards (Alliance)
1738	Defender Illona
1733	Delvar Ironfist

Barracks Bodyguards (Horde)
1740	Aeda Brightdawn
1739	Vivianne

1735	Barracks Bodyguards
1736	Tormmok
1737	Talonpriest Ishaal
1741	Leorajh

1731	Council of Exarchs
1710	Sha'tari Defense
1682	Wrynn's Vanguard
1847	Hand of the Prophet

1445	Frostwolf Orcs
1708	Laughing Skull Orcs
1681	Vol'jin's Spear
1848	Vol'jin's Headhunters








1828	Highmountain Tribe
1859	The Nightfallen
1883	Dreamweavers
1894	The Wardens
1900	Court of Farondis
1948	Valarjar
2018	Talon's Vengeance
2045	Armies of Legionfall
2165	Army of the Light
2170	Argussian Reach
2135	Chromie
1975	Conjurer Margoss
2097	Ilyssia of the Waters
2098	Keeper Raynae
2099	Akule Riverhorn
2100	Corbyn
2101	Sha'leth
2102	Impus
=cut

1;
