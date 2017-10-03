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

sub p73_invasion_lesser ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Argus: Lesser Invasions");
	BNet::Utils::preprintachievement ($count, '37456', '12028', "Mazgoroth", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37457', '12028', "Gorgoloth", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37458', '12028', "Dread Knight Zak'gal", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37459', '12028', "Fel Lord Kaz'ral", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37460', '12028', "Flamecaller Vazrah", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37461', '12028', "Flameweaver Verathix", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37462', '12028', "Harbinger Drel'nathar", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37463', '12028', "Dreadbringer Valus", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37464', '12028', "Malphazel", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37465', '12028', "Vogrethar the Defiled", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37466', '12028', "Vel'thrak the Punisher", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37467', '12028', "Flamebringer Az'rothel", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37468', '12028', "Baldrazar", %multiusercriteria);

}

sub p73_invasion_greater ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Argus: Greater Invasions");
	BNet::Utils::preprintachievement ($count, '37450', '12026', "Occularus", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37451', '12026', "Sotanathor", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37452', '12026', "Matron Folnuna", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37453', '12026', "Inquisitor Meto", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37454', '12026', "Mistress Alluradel", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37455', '12026', "Pit Lord Vilemus", %multiusercriteria);

}

sub p70_archy_a_keen_eye ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("A Keen Eye");
	BNet::Utils::preprintachievement ($count, '29966', '10603', "Crystalline Eye of Undravius", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29967', '10603', "Starlight Beacon", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29968', '10603', "Spear of Rethu", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29969', '10603', "Crown Jewels of Suramar", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29970', '10603', "Imp Generator", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29971', '10603', "Black Rook Key", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29972', '10603', "Wyrmy Tunkins", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29973', '10603', "Shard of Sciallax", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29974', '10603', "Prizerock Neckband", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29975', '10603', "Blood of Young Mannoroth", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29976', '10603', "Key to Nar'thalas Academy", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29977', '10603', "Purple Hills of Mac'Aree", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29978', '10603', "Spirit of Eche'ro", %multiusercriteria);


}

sub p70_archy_legion_curator ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Legion Curator");
	BNet::Utils::preprintachievement ($count, '29979', '10604', "Pristine Imp's Cup", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29980', '10604', "Pristine Flayed-Skin Chronicle", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29981', '10604', "Pristine Malformed Abyssal", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29982', '10604', "Pristine Orb of Inner Chaos", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29983', '10604', "Pristine Houndstooth Hauberk", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29984', '10604', "Pristine Violetglass Vessel", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29985', '10604', "Pristine Inert Leystone Charm", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29986', '10604', "Pristine Quietwine Vial", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29987', '10604', "Pristine Pre-War Highborne Tapestry", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29988', '10604', "Pristine Nobleman's Letter Opener", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29989', '10604', "Pristine Trailhead Drum", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29990', '10604', "Pristine Moosebone Fish-Hook", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29991', '10604', "Pristine Hand-Smoothed Pyrestone", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29992', '10604', "Pristine Drogbar Gem-Roller", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29993', '10604', "Pristine Stonewood Bow", %multiusercriteria);

}


