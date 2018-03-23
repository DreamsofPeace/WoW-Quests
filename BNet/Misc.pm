package BNet::Misc;

use strict;
use warnings;

sub artifact_non_hidden ($%) {
#sub artifact_non_hidden ($%%) {
#	my ($count, %multiusercriteria, %multiuserquests) = @_;
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Fighting with Style: Classic");
	#42213	The Tidestone of Golganneth
	#40890	The Tears of Elune
	#42454	The Hammer of Khaz'goroth
	#43349	The Aegis of Aggramar
#	BNet::Utils::preprintachievementvia4q ($count, '99999999', '10461', "Pillars of Creation", '42213', '40890', '42454', '43349', %multiuserquests);
	BNet::Utils::preprintachievement ($count, '33167', '10461', "Light\'s Charge", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33168', '10461', "Order Hall Part 1", %multiusercriteria);

	BNet::Utils::groupheader ("Fighting with Style: Upgraded");
	BNet::Utils::preprintachievement ($count, '32159', '10746', "Upgrade Your Artifact", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32160', '10746', "Power Realized", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32161', '10746', "Part of History", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32162', '10746', "This Side Up", %multiusercriteria);

	BNet::Utils::groupheader ("Fighting with Style: Valorous");
	BNet::Utils::preprintachievement ($count, '31991', '10748', "Improving on History", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32164', '10748', "Unleashed Monstrisities", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32165', '10748', "Keystone Master", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33649', '10748', "Glory of the Legion Hero", %multiusercriteria);

	BNet::Utils::groupheader ("Fighting with Style: War-torn <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">");
	BNet::Utils::preprintachievement ($count, '32106', '10749', "The Prestige", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32151', '10749', "Crest of Heroism", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32153', '10749', "Crest of Carnage", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32154', '10749', "Crest of Devastation", %multiusercriteria);

	BNet::Utils::groupheader ("Fighting with Style: War-torn <img src=\"http://wow.zamimg.com/images/icons/horde.png\">");
	BNet::Utils::preprintachievement ($count, '32105', '11173', "The Prestige", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32152', '11173', "Crest of Carnage", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32150', '11173', "Crest of Heroism", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32155', '11173', "Crest of Devastation", %multiusercriteria);

	BNet::Utils::groupheader ("Fighting with Style: Hidden");
	BNet::Utils::preprintachievement ($count, '34535', '10750', "Hidden Appearance", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '34532', '10750', "30 Dungeons", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '34533', '10750', "200 World Quests", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '34534', '10750', "1000 Honorable Kills", %multiusercriteria);

}


sub artifact_hidden_base ($%) {
	my ($count, %multiusercriteria) = @_;

#List Completed by Gabriellus 
#https://us.battle.net/forums/en/bnet/topic/20758756614

	BNet::Utils::groupheader ("Artifact: Hidden Base Appearances");
	BNet::Utils::groupheader ("Death Knight");
	BNet::Utils::preprintachievement ($count, '31992', '10460', "Blood: Twisting Anima of Souls", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '31993', '10460', "Frost: Runes of the Darkening", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '31994', '10460', "Unholy: The Bonereaper's Hook", %multiusercriteria);
	BNet::Utils::groupheader ("Demon Hunter");
	BNet::Utils::preprintachievement ($count, '31995', '10460', "Havoc: Guise of the Deathwalker", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '31996', '10460', "Vengeance: Bulwark of the Iron Warden", %multiusercriteria);
	BNet::Utils::groupheader ("Druid");
	BNet::Utils::preprintachievement ($count, '31997', '10460', "Balance: Sunkeeper's Reach", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '31998', '10460', "Feral: Feather of the Moonspirit", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '31999', '10460', "Guardian: Mark of the Glade Guardian", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32000', '10460', "Restoration: Acorn of the Endless", %multiusercriteria);
	BNet::Utils::groupheader ("Hunter");
	BNet::Utils::preprintachievement ($count, '32001', '10460', "Beast Mastery: Designs of the Grand Architect", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32002', '10460', "Marksmanship: Syriel Crescentfall's Notes: Ravenguard", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32003', '10460', "Survival: Last Breath of the Forest", %multiusercriteria);
	BNet::Utils::groupheader ("Mage");
	BNet::Utils::preprintachievement ($count, '32004', '10460', "Arcane: The Woolomancer's Charge", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32005', '10460', "Fire: The Stars' Design", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32006', '10460', "Frost: Everburning Crystal", %multiusercriteria);
	BNet::Utils::groupheader ("Monk");
	BNet::Utils::preprintachievement ($count, '32007', '10460', "Brewmaster: Legend of the Monkey King", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32008', '10460', "Mistweaver: Breath of the Undying Serpent", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32009', '10460', "Windwalker: The Stormfist", %multiusercriteria);
	BNet::Utils::groupheader ("Paladin");
	BNet::Utils::preprintachievement ($count, '32010', '10460', "Holy: Lost Edicts of the Watcher", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32011', '10460', "Protection: Spark of the Fallen Exarch", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32012', '10460', "Retribution: Heart of Corruption", %multiusercriteria);
	BNet::Utils::groupheader ("Priest");
	BNet::Utils::preprintachievement ($count, '32013', '10460', "Discipline: Writings of the End", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32014', '10460', "Holy: Staff of the Lightborn", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32015', '10460', "Shadow: Claw of N'Zoth", %multiusercriteria);
	BNet::Utils::groupheader ("Rogue");
	BNet::Utils::preprintachievement ($count, '32016', '10460', "Assassination: The Cypher of Broken Bone", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32017', '10460', "Outlaw: Emanation of the Winds", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32018', '10460', "Subtley: Tome of Otherworldly Venoms", %multiusercriteria);
	BNet::Utils::groupheader ("Shaman");
	BNet::Utils::preprintachievement ($count, '32019', '10460', "Elemental: Lost Codex of the Amani", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32020', '10460', "Enhancement: The Warmace of Shirvallah", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32021', '10460', "Restoration: Coil of the Drowned Queen", %multiusercriteria);
	BNet::Utils::groupheader ("Warlock");
	BNet::Utils::preprintachievement ($count, '32022', '10460', "Affliction: Essence of the Executioner", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32023', '10460', "Demonology: Visage of the First Wakener", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32024', '10460', "Destruction: The Burning Jewel of Sargeras", %multiusercriteria);
	BNet::Utils::groupheader ("Warrior");
	BNet::Utils::preprintachievement ($count, '32025', '10460', "Arms: The Arcanite Bladebreaker", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32026', '10460', "Fury: The Dragonslayers", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32027', '10460', "Protection:Burning Plate of the Worldbreaker", %multiusercriteria);

}


sub class_hall_set ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Class Order Hall Set");
	#Needs to check if level 110
	BNet::Utils::preprintachievement ($count, '5212', '11298', "Class Hall Helm (Level 110)", %multiusercriteria);
	#Needs to check if 42000
	BNet::Utils::preprintachievement ($count, '30499', '11298', "Class Hall Shoulders (Nightfallen Exalted)", %multiusercriteria);
	#Final Quest of the Order Hall Campaign
	#43686	The Fourth Horseman	Death Knight
	#43186	I Am the Slayer!	Demon Hunter
	#42055	The Demi-God's Return	Druid
	#42659	In Defense of Dalaran	Hunter
	#41087	Storm Brew	Monk
	#42734	Into the Oculus	Mage
	#43697	Warriors of Light	Paladin
	#43402	High Priest of Netherlight	Priest
	#37689	The Imposter	Rogue
	#41888	Allegiance of Flame	Shaman
	#41796	Selecting a Sixth	Warlock
	#42974	The Fate of Hodir	Warrior
	BNet::Utils::preprintachievement ($count, '0', '11298', "Class Hall Chestpiece", %multiusercriteria);
	#Recruit 6 Champions, Check if 6 or over
	BNet::Utils::preprintachievement ($count, '33142', '11298', "Class Hall Bracers", %multiusercriteria);
	#Needs to check if over 9000
	BNet::Utils::preprintachievement ($count, '30499', '11298', "Class Hall Gloves (Nightfallen Honored)", %multiusercriteria);
	#Needs to check if over 100000
	BNet::Utils::preprintachievement ($count, '30103', '11298', "Class Hall Belt (100k AP)", %multiusercriteria);
	#Defeat 8 Final Dungeons bosses
	BNet::Utils::preprintachievement ($count, '0', '11298', "Class Hall Leggings (8 Final Dungeon Bosses)", %multiusercriteria);
	#Exaulted with 2 Broken Isles Factions

}

sub pvp_prestige ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("PvP: Prestige Levels");
	BNet::Utils::preprintachievement ($count, '31783', '10991', "First Step into a Larger World (Prestige 1)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '31784', '10992', "Here We Go Again (Prestige 2)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '31785', '10993', "Third Time's The Charm (Prestige 3)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '31786', '10995', "For Prestige (Prestige 4)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '35023', '11468', "Alive for Five (Prestige 5)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '35024', '11469', "The River Six (Prestige 6)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '35025', '11470', "Slayin' to Seven (Prestige 7)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '35026', '11471', "Don't Hate, Grind to Eight (Prestige 8)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '35027', '11472', "Hell, It's About Nine (Prestige 9)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '36183', '11685', "Decade of Dominance (Prestige 10)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '36184', '11686', "These Go To Eleven (Prestige 11)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '36185', '11687', "Demonic Dozen (Prestige 12)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '36186', '11688', "Floor Thirteen (Prestige 13)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '36187', '11689', "Fourteen for the Team (Prestige 14)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '36188', '11690', "When You're Fifteen (Prestige 15)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '36189', '11691', "You Are Sixteen (Prestige 16)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '36190', '11692', "Going On Seventeen (Prestige 17)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '36191', '11693', "Eighteen and Over (Prestige 18)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '36192', '11694', "Hell, It's About Nineteen (Prestige 19)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37966', '12108', "Double Decade of Dominance (Prestige 20)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37967', '12109', "Twenty-One Arms Salute (Prestige 21)", %multiusercriteria);

}
1;
