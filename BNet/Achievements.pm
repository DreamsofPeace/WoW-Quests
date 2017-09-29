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
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Higher Learning");

	BNet::Utils::preprintachievement ($count, '7236', '1956', "The Schools of Arcane Magic - Introduction", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '7237', '1956', "The Schools of Arcane Magic - Abjuration", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '7238', '1956', "The Schools of Arcane Magic - Conjuration", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '7239', '1956', "The Schools of Arcane Magic - Divination", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '7240', '1956', "The Schools of Arcane Magic - Enchantment", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '7241', '1956', "The Schools of Arcane Magic - Illusion", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '7242', '1956', "The Schools of Arcane Magic - Necromancy", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '7243', '1956', "The Schools of Arcane Magic - Transmutation", %multiusercriteria);

}

sub p50_glorious ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Glorious!");
	BNet::Utils::preprintachievement ($count, '21048', '7439', "Mister Ferocious", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21049', '7439', "Bonobos", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21050', '7439', "Spriggin", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21051', '7439', "Scritch", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21052', '7439', "The Yowler", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21053', '7439', "Ik-Ik the Nimble", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21054', '7439', "Major Nanners", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21055', '7439', "Aethis", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21056', '7439', "Sele'na", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21057', '7439', "Cournith Waterstrider", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21058', '7439', "Zai the Outcast", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21059', '7439', "Eshelon", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21060', '7439', "Nalash Verdantis", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21061', '7439', "Sahn Tidehunter", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21062', '7439', "Krax'ik", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21063', '7439', "Nal'lak the Ripper", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21064', '7439', "Torik-Ethis", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21065', '7439', "Ski'thik", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21066', '7439', "Lith'ik the Stalker", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21067', '7439', "Gar'lok", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21068', '7439', "Kal'tik the Blight", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21069', '7439', "Kor'nas Nightsavage", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21070', '7439', "Sulik'shor", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21071', '7439', "Gaarn the Toxic", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21072', '7439', "Borginn Darkfist", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21073', '7439', "Norlaxx", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21074', '7439', "Karr the Darkener", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21075', '7439', "Kang the Soul Thief", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21076', '7439', "Morgrinn Crackfang", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21077', '7439', "Jonn-Dar", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21078', '7439', "Qu'nas", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21079', '7439', "Havak", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21080', '7439', "Kah'tir", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21081', '7439', "Krol the Blade", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21082', '7439', "Urgolax", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21083', '7439', "Urobi the Walker", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21084', '7439', "Nasra Spothide", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21085', '7439', "Ruun Ghostpaw", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21086', '7439', "Ahone the Wanderer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21087', '7439', "Yul Wildpaw", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21088', '7439', "Ai-Li Skymirror", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21089', '7439', "Ai-Ran the Shifting Cloud", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21090', '7439', "Sarnak", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21091', '7439', "Salyin Warscout", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21092', '7439', "Arness the Scale", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21093', '7439', "Nessos the Oracle", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21094', '7439', "Siltriss the Sharpener", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21095', '7439', "Omnis Grinlok", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21096', '7439', "Moldo One-Eye", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21097', '7439', "Ferdinand", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21098', '7439', "Blackhoof", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21099', '7439', "Go-Kan", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21100', '7439', "Korda Torros", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21101', '7439', "Lon the Bull", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21102', '7439', "Dak the Breaker", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '21103', '7439', "Yorik Sharpeye", %multiusercriteria);
}

sub p52_champions_of_lei_shen ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Champions of Lei Shen");
	BNet::Utils::preprintachievement ($count, '22820', '8103', "Haywire Sunreaver Construct", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '22821', '8103', "Mumta", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '22822', '8103', "Ku'lai the Skyclaw", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '22823', '8103', "Progenitus", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '22824', '8103', "Goda", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '22825', '8103', "God-Hulk Ramuk", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '22826', '8103', "Al'tabim the All-Seeing", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '22827', '8103', "Backbreaker Uru", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '22828', '8103', "Lu-Ban", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '22829', '8103', "Molthor", %multiusercriteria);
}