sub p60_grand_treasure_hunter ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Grand Treasure Hunter");
	BNet::Utils::preprintachievement ($count, '24461', '9728', "Treasure 001", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '23564', '9728', "Treasure 002", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26802', '9728', "Treasure 003", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26803', '9728', "Treasure 004", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26804', '9728', "Treasure 005", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26805', '9728', "Treasure 006", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26806', '9728', "Treasure 007", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26807', '9728', "Treasure 008", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26808', '9728', "Treasure 009", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26809', '9728', "Treasure 010", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26810', '9728', "Treasure 011", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26811', '9728', "Treasure 012", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26812', '9728', "Treasure 013", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26813', '9728', "Treasure 014", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26814', '9728', "Treasure 015", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26815', '9728', "Treasure 016", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26816', '9728', "Treasure 017", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26817', '9728', "Treasure 018", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26818', '9728', "Treasure 019", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26819', '9728', "Treasure 020", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26822', '9728', "Treasure 021", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26823', '9728', "Treasure 022", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26824', '9728', "Treasure 023", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26825', '9728', "Treasure 024", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26826', '9728', "Treasure 025", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26827', '9728', "Treasure 026", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26828', '9728', "Treasure 027", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26829', '9728', "Treasure 028", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26830', '9728', "Treasure 029", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26831', '9728', "Treasure 030", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26832', '9728', "Treasure 031", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26833', '9728', "Treasure 032", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26834', '9728', "Treasure 033", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26835', '9728', "Treasure 034", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26836', '9728', "Treasure 035", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26837', '9728', "Treasure 036", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26838', '9728', "Treasure 037", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26839', '9728', "Treasure 038", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26840', '9728', "Treasure 039", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26841', '9728', "Treasure 040", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26842', '9728', "Treasure 041", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26843', '9728', "Treasure 042", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26844', '9728', "Treasure 043", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26845', '9728', "Treasure 044", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26846', '9728', "Treasure 045", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26847', '9728', "Treasure 046", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26848', '9728', "Treasure 047", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26849', '9728', "Treasure 048", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26850', '9728', "Treasure 049", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26851', '9728', "Treasure 050", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26852', '9728', "Treasure 051", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26853', '9728', "Treasure 052", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26854', '9728', "Treasure 053", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26855', '9728', "Treasure 054", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26856', '9728', "Treasure 055", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26857', '9728', "Treasure 056", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26858', '9728', "Treasure 057", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26859', '9728', "Treasure 058", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26860', '9728', "Treasure 059", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26861', '9728', "Treasure 060", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26862', '9728', "Treasure 061", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26863', '9728', "Treasure 062", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26864', '9728', "Treasure 063", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26865', '9728', "Treasure 064", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26866', '9728', "Treasure 065", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26867', '9728', "Treasure 066", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26868', '9728', "Treasure 067", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26869', '9728', "Treasure 068", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26870', '9728', "Treasure 069", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26871', '9728', "Treasure 070", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26872', '9728', "Treasure 071", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26873', '9728', "Treasure 072", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26874', '9728', "Treasure 073", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26875', '9728', "Treasure 074", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26876', '9728', "Treasure 075", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26877', '9728', "Treasure 076", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26878', '9728', "Treasure 077", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26879', '9728', "Treasure 078", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26880', '9728', "Treasure 079", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26881', '9728', "Treasure 080", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26882', '9728', "Treasure 081", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26883', '9728', "Treasure 082", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26884', '9728', "Treasure 083", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26885', '9728', "Treasure 084", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26912', '9728', "Treasure 085", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26913', '9728', "Treasure 086", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26914', '9728', "Treasure 087", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26915', '9728', "Treasure 088", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26916', '9728', "Treasure 089", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26917', '9728', "Treasure 090", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26918', '9728', "Treasure 091", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26919', '9728', "Treasure 092", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26920', '9728', "Treasure 093", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26921', '9728', "Treasure 094", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26922', '9728', "Treasure 095", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26923', '9728', "Treasure 096", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26924', '9728', "Treasure 097", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26925', '9728', "Treasure 098", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26926', '9728', "Treasure 099", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26927', '9728', "Treasure 100", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26928', '9728', "Treasure 101", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26929', '9728', "Treasure 102", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26930', '9728', "Treasure 103", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26931', '9728', "Treasure 104", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26932', '9728', "Treasure 105", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26933', '9728', "Treasure 106", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26934', '9728', "Treasure 107", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26935', '9728', "Treasure 108", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26936', '9728', "Treasure 109", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26937', '9728', "Treasure 110", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26938', '9728', "Treasure 111", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26939', '9728', "Treasure 112", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26940', '9728', "Treasure 113", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26941', '9728', "Treasure 114", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26942', '9728', "Treasure 115", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26943', '9728', "Treasure 116", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26944', '9728', "Treasure 117", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26945', '9728', "Treasure 118", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26946', '9728', "Treasure 119", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26947', '9728', "Treasure 120", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26948', '9728', "Treasure 121", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26949', '9728', "Treasure 122", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26950', '9728', "Treasure 123", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26951', '9728', "Treasure 124", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26952', '9728', "Treasure 125", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26953', '9728', "Treasure 126", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26954', '9728', "Treasure 127", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26955', '9728', "Treasure 128", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26956', '9728', "Treasure 129", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26957', '9728', "Treasure 130", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26958', '9728', "Treasure 131", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26959', '9728', "Treasure 132", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26960', '9728', "Treasure 133", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26961', '9728', "Treasure 134", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26962', '9728', "Treasure 135", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26963', '9728', "Treasure 136", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26964', '9728', "Treasure 137", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26965', '9728', "Treasure 138", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26966', '9728', "Treasure 139", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26967', '9728', "Treasure 140", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26968', '9728', "Treasure 141", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26886', '9728', "Treasure 142", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26887', '9728', "Treasure 143", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26888', '9728', "Treasure 144", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26889', '9728', "Treasure 145", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26890', '9728', "Treasure 146", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26891', '9728', "Treasure 147", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26892', '9728', "Treasure 148", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26893', '9728', "Treasure 149", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26894', '9728', "Treasure 150", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26895', '9728', "Treasure 151", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26896', '9728', "Treasure 152", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26897', '9728', "Treasure 153", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26898', '9728', "Treasure 154", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26899', '9728', "Treasure 155", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26900', '9728', "Treasure 156", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26901', '9728', "Treasure 157", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26902', '9728', "Treasure 158", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26903', '9728', "Treasure 159", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26904', '9728', "Treasure 160", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26905', '9728', "Treasure 161", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26906', '9728', "Treasure 162", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26907', '9728', "Treasure 163", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26908', '9728', "Treasure 164", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26909', '9728', "Treasure 165", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26910', '9728', "Treasure 166", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26911', '9728', "Treasure 167", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27025', '9728', "Treasure 168", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27026', '9728', "Treasure 169", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27027', '9728', "Treasure 170", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27028', '9728', "Treasure 171", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27029', '9728', "Treasure 172", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27030', '9728', "Treasure 173", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27031', '9728', "Treasure 174", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27032', '9728', "Treasure 175", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27033', '9728', "Treasure 176", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27034', '9728', "Treasure 177", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27035', '9728', "Treasure 178", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27036', '9728', "Treasure 179", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27037', '9728', "Treasure 180", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27038', '9728', "Treasure 181", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27039', '9728', "Treasure 182", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27040', '9728', "Treasure 183", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27041', '9728', "Treasure 184", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27042', '9728', "Treasure 185", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27043', '9728', "Treasure 186", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27044', '9728', "Treasure 187", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27045', '9728', "Treasure 188", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27046', '9728', "Treasure 189", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27047', '9728', "Treasure 190", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27048', '9728', "Treasure 191", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27049', '9728', "Treasure 192", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27050', '9728', "Treasure 193", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27051', '9728', "Treasure 194", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27052', '9728', "Treasure 195", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27053', '9728', "Treasure 196", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27054', '9728', "Treasure 197", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27055', '9728', "Treasure 198", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27056', '9728', "Treasure 199", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27057', '9728', "Treasure 200", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27058', '9728', "Treasure 201", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27059', '9728', "Treasure 202", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27060', '9728', "Treasure 203", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27061', '9728', "Treasure 204", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27062', '9728', "Treasure 205", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27063', '9728', "Treasure 206", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27064', '9728', "Treasure 207", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27065', '9728', "Treasure 208", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27066', '9728', "Treasure 209", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27067', '9728', "Treasure 210", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27068', '9728', "Treasure 211", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27069', '9728', "Treasure 212", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27070', '9728', "Treasure 213", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27071', '9728', "Treasure 214", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27072', '9728', "Treasure 215", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27073', '9728', "Treasure 216", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27074', '9728', "Treasure 217", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27075', '9728', "Treasure 218", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27076', '9728', "Treasure 219", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27077', '9728', "Treasure 220", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27078', '9728', "Treasure 221", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27079', '9728', "Treasure 222", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27080', '9728', "Treasure 223", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27081', '9728', "Treasure 224", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27082', '9728', "Treasure 225", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27083', '9728', "Treasure 226", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27084', '9728', "Treasure 227", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27085', '9728', "Treasure 228", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27086', '9728', "Treasure 229", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27087', '9728', "Treasure 230", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27088', '9728', "Treasure 231", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25576', '9728', "Treasure 232", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27089', '9728', "Treasure 233", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25577', '9728', "Treasure 234", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25578', '9728', "Treasure 235", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25579', '9728', "Treasure 236", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25580', '9728', "Treasure 237", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25581', '9728', "Treasure 238", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25582', '9728', "Treasure 239", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25583', '9728', "Treasure 240", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25584', '9728', "Treasure 241", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25585', '9728', "Treasure 242", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25586', '9728', "Treasure 243", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25587', '9728', "Treasure 244", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25588', '9728', "Treasure 245", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25589', '9728', "Treasure 246", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25590', '9728', "Treasure 247", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25591', '9728', "Treasure 248", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25592', '9728', "Treasure 249", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27090', '9728', "Treasure 250", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27091', '9728', "Treasure 251", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27092', '9728', "Treasure 252", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '25593', '9728', "Treasure 253", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27093', '9728', "Treasure 254", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27094', '9728', "Treasure 255", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27095', '9728', "Treasure 256", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27096', '9728', "Treasure 257", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27097', '9728', "Treasure 258", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27098', '9728', "Treasure 259", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27099', '9728', "Treasure 260", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27100', '9728', "Treasure 261", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27101', '9728', "Treasure 262", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27102', '9728', "Treasure 263", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27103', '9728', "Treasure 264", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27104', '9728', "Treasure 265", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27105', '9728', "Treasure 266", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27106', '9728', "Treasure 267", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27107', '9728', "Treasure 268", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27108', '9728', "Treasure 269", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27109', '9728', "Treasure 270", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27110', '9728', "Treasure 271", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27111', '9728', "Treasure 272", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27112', '9728', "Treasure 273", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27113', '9728', "Treasure 274", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27114', '9728', "Treasure 275", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27115', '9728', "Treasure 276", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27116', '9728', "Treasure 277", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27117', '9728', "Treasure 278", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27118', '9728', "Treasure 279", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27119', '9728', "Treasure 280", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27120', '9728', "Treasure 281", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27121', '9728', "Treasure 282", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27122', '9728', "Treasure 283", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27123', '9728', "Treasure 284", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27124', '9728', "Treasure 285", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27125', '9728', "Treasure 286", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27126', '9728', "Treasure 287", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27127', '9728', "Treasure 288", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27128', '9728', "Treasure 289", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27129', '9728', "Treasure 290", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27130', '9728', "Treasure 291", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27131', '9728', "Treasure 292", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27132', '9728', "Treasure 293", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27133', '9728', "Treasure 294", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27134', '9728', "Treasure 295", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27135', '9728', "Treasure 296", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27136', '9728', "Treasure 297", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27137', '9728', "Treasure 298", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27138', '9728', "Treasure 299", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27139', '9728', "Treasure 300", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27140', '9728', "Treasure 301", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '24462', '9728', "Treasure 302", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27141', '9728', "Treasure 303", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '26825', '9728', "Treasure 304", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27142', '9728', "Treasure 305", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '27143', '9728', "Treasure 306", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29007', '9728', "Treasure 307", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29004', '9728', "Treasure 308", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29005', '9728', "Treasure 309", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '29006', '9728', "Treasure 310", %multiusercriteria);

}

