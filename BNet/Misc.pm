package BNet::Misc;

use strict;
use warnings;

sub hidden_base ($%) {
	my ($count, %multiusercriteria) = @_;


	BNet::Utils::groupheader ("Artifact: Hidden Base Appearances");
	BNet::Utils::groupheader ("Death Knight");
	BNet::Utils::preprint ($count, '31992', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '31993', "Frost: Runes of the Darkening", %multiusercriteria);
	BNet::Utils::preprint ($count, '31994', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Demon Hunter");
	BNet::Utils::preprint ($count, '31995', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '31996', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Druid");
	BNet::Utils::preprint ($count, '31997', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '31998', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '31999', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '32000', "Restoration: Acorn of the Endless", %multiusercriteria);
	BNet::Utils::groupheader ("Hunter");
	BNet::Utils::preprint ($count, '32001', "Beast Mastery: Designs of the Grand Architect", %multiusercriteria);
	BNet::Utils::preprint ($count, '32002', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '32003', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Mage");
	BNet::Utils::preprint ($count, '32004', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '32005', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '32006', "Frost: Everburning Crystal", %multiusercriteria);
	BNet::Utils::groupheader ("Monk");
	BNet::Utils::preprint ($count, '32007', "Brewmaster: Legend of the Monkey King", %multiusercriteria);
	BNet::Utils::preprint ($count, '32008', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '32009', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Paladin");
	BNet::Utils::preprint ($count, '32010', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '32011', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '32012', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Priest");
	BNet::Utils::preprint ($count, '32013', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '32014', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '32015', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Rogue");
	BNet::Utils::preprint ($count, '32016', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '32017', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '32018', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Shaman");
	BNet::Utils::preprint ($count, '32019', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '32020', "Enhancement: The Warmace of Shirvallah", %multiusercriteria);
	BNet::Utils::preprint ($count, '32021', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Warlock");
	BNet::Utils::preprint ($count, '32022', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '32023', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '32024', "Unknown Spec", %multiusercriteria);
	BNet::Utils::groupheader ("Warrior");
	BNet::Utils::preprint ($count, '32025', "Arms: The Arcanite Bladebreaker", %multiusercriteria);
	BNet::Utils::preprint ($count, '32026', "Unknown Spec", %multiusercriteria);
	BNet::Utils::preprint ($count, '32027', "Protection:Burning Plate of the Worldbreaker", %multiusercriteria);

}

1;
