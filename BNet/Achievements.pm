package BNet::Achievements;

use strict;
use warnings;



sub p20_bloody_rare ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Bloody Rare: Hellfire Peninsula");
	BNet::Utils::preprintachievement ($count, '4512', '1312', "Fulgorge", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '4517', '1312', "Mekthorg the Wild", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '4523', '1312', "Vorakem Doomspeaker", %multiusercriteria);
	BNet::Utils::groupheader ("Bloody Rare: Terrokar Forest");
	BNet::Utils::preprintachievement ($count, '4509', '1312', "Crippler", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '4510', '1312', "Doomsayer Jurim", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '4520', '1312', "Okrek", %multiusercriteria);
	BNet::Utils::groupheader ("Bloody Rare: Zangarmarsh");
	BNet::Utils::preprintachievement ($count, '4505', '1312', "Bog Lurker", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '4507', '1312', "Coilfang Emissary", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '4516', '1312', "Marticar", %multiusercriteria);
	BNet::Utils::groupheader ("Bloody Rare: Nagrand");
	BNet::Utils::preprintachievement ($count, '4513', '1312', "Goretooth", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '4522', '1312', "Voidhunter Yar", %multiusercriteria);
	BNet::Utils::groupheader ("Bloody Rare: Blade's Edge Mountains");
	BNet::Utils::preprintachievement ($count, '4514', '1312', "Hemathion", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '4518', '1312', "Morcrush", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '4521', '1312', "Speaker Mar'grom", %multiusercriteria);
	BNet::Utils::groupheader ("Bloody Rare: Netherstorm");
	BNet::Utils::preprintachievement ($count, '4506', '1312', "Chief Engineer Lorthander", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '4511', '1312', "Ever-Core the Punisher", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '4519', '1312', "Nuramoc", %multiusercriteria);
	BNet::Utils::groupheader ("Bloody Rare: Shadowmoon Valley");
	BNet::Utils::preprintachievement ($count, '4504', '1312', "Ambassador Jerrikar", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '4508', '1312', "Collidus the Warp-Watcher", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '4515', '1312', "Kraator", %multiusercriteria);
}

sub p30_frostbitten ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Frostbitten: Borean Tundra");
	BNet::Utils::preprintachievement ($count, '8104', '2257', "Fumblub Gearwind", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '8105', '2257', "Icehorn", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '8103', '2257', "Old Crystalbark", %multiusercriteria);
	BNet::Utils::groupheader ("Frostbitten: Howling Fjord");
	BNet::Utils::preprintachievement ($count, '8108', '2257', "King Ping", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '8106', '2257', "Perobas the Bloodthirster", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '8107', '2257', "Vigdis the War Maiden", %multiusercriteria);
	BNet::Utils::groupheader ("Frostbitten: Dragonblight");
	BNet::Utils::preprintachievement ($count, '8110', '2257', "Crazed Indu'le Survivor", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '8111', '2257', "Scarlet Highlord Daion", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '8109', '2257', "Tukemuth", %multiusercriteria);
	BNet::Utils::groupheader ("Frostbitten: Grizzly Hills");
	BNet::Utils::preprintachievement ($count, '8113', '2257', "Seething Hate", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '8112', '2257', "Grocklar", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '8114', '2257', "Syreian the Bonecarver", %multiusercriteria);
	BNet::Utils::groupheader ("Frostbitten: Zul'drak");
	BNet::Utils::preprintachievement ($count, '8116', '2257', "Griegen", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '8117', '2257', "Terror Spinner", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '8115', '2257', "Zul'drak Sentinel", %multiusercriteria);
	BNet::Utils::groupheader ("Frostbitten: Shalozar Basin");
	BNet::Utils::preprintachievement ($count, '8118', '2257', "Aotona", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '8119', '2257', "King Krush", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '8100', '2257', "Loque'nahak", %multiusercriteria);
	BNet::Utils::groupheader ("Frostbitten: Storm Peaks");
	BNet::Utils::preprintachievement ($count, '8121', '2257', "Dirkee", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '8120', '2257', "Vyragosa", %multiusercriteria);
	BNet::Utils::groupheader ("Frostbitten: Icecrown");
	BNet::Utils::preprintachievement ($count, '8101', '2257', "High Thane Jorfus", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '8102', '2257', "Hildana Deathstealer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '8122', '2257', "Putridus the Ancient", %multiusercriteria);

	

}

sub p30_higher_learning ($%) {
	
}

sub p50_glorious ($%) {
	
}

sub p51_inyourbase ($%) {
	
}

sub p52_champions_of_lei_shen ($%) {
	
}

sub p54_timeless_champion ($%) {
	
}

sub p62_jungle_stalker ($%) {
	
}

sub p70_adventurer_of_azsuna ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Fighting with Style: Classic");
	BNet::Utils::preprintachievement ($count, '33168', '10461', "Order Hall Part 1", %multiusercriteria);

}

sub p70_adventurer_of_valsharah ($%) {
	
}

sub p70_adventurer_of_highmountain ($%) {
	
}

sub p70_adventurer_of_stormheim ($%) {
	
}

sub p70_adventurer_of_suramar ($%) {
	
}



1;