sub p62_jungle_treasure_hunter ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Jungle Treasure Master");
	BNet::Utils::preprintachievement ($count, '28675', '10262', "Treasure 001", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28676', '10262', "Treasure 002", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28677', '10262', "Treasure 003", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28678', '10262', "Treasure 004", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28679', '10262', "Treasure 005", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28680', '10262', "Treasure 006", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28681', '10262', "Treasure 007", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28682', '10262', "Treasure 008", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28683', '10262', "Treasure 009", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28684', '10262', "Treasure 010", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28685', '10262', "Treasure 011", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28686', '10262', "Treasure 012", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28687', '10262', "Treasure 013", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28688', '10262', "Treasure 014", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28689', '10262', "Treasure 015", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28690', '10262', "Treasure 016", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28691', '10262', "Treasure 017", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28692', '10262', "Treasure 018", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28693', '10262', "Treasure 019", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28694', '10262', "Treasure 020", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28695', '10262', "Treasure 021", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28696', '10262', "Treasure 022", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28697', '10262', "Treasure 023", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28698', '10262', "Treasure 024", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28699', '10262', "Treasure 025", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28700', '10262', "Treasure 026", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28701', '10262', "Treasure 027", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28702', '10262', "Treasure 028", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28703', '10262', "Treasure 029", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28704', '10262', "Treasure 030", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28705', '10262', "Treasure 031", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28706', '10262', "Treasure 032", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28707', '10262', "Treasure 033", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28708', '10262', "Treasure 034", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28709', '10262', "Treasure 035", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28710', '10262', "Treasure 036", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28711', '10262', "Treasure 037", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28712', '10262', "Treasure 038", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28713', '10262', "Treasure 039", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28714', '10262', "Treasure 040", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28738', '10262', "Treasure 041", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28737', '10262', "Treasure 042", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28890', '10262', "Treasure 043", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28891', '10262', "Treasure 044", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28892', '10262', "Treasure 045", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28893', '10262', "Treasure 046", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28894', '10262', "Treasure 047", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28895', '10262', "Treasure 048", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28896', '10262', "Treasure 049", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28897', '10262', "Treasure 050", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28898', '10262', "Treasure 051", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '28999', '10262', "Treasure 052", %multiusercriteria);

}

