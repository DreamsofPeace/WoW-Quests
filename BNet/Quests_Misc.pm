package BNet::Quests_Misc;

use strict;
use warnings;


sub dungeons ($%) {
	my ($count, %multiuserquests) = @_;
	BNet::Utils::groupheader ("Ragefire Chasm");
	BNet::Utils::preprint ($count, '30969', "A New Enemy <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30983', "The Dark <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_shaman.jpg\"> <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30984', "No Orc Left Behind <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30995', "No Man Left Behind <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30996', "The Dark <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_shaman.jpg\"> <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30998', "A New Enemy <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31034', "Enemies Below <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31036', "Enemies Below <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31037', "Enemies Below <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::groupheader ("The Deadmines");
	BNet::Utils::preprint ($count, '27756', "The Foreman <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27758', "The Carpenter <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27781', "The Machination <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27785', "The Admiral <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27790', "The Defias Kingpin <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27842', "Only the Beginning <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27844', "Traitors!!! <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27847', "Not Quite There <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27848', "Good Intentions...Poor Execution <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27850', "The Defias Kingpin <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::groupheader ("Wailing Caverns");
	BNet::Utils::preprint ($count, '26870', "Cleansing the Caverns", %multiuserquests);
	BNet::Utils::preprint ($count, '26872', "Deviate Hides", %multiuserquests);
	BNet::Utils::preprint ($count, '26873', "Preemptive Methods", %multiuserquests);
	BNet::Utils::preprint ($count, '26878', "Disciples of Naralex <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::groupheader ("Shadowfang Keep");
	BNet::Utils::preprint ($count, '27917', "Sniffing Them Out <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27920', "Armored to the Teeth <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27921', "Fighting Tooth and Claw <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27968', "Fury of the Pack <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27974', "This Land is Our Land <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27988', "Plague...Plague Everywhere! <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27996', "Orders Are For the Living <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27998', "Sweet, Merciless Revenge <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::groupheader ("The Stockade");
	BNet::Utils::preprint ($count, '27733', "The Good Ol' Switcheroo <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27737', "By Fire Be Saved! <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27739', "The Gnoll King <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::groupheader ("Blackfathom Deeps");
	BNet::Utils::preprint ($count, '26897', "Blackfathom Deeps <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '34672', "The Rise of Aku'mai <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '34673', "The Rise of Aku'mai <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::groupheader ("Gnomeregan");
	BNet::Utils::preprint ($count, '2945', "Grime-Encrusted Ring", %multiuserquests);
	BNet::Utils::preprint ($count, '2947', "Return of the Ring <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '2949', "Return of the Ring <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '26939', "The G-Team <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '26941', "The G-Team <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '26942', "The G-Team <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '26943', "Home Sweet Gnome <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '26944', "Exploring Gnomeregan <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::groupheader ("26: Scarlet Halls");
	BNet::Utils::preprint ($count, '31490', "Rank and File", %multiuserquests);
	BNet::Utils::preprint ($count, '31493', "Just for Safekeeping, Of Course", %multiuserquests);
	BNet::Utils::groupheader ("90: Scarlet Halls");
	BNet::Utils::preprint ($count, '31495', "Rank and File", %multiuserquests);
	BNet::Utils::preprint ($count, '31497', "Just for Safekeeping, Of Course", %multiuserquests);
	BNet::Utils::groupheader ("26: Scarlet Monastery");
	BNet::Utils::preprint ($count, '31513', "Blades of the Anointed", %multiuserquests);
	BNet::Utils::preprint ($count, '31514', "Unto Dust Thou Shalt Return", %multiuserquests);
	BNet::Utils::groupheader ("90: Scarlet Monastery");
	BNet::Utils::preprint ($count, '31515', "Blades of the Anointed", %multiuserquests);
	BNet::Utils::preprint ($count, '31516', "Unto Dust Thou Shalt Return", %multiuserquests);
	BNet::Utils::groupheader ("Razorfen Kraul");
	BNet::Utils::preprint ($count, '26901', "Going, Going, Guano!", %multiuserquests);
	BNet::Utils::preprint ($count, '26905', "Agamaggan's Charge", %multiuserquests);
	BNet::Utils::preprint ($count, '26906', "Agamaggan", %multiuserquests);
	BNet::Utils::preprint ($count, '26907', "Take Them Down!", %multiuserquests);
	BNet::Utils::preprint ($count, '26908', "Feeling Thorny", %multiuserquests);
	BNet::Utils::groupheader ("Maraudon");
	BNet::Utils::preprint ($count, '27697', "Corruption in Maraudon", %multiuserquests);
	BNet::Utils::preprint ($count, '27698', "Servants of Theradras", %multiuserquests);
	BNet::Utils::preprint ($count, '27692', "Princess Theradras", %multiuserquests);
	BNet::Utils::groupheader ("Uldaman");
	BNet::Utils::preprint ($count, '2278', "The Platinum Discs", %multiuserquests);
	BNet::Utils::preprint ($count, '2280', "The Platinum Discs", %multiuserquests);
	BNet::Utils::preprint ($count, '27672', "The Chamber of Khaz'mul <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27673', "It's What's Inside That Counts <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27676', "Behind Closed Doors <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27677', "Archaedas, The Ancient Stone Watcher <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27679', "The Chamber of Khaz'mul <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27680', "Archaedas, The Ancient Stone Watcher <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27681', "Behind Closed Doors <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27682', "We Require More Minerals <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::groupheader ("Dire Maul");
	BNet::Utils::preprint ($count, '27103', "Shards of the Felvine", %multiuserquests);
	BNet::Utils::preprint ($count, '27104', "Alzzin the Wildshaper", %multiuserquests);
	BNet::Utils::preprint ($count, '27105', "An Unwelcome Guest", %multiuserquests);
	BNet::Utils::preprint ($count, '27107', "Pusillin The Thief", %multiuserquests);
	BNet::Utils::preprint ($count, '27108', "Lethtendris's Web", %multiuserquests);
	BNet::Utils::preprint ($count, '27109', "The Warped Defender", %multiuserquests);
	BNet::Utils::preprint ($count, '27110', "The Madness Within", %multiuserquests);
	BNet::Utils::preprint ($count, '27111', "The Treasure of the Shen'dralar", %multiuserquests);
	BNet::Utils::preprint ($count, '27112', "The Cursed Remains", %multiuserquests);
	BNet::Utils::preprint ($count, '27113', "The Shen'dralar Ancient", %multiuserquests);
	BNet::Utils::preprint ($count, '27114', "The Gordok Taste Test", %multiuserquests);
	BNet::Utils::preprint ($count, '27118', "A Broken Trap", %multiuserquests);
	BNet::Utils::preprint ($count, '27119', "The Gordok Ogre Suit", %multiuserquests);
	BNet::Utils::preprint ($count, '27120', "The Gordok Ogre Suit", %multiuserquests);
	BNet::Utils::preprint ($count, '27124', "Unfinished Gordok Business", %multiuserquests);
	BNet::Utils::preprint ($count, '27125', "King of the Gordok <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27128', "King of the Gordok <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27129', "Saving Warpwood <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27130', "Saving Warpwood <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27131', "The Highborne <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27132', "The Highborne <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27133', "Eyes in the Sky <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27134', "Ogre in the Field <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::groupheader ("40: Scholomance");
	BNet::Utils::preprint ($count, '28756', "Aberrations of Bone", %multiuserquests);
	BNet::Utils::preprint ($count, '31440', "The Four Tomes", %multiuserquests);
	BNet::Utils::preprint ($count, '31447', "An End to the Suffering", %multiuserquests);
	BNet::Utils::groupheader ("40: Scholomance");
	BNet::Utils::preprint ($count, '31442', "The Four Tomes", %multiuserquests);
	BNet::Utils::preprint ($count, '31448', "An End to the Suffering", %multiuserquests);
	BNet::Utils::groupheader ("Razorfen Downs");
	BNet::Utils::preprint ($count, '27063', "Looming Threat <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27062', "Looming Threat <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '33513', "Blackthorn's Lieutenants", %multiuserquests);
	BNet::Utils::preprint ($count, '33514', "The Ritual", %multiuserquests);
	BNet::Utils::groupheader ("Stratholme");
	BNet::Utils::preprint ($count, '27185', "Cutting the Competition", %multiuserquests);
	BNet::Utils::preprint ($count, '27192', "The Great Fras Siabi", %multiuserquests);
	BNet::Utils::preprint ($count, '27208', "The Dreadlord Balnazzar", %multiuserquests);
	BNet::Utils::preprint ($count, '27223', "Retribution", %multiuserquests);
	BNet::Utils::preprint ($count, '27227', "Lord Aurius Rivendare", %multiuserquests);
	BNet::Utils::preprint ($count, '27228', "Man Against Abomination", %multiuserquests);
	BNet::Utils::preprint ($count, '27230', "Weapons for War", %multiuserquests);
	BNet::Utils::preprint ($count, '27305', "Of Love and Family", %multiuserquests);
	BNet::Utils::preprint ($count, '27352', "Liquid Gold", %multiuserquests);
	BNet::Utils::preprint ($count, '27359', "Argent Reinforcements", %multiuserquests);
	BNet::Utils::preprint ($count, '27422', "A City Under Siege", %multiuserquests);
	BNet::Utils::preprint ($count, '28755', "Annals of the Silver Hand", %multiuserquests);
	BNet::Utils::groupheader ("Zul'Farrak");
	BNet::Utils::preprint ($count, '25556', "Into Zul'Farrak", %multiuserquests);
	BNet::Utils::preprint ($count, '27068', "Chief Ukorz Sandscalp", %multiuserquests);
	BNet::Utils::preprint ($count, '27070', "A Fool's Errand", %multiuserquests);
	BNet::Utils::preprint ($count, '27071', "Wrath of the Sandfury", %multiuserquests);
	BNet::Utils::preprint ($count, '27076', "Breaking and Entering", %multiuserquests);
	BNet::Utils::groupheader ("Blackrock Depths");
	BNet::Utils::preprint ($count, '28068', "Adventurers Wanted: Blackrock Depths <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28069', "Adventurers Wanted: Blackrock Depths <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '4083', "The Spectral Chalice", %multiuserquests);
	BNet::Utils::preprint ($count, '7604', "A Binding Contract", %multiuserquests);
	BNet::Utils::preprint ($count, '27565', "Into the Prison <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27567', "Twilight?! No! <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27568', "Infiltrating Shadowforge City <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27569', "Dark Iron Tacticians <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27571', "The Grim Guzzler <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27573', "The Dark Iron Pact <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27578', "Morgan's Fruition <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27579', "Into the Prison <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27581', "Twilight?! No! <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27582', "Infiltrating Shadowforge City <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27585', "The 109th Division <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27589', "The Grim Guzzler <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27591', "The Dark Iron Pact <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27593', "Rebirth of the K.E.F. <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27596', "The Heart of the Mountain", %multiuserquests);
	BNet::Utils::preprint ($count, '27603', "The Sealed Gate", %multiuserquests);
	BNet::Utils::groupheader ("Blackrock Depths: Class Specific");
	BNet::Utils::preprint ($count, '28343', "The Breath of Cenarius <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_druid.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28394', "The Golem Lord's Creations <img src=\"http://wow.zamimg.com/images/icons/alliance.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_hunter.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28461', "The Golem Lord's Creations <img src=\"http://wow.zamimg.com/images/icons/horde.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_hunter.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28398', "The Pyromancer's Grimoire <img src=\"http://wow.zamimg.com/images/icons/alliance.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_mage.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28458', "The Pyromancer's Grimoire <img src=\"http://wow.zamimg.com/images/icons/horde.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_mage.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28405', "Weapons of Darkness <img src=\"http://wow.zamimg.com/images/icons/alliance.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_paladin.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28466', "Weapons of Darkness <img src=\"http://wow.zamimg.com/images/icons/horde.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_paladin.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28473', "Weapons of Darkness <img src=\"http://wow.zamimg.com/images/icons/horde.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_paladin.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28328', "Twilight Scheming <img src=\"http://wow.zamimg.com/images/icons/alliance.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_priest.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28474', "Twilight Scheming <img src=\"http://wow.zamimg.com/images/icons/horde.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_priest.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28475', "Twilight Scheming <img src=\"http://wow.zamimg.com/images/icons/horde.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_priest.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28476', "Twilight Scheming <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28477', "Twilight Scheming <img src=\"http://wow.zamimg.com/images/icons/horde.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_priest.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28478', "Twilight Scheming <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28406', "The Dark Iron Army <img src=\"http://wow.zamimg.com/images/icons/alliance.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_rogue.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28463', "The Dark Iron Army <img src=\"http://wow.zamimg.com/images/icons/horde.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_rogue.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28401', "Slaves of the Firelord <img src=\"http://wow.zamimg.com/images/icons/alliance.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_shaman.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28465', "Slaves of the Firelord <img src=\"http://wow.zamimg.com/images/icons/horde.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_shaman.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28399', "Stones of Binding <img src=\"http://wow.zamimg.com/images/icons/alliance.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_warlock.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28459', "Stones of Binding <img src=\"http://wow.zamimg.com/images/icons/horde.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_warlock.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28393', "A Dangerous Alliance <img src=\"http://wow.zamimg.com/images/icons/alliance.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_warrior.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28457', "A Dangerous Alliance <img src=\"http://wow.zamimg.com/images/icons/horde.png\"> <img src=\"http://wow.zamimg.com/images/wow/icons/small/class_warrior.jpg\">", %multiuserquests);
	BNet::Utils::groupheader ("Sunken Temple");
	BNet::Utils::preprint ($count, '27604', "Jammal'an the Prophet", %multiuserquests);
	BNet::Utils::preprint ($count, '27605', "Eranikus", %multiuserquests);
	BNet::Utils::preprint ($count, '27633', "The Blood God Hakkar", %multiuserquests);
	BNet::Utils::preprint ($count, '27915', "The Heart of the Temple", %multiuserquests);
	BNet::Utils::groupheader ("Blackrock Spire");
	BNet::Utils::preprint ($count, '27440', "Trolls, Ogres, and Orcs, Oh My!", %multiuserquests);
	BNet::Utils::preprint ($count, '27469', "Friends on The Other Side", %multiuserquests);
	BNet::Utils::preprint ($count, '27470', "A Potential Ally", %multiuserquests);
	BNet::Utils::preprint ($count, '27471', "Blackrock Anomaly <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::groupheader ("Hellfire Ramparts");
	BNet::Utils::preprint ($count, '29528', "War on the Ramparts <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29527', "War on the Ramparts <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29529', "Demons in the Citadel <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29530', "Demons in the Citadel <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29543', "Invading the Citadel <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29542', "Invading the Citadel <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29594', "Hitting Them Where It Hurts <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29593', "Hitting Them Where It Hurts <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::groupheader ("The Blood Furnace");
	BNet::Utils::preprint ($count, '29535', "Make Them Bleed <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29538', "Make Them Bleed <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29536', "Heart of Rage <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29539', "Heart of Rage <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29537', "Mind the Gap <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29540', "The Breaker <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::groupheader ("The Slave Pens");
	BNet::Utils::preprint ($count, '29563', "Lost in Action", %multiuserquests);
	BNet::Utils::preprint ($count, '29564', "A Brother Betrayed", %multiuserquests);
	BNet::Utils::preprint ($count, '29565', "The Heart of the Matter", %multiuserquests);
	BNet::Utils::preprint ($count, '29566', "Checking Up", %multiuserquests);
	BNet::Utils::groupheader ("The Underbog");
	BNet::Utils::preprint ($count, '29567', "Stalk the Stalker", %multiuserquests);
	BNet::Utils::preprint ($count, '29568', "A Necessary Evil", %multiuserquests);
	BNet::Utils::preprint ($count, '29570', "Rescuing the Expedition", %multiuserquests);
	BNet::Utils::preprint ($count, '29571', "Defending the Wilds", %multiuserquests);
	BNet::Utils::preprint ($count, '29691', "Bring Me A Shrubbery!", %multiuserquests);
	BNet::Utils::preprint ($count, '29692', "Bring Me Another Shrubbery!", %multiuserquests);
	BNet::Utils::groupheader ("Mana-Tombs");
	BNet::Utils::preprint ($count, '10977', "Stasis Chambers of the Mana-Tombs", %multiuserquests);
	BNet::Utils::preprint ($count, '10981', "Nexus-Prince Shaffar's Personal Chamber", %multiuserquests);
	BNet::Utils::preprint ($count, '29573', "Safety is Job One", %multiuserquests);
	BNet::Utils::preprint ($count, '29574', "Intriguing Specimens", %multiuserquests);
	BNet::Utils::preprint ($count, '29575', "Undercutting the Competition", %multiuserquests);
	BNet::Utils::preprint ($count, '29583', "Eckert the Mad <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29582', "Grek's Crazy Night <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::groupheader ("Auchenai Crypts");
	BNet::Utils::preprint ($count, '10167', "Auchindoun... <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '10253', "Levixus the Soul Caller", %multiuserquests);
	BNet::Utils::preprint ($count, '29590', "The Dead Watcher", %multiuserquests);
	BNet::Utils::preprint ($count, '29591', "Raging Spirits", %multiuserquests);
	BNet::Utils::groupheader ("Sethekk Halls");
	BNet::Utils::preprint ($count, '10180', "Can't Stay Away", %multiuserquests);
	BNet::Utils::preprint ($count, '29605', "Brother Against Brother", %multiuserquests);
	BNet::Utils::preprint ($count, '29606', "Terokk's Legacy", %multiuserquests);
	BNet::Utils::preprint ($count, '29607', "Eyes of Desire", %multiuserquests);
	BNet::Utils::groupheader ("The Steamvault");
	BNet::Utils::preprint ($count, '29613', "A Proper Fate", %multiuserquests);
	BNet::Utils::preprint ($count, '29614', "Containment is Key", %multiuserquests);
	BNet::Utils::preprint ($count, '29615', "Windcaller Claw and the Water Thief", %multiuserquests);
	BNet::Utils::preprint ($count, '29616', "Storming the Steamvault", %multiuserquests);
	BNet::Utils::groupheader ("The Shattered Halls");
	BNet::Utils::preprint ($count, '29649', "How to Save a Life <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29654', "Turning the Tide <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29656', "O'mrogg's Warcloth <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29652', "One Last Favor <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29689', "Advancing the Campaign <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29688', "Advancing the Campaign <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29650', "Fel Ember <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29651', "Honor the Dying <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29653', "The Will of the Warchief <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29655', "A Very Special Cloth <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::groupheader ("Shadow Labyrinth");
	BNet::Utils::preprint ($count, '29640', "Find Spy To'gun", %multiuserquests);
	BNet::Utils::preprint ($count, '29641', "The Soul Devices", %multiuserquests);
	BNet::Utils::preprint ($count, '29642', "Trouble at Auchindoun", %multiuserquests);
	BNet::Utils::preprint ($count, '29643', "The Codex of Blood", %multiuserquests);
	BNet::Utils::preprint ($count, '29644', "Into the Heart of the Labyrinth", %multiuserquests);
	BNet::Utils::preprint ($count, '29645', "Ambassador Hellmaw", %multiuserquests);
	BNet::Utils::groupheader ("Caverns of Time");
	BNet::Utils::preprint ($count, '10277', "The Caverns of Time", %multiuserquests);
	BNet::Utils::preprint ($count, '10279', "To The Master's Lair", %multiuserquests);
	BNet::Utils::preprint ($count, '12513', "Nice Hat...", %multiuserquests);
	BNet::Utils::preprint ($count, '29134', "A Wrinkle in Time", %multiuserquests);
	BNet::Utils::preprint ($count, '29193', "On a Wing and a Prayer", %multiuserquests);
	BNet::Utils::preprint ($count, '29598', "Taretha's Diversion", %multiuserquests);
	BNet::Utils::preprint ($count, '29599', "Escape from Durnholde", %multiuserquests);
	BNet::Utils::preprint ($count, '10282', "Old Hillsbrad", %multiuserquests);
	BNet::Utils::groupheader ("The Mechanar");
	BNet::Utils::preprint ($count, '29657', "With Great Power, Comes Great Responsibility", %multiuserquests);
	BNet::Utils::preprint ($count, '29658', "The Calculator", %multiuserquests);
	BNet::Utils::preprint ($count, '29659', "Lost Treasure", %multiuserquests);
	BNet::Utils::groupheader ("The Botanica");
	BNet::Utils::preprint ($count, '29660', "Saving the Botanica <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29667', "Culling the Herd <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29669', "A Most Somber Task", %multiuserquests);
	BNet::Utils::groupheader ("The Arcatraz");
	BNet::Utils::preprint ($count, '10704', "How to Break Into the Arcatraz", %multiuserquests);
	BNet::Utils::preprint ($count, '10705', "Seer Udalo", %multiuserquests);
	BNet::Utils::preprint ($count, '29674', "Unbound Darkness", %multiuserquests);
	BNet::Utils::preprint ($count, '29675', "Hey There Dalliah", %multiuserquests);
	BNet::Utils::preprint ($count, '29681', "Maximum Security Breakout", %multiuserquests);
	BNet::Utils::groupheader ("The Black Morass");
	BNet::Utils::preprint ($count, '10296', "The Black Morass", %multiuserquests);
	BNet::Utils::preprint ($count, '10297', "The Opening of the Dark Portal", %multiuserquests);
	BNet::Utils::groupheader ("Magisters' Terrace");
	BNet::Utils::preprint ($count, '11490', "The Scryer's Scryer", %multiuserquests);
	BNet::Utils::preprint ($count, '29682', "Magisters' Terrace", %multiuserquests);
	BNet::Utils::preprint ($count, '29684', "Severed Communications", %multiuserquests);
	BNet::Utils::preprint ($count, '29685', "Hard to Kill", %multiuserquests);
	BNet::Utils::preprint ($count, '29686', "A Radical Notion", %multiuserquests);
	BNet::Utils::preprint ($count, '29687', "Twisted Associations", %multiuserquests);
	BNet::Utils::groupheader ("Utgarde Keep");
	BNet::Utils::preprint ($count, '29763', "Stealing Their Thunder <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29803', "Ears of the Lich King <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29764', "Disarmament <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '13206', "Disarmament <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '11262', "Ingvar Must Die! <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);

	BNet::Utils::preprint ($count, '11272', "A Score to Settle <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30112', "A Score to Settle <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::groupheader ("The Nexus");
	BNet::Utils::preprint ($count, '11905', "Postponing the Inevitable", %multiuserquests);
	BNet::Utils::preprint ($count, '11911', "Quickening", %multiuserquests);
	BNet::Utils::preprint ($count, '11973', "Prisoner of War", %multiuserquests);
	BNet::Utils::preprint ($count, '13094', "Have They No Shame? <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '13095', "Have They No Shame? <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29225', "Actionable Intelligence", %multiuserquests);
	BNet::Utils::preprint ($count, '29820', "Into the Nexus", %multiuserquests);
	BNet::Utils::groupheader ("Azjol-Nerub");
	BNet::Utils::preprint ($count, '29807', "Death to the Traitor King", %multiuserquests);
	BNet::Utils::preprint ($count, '29808', "Don't Forget the Eggs!", %multiuserquests);
	BNet::Utils::preprint ($count, '29811', "The Gatewatcher's Talisman", %multiuserquests);
	BNet::Utils::groupheader ("Ahn'kahet: The Old Kingdom");
	BNet::Utils::preprint ($count, '13187', "The Faceless Ones", %multiuserquests);
	BNet::Utils::preprint ($count, '29825', "Pupil No More", %multiuserquests);
	BNet::Utils::preprint ($count, '29826', "Reclaiming Ahn'Kahet", %multiuserquests);
	BNet::Utils::groupheader ("Drak'Tharon Keep");
	BNet::Utils::preprint ($count, '12037', "Search and Rescue", %multiuserquests);
	BNet::Utils::preprint ($count, '12238', "Cleansing Drak'Tharon", %multiuserquests);
	BNet::Utils::preprint ($count, '13129', "Head Games", %multiuserquests);
	BNet::Utils::preprint ($count, '29828', "What the Scourge Dred", %multiuserquests);
	BNet::Utils::preprint ($count, '30120', "Cleansing Drak'Tharon", %multiuserquests);
	BNet::Utils::groupheader ("The Violet Hold");
	BNet::Utils::preprint ($count, '29829', "Discretion is Key", %multiuserquests);
	BNet::Utils::preprint ($count, '29830', "Containment", %multiuserquests);
	BNet::Utils::groupheader ("Gundrak");
	BNet::Utils::preprint ($count, '29833', "Unfinished Business", %multiuserquests);
	BNet::Utils::preprint ($count, '29834', "Gal'darah Must Pay", %multiuserquests);
	BNet::Utils::preprint ($count, '29835', "Gal'darah Must Pay", %multiuserquests);
	BNet::Utils::preprint ($count, '29836', "Just Checkin'", %multiuserquests);
	BNet::Utils::preprint ($count, '29838', "One of a Kind", %multiuserquests);
	BNet::Utils::preprint ($count, '29839', "One of a Kind", %multiuserquests);
	BNet::Utils::preprint ($count, '29840', "For Posterity", %multiuserquests);
	BNet::Utils::preprint ($count, '29844', "For Posterity", %multiuserquests);
	BNet::Utils::groupheader ("Halls of Stone");
	BNet::Utils::preprint ($count, '13207', "Halls of Stone", %multiuserquests);
	BNet::Utils::preprint ($count, '29848', "The Forlorn Watcher", %multiuserquests);
	BNet::Utils::preprint ($count, '29850', "Corrupt Constructs", %multiuserquests);
	BNet::Utils::groupheader ("The Oculus");
	BNet::Utils::preprint ($count, '13124', "The Struggle Persists", %multiuserquests);
	BNet::Utils::preprint ($count, '13126', "A Unified Front", %multiuserquests);
	BNet::Utils::preprint ($count, '13127', "Mage-Lord Urom", %multiuserquests);
	BNet::Utils::preprint ($count, '13128', "A Wing and a Prayer", %multiuserquests);
	BNet::Utils::groupheader ("Halls of Lightning");
	BNet::Utils::preprint ($count, '29860', "Diametrically Opposed", %multiuserquests);
	BNet::Utils::preprint ($count, '29861', "Whatever it Takes!", %multiuserquests);
	BNet::Utils::preprint ($count, '29862', "Clearing the Way", %multiuserquests);
	BNet::Utils::preprint ($count, '29863', "Stormherald Eljrrin", %multiuserquests);
	BNet::Utils::groupheader ("Utgarde Pinnacle");
	BNet::Utils::preprint ($count, '13131', "Junk in My Trunk", %multiuserquests);
	BNet::Utils::preprint ($count, '13132', "Vengeance Be Mine!", %multiuserquests);
	BNet::Utils::preprint ($count, '29864', "Working at the Source", %multiuserquests);
	BNet::Utils::groupheader ("The Culling of Stratholme");
	BNet::Utils::preprint ($count, '13149', "Dispelling Illusions", %multiuserquests);
	BNet::Utils::preprint ($count, '13151', "A Royal Escort", %multiuserquests);
	BNet::Utils::groupheader ("Trial of the Champion");
	BNet::Utils::preprint ($count, '29851', "Champion of the Tournament", %multiuserquests);
	BNet::Utils::groupheader ("The Forge of Souls");
	BNet::Utils::preprint ($count, '24499', "Echoes of Tortured Souls <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '24506', "Inside the Frozen Citadel <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '24510', "Inside the Frozen Citadel <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '24511', "Echoes of Tortured Souls <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::groupheader ("Pit of Saron");
	BNet::Utils::preprint ($count, '24683', "The Pit of Saron <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '24682', "The Pit of Saron <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '24498', "The Path to the Citadel <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '24507', "The Path to the Citadel <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '24710', "Deliverance from the Pit <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '24712', "Deliverance from the Pit <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '24461', "Reforging The Sword <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '24559', "Reforging The Sword <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::groupheader ("Halls of Reflection");
	BNet::Utils::preprint ($count, '24480', "The Halls Of Reflection <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '24561', "The Halls Of Reflection <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '24711', "Frostmourne <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '24713', "Frostmourne <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '24500', "Wrath of the Lich King <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '24802', "Wrath of the Lich King <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::groupheader ("Throne of the Tides");
	BNet::Utils::preprint ($count, '28834', "Rescue the Earthspeaker! <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28833', "Rescue the Earthspeaker! <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28836', "Sins of the Sea Witch <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28843', "Sins of the Sea Witch <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::groupheader ("Blackrock Caverns");
	BNet::Utils::preprint ($count, '28732', "This Can Only Mean One Thing...", %multiuserquests);
	BNet::Utils::preprint ($count, '28735', "To the Chamber of Incineration!", %multiuserquests);
	BNet::Utils::preprint ($count, '28737', "What Is This Place?", %multiuserquests);
	BNet::Utils::preprint ($count, '28738', "The Twilight Forge", %multiuserquests);
	BNet::Utils::preprint ($count, '28740', "Do My Eyes Deceive Me?", %multiuserquests);
	BNet::Utils::preprint ($count, '28741', "Ascendant Lord Obsidius", %multiuserquests);
	BNet::Utils::groupheader ("The Stonecore");
	BNet::Utils::preprint ($count, '28814', "Followers and Leaders", %multiuserquests);
	BNet::Utils::preprint ($count, '28815', "Twilight Documents", %multiuserquests);
	BNet::Utils::preprint ($count, '28824', "Wayward Child", %multiuserquests);
	BNet::Utils::preprint ($count, '28866', "Into the Stonecore", %multiuserquests);
	BNet::Utils::groupheader ("The Vortex Pinnacle");
	BNet::Utils::preprint ($count, '28760', "Vengeance for Orsis", %multiuserquests);
	BNet::Utils::preprint ($count, '28779', "A Long Way from Home", %multiuserquests);
	BNet::Utils::preprint ($count, '28845', "The Vortex Pinnacle", %multiuserquests);
	BNet::Utils::groupheader ("Lost City of the Tol'vir");
	BNet::Utils::preprint ($count, '28781', "Targets of Opportunity", %multiuserquests);
	BNet::Utils::preprint ($count, '28783', "The Source of Their Power", %multiuserquests);
	BNet::Utils::preprint ($count, '28870', "Return to the Lost City", %multiuserquests);
	BNet::Utils::groupheader ("Grim Batol");
	BNet::Utils::preprint ($count, '28852', "Soften them Up", %multiuserquests);
	BNet::Utils::preprint ($count, '28853', "Kill the Courier", %multiuserquests);
	BNet::Utils::preprint ($count, '28854', "Closing a Dark Chapter", %multiuserquests);
	BNet::Utils::groupheader ("Halls of Origination");
	BNet::Utils::preprint ($count, '28654', "The Heart of the Matter", %multiuserquests);
	BNet::Utils::preprint ($count, '28746', "Penetrating Their Defenses", %multiuserquests);
	BNet::Utils::preprint ($count, '28753', "Doing it the Hard Way", %multiuserquests);
	BNet::Utils::groupheader ("End Time");
	BNet::Utils::preprint ($count, '30095', "The End Time <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30094', "The End Time <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30096', "Murozond", %multiuserquests);
	BNet::Utils::preprint ($count, '30097', "Archival Purposes", %multiuserquests);
	BNet::Utils::groupheader ("Well of Eternity");
	BNet::Utils::preprint ($count, '30098', "The Well of Eternity", %multiuserquests);
	BNet::Utils::preprint ($count, '30099', "In Unending Numbers", %multiuserquests);
	BNet::Utils::preprint ($count, '30100', "The Vainglorious", %multiuserquests);
	BNet::Utils::preprint ($count, '30101', "The Path to the Dragon Soul", %multiuserquests);
	BNet::Utils::preprint ($count, '30104', "Documenting the Timeways", %multiuserquests);
	BNet::Utils::groupheader ("Hour of Twilight");
	BNet::Utils::preprint ($count, '30102', "The Hour of Twilight", %multiuserquests);
	BNet::Utils::preprint ($count, '30103', "To Wyrmrest!", %multiuserquests);
	BNet::Utils::preprint ($count, '30105', "The Twilight Prophet", %multiuserquests);
	BNet::Utils::groupheader ("Temple of the Jade Serpent");
	BNet::Utils::preprint ($count, '31355', "Restoring Jade's Purity", %multiuserquests);
	BNet::Utils::preprint ($count, '31356', "Deep Doubts, Deep Wisdom", %multiuserquests);
	BNet::Utils::groupheader ("Stormstout Brewery");
	BNet::Utils::preprint ($count, '30085', "Into the Brewery", %multiuserquests);
	BNet::Utils::preprint ($count, '31324', "Family Secrets", %multiuserquests);
	BNet::Utils::preprint ($count, '31327', "Trouble Brewing", %multiuserquests);
	BNet::Utils::groupheader ("Mogu'shan Palace");
	BNet::Utils::preprint ($count, '31357', "Relics of the Four Kings", %multiuserquests);
	BNet::Utils::preprint ($count, '31360', "A New Lesson for the Master", %multiuserquests);
	BNet::Utils::groupheader ("Shado-Pan Monastery");
	BNet::Utils::preprint ($count, '30757', "Lord of the Shado-Pan", %multiuserquests);
	BNet::Utils::preprint ($count, '31030', "Into the Monastery", %multiuserquests);
	BNet::Utils::preprint ($count, '31342', "The Path to Respect Lies in Violence", %multiuserquests);
	BNet::Utils::groupheader ("Gate of the Setting Sun");
	BNet::Utils::preprint ($count, '31363', "Lighting the Way", %multiuserquests);
	BNet::Utils::preprint ($count, '31364', "That's a Big Bug!", %multiuserquests);
	BNet::Utils::groupheader ("Siege of Niuzao Temple");
	BNet::Utils::preprint ($count, '31365', "Somewhere Inside", %multiuserquests);
	BNet::Utils::preprint ($count, '31366', "Take Down the Wing Leader", %multiuserquests);

}


sub class_quests ($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("Various Class Quests");
=pod
27225	A Summons from Ander Germaine	class=1	Warrior	icon-alliance
27265	Lord Grayson Shadowbreaker	class=2	Paladin	icon-alliance
27266	Wulf Calls	class=3	Hunter	icon-alliance
27267	Make Contact with SI:7	class=4	Rogue	icon-alliance
27268	Make Haste to the Cathedral	class=5	Priest	icon-alliance
27269	The Temple of the Moon	class=5	Priest
27270	An Audience with the Farseer	class=7	Shaman
27271	Journey to the Wizard's Sanctum	class=8	Mage	icon-alliance
27272	Demisette Sends Word	class=9	Warlock	icon-alliance
27273	An Invitation from Moonglade	class=11	Druid
27274	The Chief Surgeon	class=5	Priest
27277	An Audience with Ureda	class=8	Mage	icon-horde
27278	Grimshot's Call	class=3	Hunter	icon-horde
27279	The Shattered Hand	class=4	Rogue	icon-horde
27280	The Earthbreaker Calls	class=7	Shaman	icon-horde
27281	Grezz Ragefist	class=1	Warrior	icon-horde
27282	Kranosh's Behest	class=9	Warlock	icon-horde
27283	A Journey to Moonglade	class=11	Druid
27298	Seek Out Master Pyreanor	class=2	Paladin
27304	Follow the Sun	class=2	Paladin
27331	The Seer's Call	class=5	Priest	icon-horde
27332	Seek the Shadow-Walker	class=5	Priest
27334	Dark Cleric Cecille	class=5	Priest
27335	Journey to Orgrimmar	class=5	Priest
27337	A Fitting Weapon	class=1	Warrior	icon-alliance
27343	The Hand of the Light	class=2	Paladin
27344	A Well-Earned Reward	class=3	Hunter	icon-alliance
27351	A Royal Reward	class=4	Rogue	icon-alliance
27353	Blessings of the Elements	class=7	Shaman
27354	Mastering the Arcane	class=8	Mage	icon-alliance
27355	A Boon for the Powerful	class=9	Warlock	icon-alliance
27356	The Circle's Future	class=11	Druid
27361	Favored of the Light	class=5	Priest	icon-alliance
27362	Favored of Elune	class=5	Priest
27363	A Budding Young Surgeon	class=5	Priest
27365	A Fitting Weapon	class=1	Warrior	icon-horde
27395	A Marksman's Weapon	class=3	Hunter	icon-horde
27396	Blade of the Shattered Hand	class=4	Rogue	icon-horde
27397	Terga's Task	class=7	Shaman	icon-horde
27400	Mastering the Arcane	class=8	Mage	icon-horde
27402	Token of Power	class=9	Warlock	icon-horde
27403	A True Sunwalker	class=2	Paladin
27404	The Circle's Future	class=11	Druid
27434	The Adept's Path	class=2	Paladin
27435	A Seer's Staff	class=5	Priest
27436	The Shadow-Walker's Task	class=5	Priest
27437	The Dark Cleric's Bidding	class=5	Priest
27439	Staff of the Light	class=5	Priest
27441	A Seer's Staff	class=5	Priest
28164	Seek Brother Silverhallow	class=5	Priest	icon-horde
=cut
}

sub warlock_green_fire ($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("Warlock: Green Fire");
	BNet::Utils::preprint ($count, '32295', "An Unusual Tome", %multiuserquests);
	BNet::Utils::preprint ($count, '32307', "Reader for the Dead Tongue", %multiuserquests);
	BNet::Utils::preprint ($count, '32310', "A Tale of Six Masters <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '32309', "A Tale of Six Masters <img src=\"http://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '32317', "Seeking the Soulstones", %multiuserquests);
	BNet::Utils::preprint ($count, '32324', "Seek the Signal", %multiuserquests);
	BNet::Utils::preprint ($count, '32325', "Infiltrating the Black Temple", %multiuserquests);
	BNet::Utils::preprint ($count, '32340', "Plunder the Black Temple", %multiuserquests);
	BNet::Utils::preprint ($count, '32358', "The Soulcore", %multiuserquests);

}

1;