sub p54_timeless_champion ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Timeless Champion");
	BNet::Utils::preprintachievement ($count, '23967', '8714', "Emerald Gander", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23968', '8714', "Ironfur Steelhorn", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23969', '8714', "Great Turtle Furyshell", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23970', '8714', "Gu'chi the Swarmbringer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23971', '8714', "Zesqua", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23972', '8714', "Zhu-Gon the Sour", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23973', '8714', "Karkanos", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23974', '8714', "Chelon", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23975', '8714', "Spelurk", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23976', '8714', "Cranegnasher", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23977', '8714', "Rattleskew", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23978', '8714', "Spirit of Jadefire", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23979', '8714', "Leafmender", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23986', '8714', "Bufo", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23982', '8714', "Garnia", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23983', '8714', "Tsavo'ka", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23985', '8714', "Monstrous Spineclaw", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23989', '8714', "Imperial Python", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24144', '8714', "Stinkbraid", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23980', '8714', "Rock Moss", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23992', '8714', "Watcher Osu", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23994', '8714', "Jakur of Ordon", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23996', '8714', "Champion of the Black Flame", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23981', '8714', "Cinderfall", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23993', '8714', "Urdur the Cauterizer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23995', '8714', "Flintlord Gairan", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23984', '8714', "Huolon", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23988', '8714', "Golganarr", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23990', '8714', "Evermaw", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23987', '8714', "Dread Ship Vazuvius", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '0', '8714', "Archiereus of Flame (Untrackable)", %multiusercriteria);

}