sub p70_treasures_of_azsuna ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Treasures of Azsuna");
	BNet::Utils::preprintachievement ($count, '33199', '11256', "Treasure 001", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33200', '11256', "Treasure 002", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33201', '11256', "Treasure 003", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33202', '11256', "Treasure 004", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33203', '11256', "Treasure 005", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33204', '11256', "Treasure 006", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33205', '11256', "Treasure 007", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33206', '11256', "Treasure 008", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33207', '11256', "Treasure 009", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33208', '11256', "Treasure 010", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33209', '11256', "Treasure 011", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33210', '11256', "Treasure 012", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33211', '11256', "Treasure 013", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33212', '11256', "Treasure 014", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33213', '11256', "Treasure 015", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33214', '11256', "Treasure 016", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33215', '11256', "Treasure 017", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33216', '11256', "Treasure 018", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33217', '11256', "Treasure 019", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33218', '11256', "Treasure 020", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33219', '11256', "Treasure 021", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33220', '11256', "Treasure 022", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33221', '11256', "Treasure 023", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33222', '11256', "Treasure 024", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33223', '11256', "Treasure 025", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33224', '11256', "Treasure 026", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33225', '11256', "Treasure 027", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33226', '11256', "Treasure 028", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33227', '11256', "Treasure 029", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33228', '11256', "Treasure 030", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33229', '11256', "Treasure 031", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33230', '11256', "Treasure 032", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33231', '11256', "Treasure 033", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33232', '11256', "Treasure 034", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33233', '11256', "Treasure 035", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33234', '11256', "Treasure 036", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33235', '11256', "Treasure 037", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33236', '11256', "Treasure 038", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33237', '11256', "Treasure 039", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33238', '11256', "Treasure 040", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33239', '11256', "Treasure 041", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33240', '11256', "Treasure 042", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33241', '11256', "Treasure 043", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33242', '11256', "Treasure 044", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33243', '11256', "Treasure 045", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33244', '11256', "Treasure 046", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33245', '11256', "Treasure 047", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33246', '11256', "Treasure 048", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33247', '11256', "Treasure 049", %multiusercriteria);

}

