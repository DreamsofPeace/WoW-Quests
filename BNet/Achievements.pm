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

	BNet::Utils::groupheader ("Adventurer of Azsuna");
	BNet::Utils::preprintachievement ($count, '33248', '11261', "Valiyaka the Stormbringer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33249', '11261', "Horn of the Siren", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33250', '11261', "Captain Volo\'ren", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33251', '11261', "The Oracle", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33257', '11261', "Mrrgrl the Tide Reaver", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33258', '11261', "Flog the Captain-Eater", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33259', '11261', "Daggerbeak", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33260', '11261', "Seek & Destroy Squad", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33261', '11261', "Normantis the Deposed", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33262', '11261', "Unbound Rift", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33263', '11261', "Syphonus & Leodrath", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33264', '11261', "Cache of Infernals", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33265', '11261', "Pridelord Meowl", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33267', '11261', "Tide Behemoth", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33268', '11261', "Beacher", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32403', '11261', "Marius & Tehd versus a Fel Lord", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32402', '11261', "Marius & Tehd versus a Doomlord", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32401', '11261', "Marius & Tehd versus Felbats", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33269', '11261', "Chief Bitterbrine", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33270', '11261', "Brawlgoth", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33271', '11261', "Ragemaw", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33272', '11261', "Treacherous Stallions", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33372', '11261', "Arcanist Shal\'iman", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33373', '11261', "Vorthax", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33374', '11261', "Inquisitor Tivos", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33377', '11261', "Ravyn-Drath", %multiusercriteria);


}

sub p70_adventurer_of_valsharah ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Adventurer of Val'sharah");
	BNet::Utils::preprintachievement ($count, '33273', '11262', "Gorebeak", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33274', '11262', "Seersei", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33275', '11262', "Theryssia", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33276', '11262', "Darkshade, Saber Matriarch", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33277', '11262', "Ironbranch", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33278', '11262', "Thondrax", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33279', '11262', "Elindya Featherlight", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33280', '11262', "Antydas Nightcaller", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33281', '11262', "Haunted Manor", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33282', '11262', "Purging the River", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33284', '11262', "Grelda the Hag", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33285', '11262', "Old Bear Trap", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33286', '11262', "Perrexx the Corruptor", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33287', '11262', "Wraithtalon", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33288', '11262', "Dreadbog", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33289', '11262', "Lyrath Moonfeather", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33290', '11262', "Undergrell Attack", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33291', '11262', "Bahagar", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '34537', '11262', "Unguarded Thistleleaf Treasure", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32406', '11262', "Marius & Tehd versus a Satyr", %multiusercriteria);

}

sub p70_adventurer_of_highmountain ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Adventurer of Highmountain");

	BNet::Utils::preprintachievement ($count, '33338', '11264', "Sekhan", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33330', '11264', "The Beastly Boxer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33331', '11264', "Crab Rider Grmlrml", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33326', '11264', "Crawshuk the Hungry", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33320', '11264', "Gurbog da Basher", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33325', '11264', "Hartli the Snatcher", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33318', '11264', "Skywhisker Taskmaster", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33340', '11264', "Unethical Adventurers", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33323', '11264', "The Exiled Shaman", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33324', '11264', "Beastmaster Pao'lek", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33319', '11264', "Majestic Elderhorn", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33328', '11264', "Bristlemaul", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33329', '11264', "Scout Harefoot", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33375', '11264', "Bodash the Hoarder", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33334', '11264', "Totally Safe Treasure Chest", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33336', '11264', "Amateur Hunters", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33321', '11264', "Mellok, Son of Torok", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33337', '11264', "Devouring Darkness", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33332', '11264', "Luggut the Eggeater", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33322', '11264', "Shara Felbreath", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33333', '11264', "Captured Survivor", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33335', '11264', "Slumbering Bear", %multiusercriteria);

}

sub p70_adventurer_of_stormheim ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Adventurer of Stormheim");
	BNet::Utils::preprintachievement ($count, '33293', '11263', "Glimar Ironfist", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33294', '11263', "Stormwing Matriarch", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33295', '11263', "Fathnyr", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33296', '11263', "Bladesquall", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33297', '11263', "Thane's Mead Hall", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33298', '11263', "Fenri", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33299', '11263', "Whitewater Typhoon", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33300', '11263', "Worg Pack", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '0', '11263', "Worgen Stalkers or Forsaken Deathsquad (Untrackable)", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33303', '11263', "Helmouth Raiders", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33304', '11263', "Ivory Sentinel", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33305', '11263', "The Nameless King", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33306', '11263', "Lost Ettin", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33307', '11263', "Mordvigbjorn", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33308', '11263', "Urgev the Flayer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33309', '11263', "Isel the Hammer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33310', '11263', "Soulthirster", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33311', '11263', "Egyl the Enduring", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33312', '11263', "Tarben", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33313', '11263', "Kottr Vondyr", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33314', '11263', "Grrvrgull the Conquerer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33315', '11263', "Hannval the Butcher", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33316', '11263', "Roteye", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '32404', '11263', "Marius & Tehd versus an Inquisitor", %multiusercriteria);

}

