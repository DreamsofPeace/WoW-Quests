package BNet::Misc;

use strict;
use warnings;

sub artifact_non_hidden ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Fighting with Style: Classic");
#	BNet::Utils::preprintachievement ($count, '', '10461', "Pillars of Creation", %multiusercriteria);
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

	BNet::Utils::groupheader ("Fighting with Style: Fighting with Style: Hidden");
	BNet::Utils::preprintachievement ($count, '34535', '10750', "Hidden Appearance", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '34532', '10750', "30 Dungeons", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '34533', '10750', "200 World Quests", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '34534', '10750', "1000 Honorable Kills", %multiusercriteria);

}


sub artifact_hidden_base ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Artifact: Hidden Base Appearances");
	BNet::Utils::groupheader ("Death Knight");
	BNet::Utils::preprintachievement ($count, '31992', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '31993', '10460', "Frost: Runes of the Darkening", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '31994', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Demon Hunter");
	BNet::Utils::preprintachievement ($count, '31995', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '31996', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Druid");
	BNet::Utils::preprintachievement ($count, '31997', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '31998', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '31999', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32000', '10460', "Restoration: Acorn of the Endless", %multiusercriteria);
	BNet::Utils::groupheader ("Hunter");
	BNet::Utils::preprintachievement ($count, '32001', '10460', "Beast Mastery: Designs of the Grand Architect", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32002', '10460', "Marksmanship: Syriel Crescentfall's Notes: Ravenguard", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32003', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Mage");
	BNet::Utils::preprintachievement ($count, '32004', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32005', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32006', '10460', "Frost: Everburning Crystal", %multiusercriteria);
	BNet::Utils::groupheader ("Monk");
	BNet::Utils::preprintachievement ($count, '32007', '10460', "Brewmaster: Legend of the Monkey King", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32008', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32009', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Paladin");
	BNet::Utils::preprintachievement ($count, '32010', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32011', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32012', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Priest");
	BNet::Utils::preprintachievement ($count, '32013', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32014', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32015', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Rogue");
	BNet::Utils::preprintachievement ($count, '32016', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32017', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32018', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Shaman");
	BNet::Utils::preprintachievement ($count, '32019', '10460', "Elemental: Lost Codex of the Amani", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32020', '10460', "Enhancement: The Warmace of Shirvallah", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32021', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Warlock");
	BNet::Utils::preprintachievement ($count, '32022', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32023', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32024', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Warrior");
	BNet::Utils::preprintachievement ($count, '32025', '10460', "Arms: The Arcanite Bladebreaker", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32026', '10460', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32027', '10460', "Protection:Burning Plate of the Worldbreaker", %multiusercriteria);

}


sub class_hall_set ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Class Order Hall Set");
	BNet::Utils::preprintachievement ($count, '5212', '11298', "Class Hall Helm (Level 110)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '30499', '11298', "Class Hall Shoulders (8 Final Dungeon Bosses)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '0', '11298', "Class Hall Chestpiece", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '5212', '11298', "Class Hall Bracers", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '0', '11298', "Class Hall Gloves", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '30103', '11298', "Class Hall Belt", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '0', '11298', "Class Hall Leggings", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '0', '11298', "Class Hall Boots", %multiusercriteria);


}

1;