sub p70_treasures_of_valsharah ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Treasures of Val'sharah");
	BNet::Utils::preprintachievement ($count, '33254', '11258', "Treasure 001", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33378', '11258', "Treasure 002", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33379', '11258', "Treasure 003", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33380', '11258', "Treasure 004", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33381', '11258', "Treasure 005", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33382', '11258', "Treasure 006", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33383', '11258', "Treasure 007", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33384', '11258', "Treasure 008", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33292', '11258', "Treasure 009", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33385', '11258', "Treasure 010", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33386', '11258', "Treasure 011", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33387', '11258', "Treasure 012", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33388', '11258', "Treasure 013", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33389', '11258', "Treasure 014", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33390', '11258', "Treasure 015", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33391', '11258', "Treasure 016", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33392', '11258', "Treasure 017", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33393', '11258', "Treasure 018", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33394', '11258', "Treasure 019", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33395', '11258', "Treasure 020", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33396', '11258', "Treasure 021", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33397', '11258', "Treasure 022", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33398', '11258', "Treasure 023", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33399', '11258', "Treasure 024", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33400', '11258', "Treasure 025", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33401', '11258', "Treasure 026", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33402', '11258', "Treasure 027", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33403', '11258', "Treasure 028", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33404', '11258', "Treasure 029", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33405', '11258', "Treasure 030", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33406', '11258', "Treasure 031", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33407', '11258', "Treasure 032", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33408', '11258', "Treasure 033", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33409', '11258', "Treasure 034", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33410', '11258', "Treasure 035", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33411', '11258', "Treasure 036", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33412', '11258', "Treasure 037", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33413', '11258', "Treasure 038", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33414', '11258', "Treasure 039", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33415', '11258', "Treasure 040", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33416', '11258', "Treasure 041", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33417', '11258', "Treasure 042", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33418', '11258', "Treasure 043", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33419', '11258', "Treasure 044", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33420', '11258', "Treasure 045", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33421', '11258', "Treasure 046", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33422', '11258', "Treasure 047", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33423', '11258', "Treasure 048", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33424', '11258', "Treasure 049", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33425', '11258', "Treasure 050", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33426', '11258', "Treasure 051", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33427', '11258', "Treasure 052", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33428', '11258', "Treasure 053", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33429', '11258', "Treasure 054", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33430', '11258', "Treasure 055", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33431', '11258', "Treasure 056", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33432', '11258', "Treasure 057", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33433', '11258', "Treasure 058", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33434', '11258', "Treasure 059", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33435', '11258', "Treasure 060", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33436', '11258', "Treasure 061", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33437', '11258', "Treasure 062", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33438', '11258', "Treasure 063", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33439', '11258', "Treasure 064", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33440', '11258', "Treasure 065", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33441', '11258', "Treasure 066", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33442', '11258', "Treasure 067", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33443', '11258', "Treasure 068", %multiusercriteria);

}