sub p70_adventurer_of_suramar ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Adventurer of Suramar");
	BNet::Utils::preprintachievement ($count, '33341', '11265', "Garvrulg", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33342', '11265', "Elfbane", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33343', '11265', "Cora'kar", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33344', '11265', "Rok'nash", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33345', '11265', "Har'kess the Insatiable", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33346', '11265', "Hertha Grimdottir", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33347', '11265', "Reef Lord Raj'his", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33348', '11265', "Shadowquil", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33349', '11265', "Rauren", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33350', '11265', "Artificer Lothaire", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33351', '11265', "Pinchshank", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33352', '11265', "Shal'an", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33353', '11265', "Magister Phaedris", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33354', '11265', "Mal'Dreth the Corrupter", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33355', '11265', "Myonix", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33356', '11265', "Seigemaster Aedrin", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33357', '11265', "Oreth the Vile", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33358', '11265', "Arcanist Lylandre", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33359', '11265', "Cadraeus", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33360', '11265', "Tideclaw", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33361', '11265', "Gorgroth", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33362', '11265', "Apothecary Faldren", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33363', '11265', "Guardian Thor'el", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33364', '11265', "Randril", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33365', '11265', "Anax", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33366', '11265', "Matron Hagatha", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33367', '11265', "Ambassador D'vwinn", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33368', '11265', "Degren", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33369', '11265', "Miasu", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33370', '11265', "Maia the White", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33371', '11265', "Mar'tura", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33376', '11265', "Lieutenant Strathmar", %multiusercriteria);

}

sub p73_adventurer_of_argus ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Adventurer of Argus");
	BNet::Utils::preprintachievement ($count, '37665', '12077', "Mother Rosula", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37605', '12077', "Worldsplitter Skuul", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37606', '12077', "Chief Alchemist Munculus", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37654', '12077', "Shadowcaster Voruun", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37655', '12077', "Talestra the Vile", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37656', '12077', "Gar'zoth", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37657', '12077', "Blistermaw", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37658', '12077', "Mistress Il'thendra", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37659', '12077', "Siegemaster Voraan", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37660', '12077', "The Many-Faced Devourer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37662', '12077', "Squadron Commander Vishax", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37663', '12077', "Doomcaster Suprax", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37661', '12077', "Soultender Videx", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37664', '12077', "Rezira the Seer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37653', '12077', "Tereck the Selector", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37652', '12077', "Vagath the Betrayed", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37651', '12077', "Tar Spitter", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37650', '12077', "Imp Mother Laglath", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37649', '12077', "Vrax'thul", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37648', '12077', "Ven'orn", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37647', '12077', "Puscilla", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37646', '12077', "Khazaduum", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37645', '12077', "Naroua", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37644', '12077', "Commander Sathrenael", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37643', '12077', "Commander Vecaya", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37642', '12077', "Commander Endaxis", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37641', '12077', "Sister Subversia", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37640', '12077', "Soultwisted Monstrosity", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37639', '12077', "Wrangler Kravos", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37638', '12077', "Kaara the Pale", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37637', '12077', "Baruut the Bloodthirsty", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37636', '12077', "Feasel the Muffin Thief", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37635', '12077', "Vigilant Thanos", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37634', '12077', "Vigilant Kuro", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37633', '12077', "Venomtail Skyfin", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37632', '12077', "Turek the Lucid", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37631', '12077', "Captain Faruq", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37630', '12077', "Umbraliss", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37629', '12077', "Ataxon", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37628', '12077', "Sorolis the Ill-Fated", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37627', '12077', "Herald of Chaos", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37626', '12077', "Sabuul", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37625', '12077', "Jed'hin Champion Vorusk", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37624', '12077', "Overseer Y'Beda", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37623', '12077', "Overseer Y'Sorna", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37622', '12077', "Overseer Y'Morna", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37621', '12077', "Instructor Tarahna", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37620', '12077', "Zul'tan the Numerous", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37619', '12077', "Commander Xethgar", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37618', '12077', "Skreeg the Devourer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37617', '12077', "Slithon the Last", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37616', '12077', "Wrath-Lord Yarez", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37615', '12077', "Houndmaster Kerrax", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37614', '12077', "Void Warden Valsuran", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37613', '12077', "Watcher Aival", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37612', '12077', "Lieutenant Xakaar", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37611', '12077', "Admiral Rel'var", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37610', '12077', "Commander Texlaz", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37609', '12077', "All-Seer Xanarian", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37608', '12077', "Inquisitor Vethroz", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37607', '12077', "Varga", %multiusercriteria);

}



sub p73_invasion_obliteration ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Invasion Obliteration");
	BNet::Utils::preprintachievement ($count, '37450', '12026', "Occularus", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37451', '12026', "Sotanathor", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37452', '12026', "Matron Folnuna", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37453', '12026', "Inquisitor Meto", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37454', '12026', "Mistress Alluradel", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37455', '12026', "Pit Lord Vilemus", %multiusercriteria);

}

1;