sub p54_bigger_bag ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Going To Need A Bigger Bag (Account Wide");
	BNet::Utils::preprintachievement ($count, '24024', '8728', "Cursed Swabby Helmet", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24080', '8728', "Warped Warning Sign", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24079', '8728', "Giant Purse of Timeless Coins", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24078', '8728', "Crystal of Insanity", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24077', '8728', "Battle Horn", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24075', '8728', "Forager's Gloves", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24074', '8728', "Big Bag of Herbs", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24073', '8728', "Overgrown Lilypad", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24072', '8728', "Hardened Shell", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24071', '8728', "Bubbling Pi'jiu Brew", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24070', '8728', "Thick Pi'jiu Brew", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24069', '8728', "Misty Pi'jiu Brew", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24068', '8728', "Warning Sign", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24067', '8728', "Ash-Covered Horn", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24066', '8728', "Cauterizing Core", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24065', '8728', "Captain Zvezdan's Lost Leg", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24064', '8728', "Cursed Talisman", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24063', '8728', "Golden Moss", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24062', '8728', "Strange Glowing Mushroom", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24061', '8728', "Eternal Kiln", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24060', '8728', "Jadefire Spirit", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24059', '8728', "Sunset Stone", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24058', '8728', "Ashen Stone", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24057', '8728', "Blizzard Stone", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24056', '8728', "Rain Stone", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24055', '8728', "Blackflame Daggers", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24054', '8728', "Falling Flame", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24053', '8728', "Ordon Death Chime", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24052', '8728', "Blazing Sigil of Ordos", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24051', '8728', "Ordon Ceremonial Robes", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24050', '8728', "Rime of the Time-Lost Mariner", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24049', '8728', "Scuttler's Shell", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24048', '8728', "Partially-Digested Meal", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24047', '8728', "Swarmling of Gu'chi", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24046', '8728', "Sticky Silkworm Goo", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24045', '8728', "Faintly-Glowing Herb", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24044', '8728', "Condensed Jademist", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24043', '8728', "Windfeather Plume", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24042', '8728', "Quivering Firestorm Egg", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24081', '8728', "Reins of the Thundering Onyx Cloud Serpent", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24041', '8728', "Pristine Stalker Hide", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24040', '8728', "Glinting Pile of Stone", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24039', '8728', "Odd Polished Stone", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24038', '8728', "Glowing Blue Ash", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24037', '8728', "Glowing Green Ash", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24035', '8728', "Bonkers", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24034', '8728', "Gulp Froglet", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24033', '8728', "Spineclaw Crab", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24032', '8728', "Skunky Alemental", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24031', '8728', "Ominous Flame", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24030', '8728', "Jademist Dancer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24029', '8728', "Death Adder Hatchling", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24028', '8728', "Dandelion Frolicker", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24027', '8728', "Ruby Droplet", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24026', '8728', "Azure Crane Chick", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24025', '8728', "Ashleaf Spriteling", %multiusercriteria);

}

sub p60_heralds_of_the_legion ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Heralds of the Legion");
	BNet::Utils::preprintachievement ($count, '26476', '9638', "Orumo the Observer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26477', '9638', "Lord Korinak", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26478', '9638', "Lady Demlash", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26479', '9638', "Shadowflame Terrorwalker", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26480', '9638', "Kurlosh Doomfang", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26481', '9638', "Matron of Sin", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26582', '9638', "Vigilant Paarthos", %multiusercriteria);

}

sub p60_fight_the_power ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Fight the Power");
	BNet::Utils::preprintachievement ($count, '26542', '9655', "Maniacal Madgard", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26543', '9655', "Defector Dazgo", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26544', '9655', "Durp the Hated", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26545', '9655', "Inventor Blammo", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26548', '9655', "Horgg", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26550', '9655', "Blademaster Ro'gor", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26551', '9655', "Morgo Kain", %multiusercriteria);

}

sub p60_ancient_no_more ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Ancient No More");
	BNet::Utils::preprintachievement ($count, '26593', '9678', "Swift Onyx Flayer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26594', '9678', "Mogamago", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26595', '9678', "Protectors of the Grove", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26596', '9678', "Venolasix", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26597', '9678', "Alkali", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26598', '9678', "Depthroot", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26599', '9678', "Firestarter Grash", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26600', '9678', "Grove Warden Yal", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26606', '9678', "Hunter Bal'ra", %multiusercriteria);

}

sub p60_gorgrond_monster_hunter ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Gorgrond Monster Hunter");
	BNet::Utils::preprintachievement ($count, '25568', '9400', "Biolante", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25569', '9400', "Roardan the Sky Terror", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25570', '9400', "Crater Lord Igneous", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25571', '9400', "Dessicus of the Dead Pools", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25572', '9400', "Khargax the Devourer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25573', '9400', "Erosian the Violent", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25574', '9400', "Charl Doomwing", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25575', '9400', "Fungal Praetorian", %multiusercriteria);

}


sub p62_jungle_stalker ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Jungle Stalker");
	BNet::Utils::preprintachievement ($count, '28329', '10070', "Podlord Wakkawam", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28330', '10070', "Bramblefell", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28331', '10070', "Zeter'el", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28332', '10070', "Felspark", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28333', '10070', "Imp-Master Valessa", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28334', '10070', "Lady Oran", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28335', '10070', "Jax'zor", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28336', '10070', "Ceraxas", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28337', '10070', "Mistress Thavra", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28338', '10070', "Cindral the Wildfire", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28339', '10070', "Sergeant Mor'grak", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28340', '10070', "Varyx the Damned", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28341', '10070', "Rasthe", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28342', '10070', "Painmistress Selora", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28343', '10070', "Grand Warlock Nethekurse", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28344', '10070', "Steelsnout", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28345', '10070', "Magwia", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28346', '10070', "Commander Krag'goth", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28347', '10070', "Tho'gar Gorefist", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28348', '10070', "Grannok", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28349', '10070', "Szirek the Twisted", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28350', '10070', "The Iron Houndmaster", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28351', '10070', "Bilkor the Thrower", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28352', '10070', "Rogond the Tracker", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28353', '10070', "Dorg the Bloody", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28354', '10070', "Drivnul", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28355', '10070', "Bloodhunter Zulk", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28356', '10070', "Relgor", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28357', '10070', "Broodlord Ixkor", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28358', '10070', "Soulslicer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28359', '10070', "Gloomtalon", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28360', '10070', "Krell the Serene", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28361', '10070', "The Blackfang", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28362', '10070', "Thromma the Gutslicer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28363', '10070', "Belgork", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28364', '10070', "Sylissa", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28365', '10070', "Rendrak", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28366', '10070', "The Night Haunter", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28367', '10070', "The Goreclaw", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28368', '10070', "Gorabosh", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28369', '10070', "Driss Vile", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28370', '10070', "(The Real) Captain Ironbeard", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28371', '10070', "Glub'glok", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28372', '10070', "Felbore", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28373', '10070', "Akrrilo", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28374', '10070', "Rendarr", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28375', '10070', "Eyepiercer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28376', '10070', "Bleeding Hollow Horror", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28377', '10070', "Kris'kar the Unredeemed", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28380', '10070', "Executor Riloth", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28722', '10070', "Argosh the Destroyer", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28723', '10070', "Zoug the Heavy", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28724', '10070', "Harbormaster Korak", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28725', '10070', "Shadowthrash", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28726', '10070', "Felsmith Damorka", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28727', '10070', "Putre'thar", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28728', '10070', "Xanzith the Everlasting", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28729', '10070', "Overlord Ma'gruth", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28730', '10070', "Captain Grok'mar", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28731', '10070', "Commander Org'mok", %multiusercriteria);


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