sub p70_treasures_of_highmountain ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Treasures of Highmountain");
	BNet::Utils::preprintachievement ($count, '33252', '11257', "Treasure 001", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33253', '11257', "Treasure 002", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33514', '11257', "Treasure 003", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33515', '11257', "Treasure 004", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33516', '11257', "Treasure 005", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33517', '11257', "Treasure 006", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33518', '11257', "Treasure 007", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33519', '11257', "Treasure 008", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33520', '11257', "Treasure 009", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33521', '11257', "Treasure 010", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33522', '11257', "Treasure 011", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33523', '11257', "Treasure 012", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33524', '11257', "Treasure 013", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33525', '11257', "Treasure 014", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33526', '11257', "Treasure 015", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33527', '11257', "Treasure 016", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33528', '11257', "Treasure 017", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33529', '11257', "Treasure 018", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33530', '11257', "Treasure 019", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33531', '11257', "Treasure 020", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33532', '11257', "Treasure 021", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33533', '11257', "Treasure 022", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33534', '11257', "Treasure 023", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33535', '11257', "Treasure 024", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33536', '11257', "Treasure 025", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33537', '11257', "Treasure 026", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33538', '11257', "Treasure 027", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33539', '11257', "Treasure 028", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33540', '11257', "Treasure 029", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33541', '11257', "Treasure 030", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33542', '11257', "Treasure 031", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33543', '11257', "Treasure 032", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33544', '11257', "Treasure 033", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33545', '11257', "Treasure 034", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33546', '11257', "Treasure 035", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33547', '11257', "Treasure 036", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33548', '11257', "Treasure 037", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33549', '11257', "Treasure 038", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33550', '11257', "Treasure 039", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33551', '11257', "Treasure 040", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33552', '11257', "Treasure 041", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33553', '11257', "Treasure 042", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33554', '11257', "Treasure 043", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33555', '11257', "Treasure 044", %multiusercriteria);

}

sub p70_treasures_of_stormheim ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Treasures of Stormheim");
	BNet::Utils::preprintachievement ($count, '33255', '11259', "Treasure 001", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33443', '11259', "Treasure 002", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33444', '11259', "Treasure 003", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33449', '11259', "Treasure 004", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33446', '11259', "Treasure 005", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33447', '11259', "Treasure 006", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33448', '11259', "Treasure 007", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33445', '11259', "Treasure 008", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33450', '11259', "Treasure 009", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33451', '11259', "Treasure 010", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33452', '11259', "Treasure 011", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33453', '11259', "Treasure 012", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33454', '11259', "Treasure 013", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33455', '11259', "Treasure 014", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33456', '11259', "Treasure 015", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33457', '11259', "Treasure 016", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33458', '11259', "Treasure 017", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33459', '11259', "Treasure 018", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33460', '11259', "Treasure 019", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33461', '11259', "Treasure 020", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33462', '11259', "Treasure 021", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33463', '11259', "Treasure 022", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33464', '11259', "Treasure 023", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33465', '11259', "Treasure 024", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33460', '11259', "Treasure 025", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33466', '11259', "Treasure 026", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33467', '11259', "Treasure 027", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33468', '11259', "Treasure 028", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33469', '11259', "Treasure 029", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33470', '11259', "Treasure 030", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33471', '11259', "Treasure 031", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33472', '11259', "Treasure 032", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33473', '11259', "Treasure 033", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33474', '11259', "Treasure 034", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33475', '11259', "Treasure 035", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33476', '11259', "Treasure 036", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33477', '11259', "Treasure 037", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33478', '11259', "Treasure 038", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33479', '11259', "Treasure 039", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33480', '11259', "Treasure 040", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33481', '11259', "Treasure 041", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33482', '11259', "Treasure 042", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33483', '11259', "Treasure 043", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33484', '11259', "Treasure 044", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33485', '11259', "Treasure 045", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33486', '11259', "Treasure 046", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33487', '11259', "Treasure 047", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33488', '11259', "Treasure 048", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33489', '11259', "Treasure 049", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33490', '11259', "Treasure 050", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33491', '11259', "Treasure 051", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33492', '11259', "Treasure 052", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33493', '11259', "Treasure 053", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33494', '11259', "Treasure 054", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33495', '11259', "Treasure 055", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33496', '11259', "Treasure 056", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33497', '11259', "Treasure 057", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33498', '11259', "Treasure 058", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33499', '11259', "Treasure 059", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33500', '11259', "Treasure 060", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33501', '11259', "Treasure 061", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33502', '11259', "Treasure 062", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33503', '11259', "Treasure 063", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33504', '11259', "Treasure 064", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33505', '11259', "Treasure 065", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33507', '11259', "Treasure 066", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33508', '11259', "Treasure 067", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33509', '11259', "Treasure 068", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33510', '11259', "Treasure 069", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33511', '11259', "Treasure 070", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33512', '11259', "Treasure 071", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33513', '11259', "Treasure 072", %multiusercriteria);

}

sub p70_treasures_of_suramar ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Treasures of Suramar");
	BNet::Utils::preprintachievement ($count, '33256', '11260', "Treasure 001", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33556', '11260', "Treasure 002", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33557', '11260', "Treasure 003", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33558', '11260', "Treasure 004", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33559', '11260', "Treasure 005", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33560', '11260', "Treasure 006", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33561', '11260', "Treasure 007", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33562', '11260', "Treasure 008", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33563', '11260', "Treasure 009", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33564', '11260', "Treasure 010", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33565', '11260', "Treasure 011", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33566', '11260', "Treasure 012", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33567', '11260', "Treasure 013", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33568', '11260', "Treasure 014", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33569', '11260', "Treasure 015", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33570', '11260', "Treasure 016", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33571', '11260', "Treasure 017", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33572', '11260', "Treasure 018", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33573', '11260', "Treasure 019", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33574', '11260', "Treasure 020", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33575', '11260', "Treasure 021", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33576', '11260', "Treasure 022", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33577', '11260', "Treasure 023", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33578', '11260', "Treasure 024", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33579', '11260', "Treasure 025", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33580', '11260', "Treasure 026", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33581', '11260', "Treasure 027", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33582', '11260', "Treasure 028", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33583', '11260', "Treasure 029", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33584', '11260', "Treasure 030", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33585', '11260', "Treasure 031", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33586', '11260', "Treasure 032", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33587', '11260', "Treasure 033", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33588', '11260', "Treasure 034", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33589', '11260', "Treasure 035", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33590', '11260', "Treasure 036", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33591', '11260', "Treasure 037", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33592', '11260', "Treasure 038", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33593', '11260', "Treasure 039", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33594', '11260', "Treasure 040", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33595', '11260', "Treasure 041", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33596', '11260', "Treasure 042", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33597', '11260', "Treasure 043", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33598', '11260', "Treasure 044", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33599', '11260', "Treasure 045", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33600', '11260', "Treasure 046", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33601', '11260', "Treasure 047", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33602', '11260', "Treasure 048", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33603', '11260', "Treasure 049", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33604', '11260', "Treasure 050", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33605', '11260', "Treasure 051", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33606', '11260', "Treasure 052", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33607', '11260', "Treasure 053", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33608', '11260', "Treasure 054", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33609', '11260', "Treasure 055", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33610', '11260', "Treasure 056", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33611', '11260', "Treasure 057", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '33612', '11260', "Treasure 058", %multiusercriteria);

}

sub p70_shoot_first_loot_later ($%) {
	my ($count, %multiusercriteria) = @_;

	BNet::Utils::groupheader ("Shoot First, Loot Later");
	BNet::Utils::preprintachievement ($count, '37592', '12074', "Krokul Emergency Cache", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37593', '12074', "Legion Tower Chest", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37594', '12074', "Lost Krokul Chest", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37595', '12074', "Eredar Treasure Cache", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37596', '12074', "Chest of Ill-Gotten Gains", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37597', '12074', "Student's Surprising Surplus", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37598', '12074', "Void-Tinged Chest", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37599', '12074', "Augari Secret Stash", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37600', '12074', "Desperate Eredar's Cache", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37601', '12074', "Shattered House Chest", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37602', '12074', "Doomseeker's Treasure", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37695', '12074', "Forgotten Legion Supplies", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37696', '12074', "Ancient Legion War Cache", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37697', '12074', "Fel-Bound Chest", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37698', '12074', "Legion Treasure Hoard", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37699', '12074', "Timeworn Fel Chest", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37955', '12074', "Augari-Runed Chest", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37956', '12074', "Secret Augari Chest", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37957', '12074', "Augari Goods", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37958', '12074', "Long-Lost Augari Treasure", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37959', '12074', "Precious Augari Keepsakes", %multiusercriteria);
	BNet::Utils::preprintachievement ($count, '37960', '12074', "Missing Augari Chest", %multiusercriteria);


}

1;
