package BNet::Quests_KD;

use strict;
use warnings;

sub sz_01_20_Durotar($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("01-20: Durotar <img src=\"https://wow.zamimg.com/images/icons/horde.png\">");

}

sub sz_01_20_Mulgore($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("01-20: Mulgore <img src=\"https://wow.zamimg.com/images/icons/horde.png\">");

}

sub sz_01_20_Teldrassil($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("01-20: Teldrassil <img src=\"https://wow.zamimg.com/images/icons/alliance.png\">");

}

sub sz_01_20_Azuremyst_Isle($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("01-20: Azuremyst Isle <img src=\"https://wow.zamimg.com/images/icons/alliance.png\">");

}

sub z_10_60_Azshara($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("header");
	BNet::Utils::preprint ($count, '28496', "Warchief's Command: Azshara!", %multiuserquests);
	BNet::Utils::preprint ($count, '25275', "Report to the Labor Captain", %multiuserquests);
	BNet::Utils::preprint ($count, '14129', "Runaway Shredder!", %multiuserquests);
	BNet::Utils::preprint ($count, '14134', "The Captain's Logs", %multiuserquests);
	BNet::Utils::preprint ($count, '14135', "Up a Tree", %multiuserquests);
	BNet::Utils::preprint ($count, '14146', "Defend the Gates!", %multiuserquests);
	BNet::Utils::preprint ($count, '14155', "Arborcide", %multiuserquests);
	BNet::Utils::preprint ($count, '14118', "Venison for the Troops", %multiuserquests);
	BNet::Utils::preprint ($count, '14117', "The Eyes of Ashenvale", %multiuserquests);
	BNet::Utils::preprint ($count, '14127', "Return of the Highborne?", %multiuserquests);
	BNet::Utils::groupheader ("10-20: Azshara: Orgrimmar Rocketway Exchange <img src=\"https://wow.zamimg.com/images/icons/horde.png\">");
	BNet::Utils::preprint ($count, '14162', "Report to Horzak", %multiuserquests);
	BNet::Utils::preprint ($count, '14128', "Return of the Highborne?", %multiuserquests);
	BNet::Utils::groupheader ("10-20: Azshara (Unsorted) <img src=\"https://wow.zamimg.com/images/icons/horde.png\">");
	BNet::Utils::preprint ($count, '14130', "Friends Come In All Colors", %multiuserquests);
	BNet::Utils::preprint ($count, '14131', "A Little Pick-me-up", %multiuserquests);
	BNet::Utils::preprint ($count, '14132', "That's Just Rude!", %multiuserquests);
	BNet::Utils::preprint ($count, '14161', "Basilisk Bashin'", %multiuserquests);
	BNet::Utils::preprint ($count, '14165', "Stone Cold", %multiuserquests);
	BNet::Utils::preprint ($count, '14190', "The Perfect Prism", %multiuserquests);
	BNet::Utils::preprint ($count, '14192', "Prismbreak", %multiuserquests);
	BNet::Utils::preprint ($count, '14194', "Refleshification", %multiuserquests);
	BNet::Utils::preprint ($count, '14197', "A Quota to Meet", %multiuserquests);
	BNet::Utils::preprint ($count, '14201', "A Thousand Stories in the Sand", %multiuserquests);
	BNet::Utils::preprint ($count, '14202', "Survey the Lakeshore", %multiuserquests);
	BNet::Utils::preprint ($count, '14209', "Gunk in the Trunk", %multiuserquests);
	BNet::Utils::preprint ($count, '14215', "Memories of the Dead", %multiuserquests);
	BNet::Utils::preprint ($count, '14216', "Mystery of the Sarcen Stone", %multiuserquests);
	BNet::Utils::preprint ($count, '14226', "Trouble Under Foot", %multiuserquests);
	BNet::Utils::preprint ($count, '14230', "Manual Labor", %multiuserquests);
	BNet::Utils::preprint ($count, '14249', "Shear Will", %multiuserquests);
	BNet::Utils::preprint ($count, '14250', "Renewable Resource", %multiuserquests);
	BNet::Utils::preprint ($count, '14258', "Mortar the Point", %multiuserquests);
	BNet::Utils::preprint ($count, '14261', "Ice Cold", %multiuserquests);
	BNet::Utils::preprint ($count, '14262', "To Gut a Fish", %multiuserquests);
	BNet::Utils::preprint ($count, '14263', "Waste of Thyme", %multiuserquests);
	BNet::Utils::preprint ($count, '14267', "Investigating the Sea Shrine", %multiuserquests);
	BNet::Utils::preprint ($count, '14270', "The Keystone Shard", %multiuserquests);
	BNet::Utils::preprint ($count, '14271', "Report to Twocrush", %multiuserquests);
	BNet::Utils::preprint ($count, '14295', "Sisters of the Sea", %multiuserquests);
	BNet::Utils::preprint ($count, '14296', "Watch Your Step", %multiuserquests);
	BNet::Utils::preprint ($count, '14297', "Pro-liberation", %multiuserquests);
	BNet::Utils::preprint ($count, '14299', "Xylem's Asylum", %multiuserquests);
	BNet::Utils::preprint ($count, '14300', "The Trial of Fire", %multiuserquests);
	BNet::Utils::preprint ($count, '14308', "When Science Attacks", %multiuserquests);
	BNet::Utils::preprint ($count, '14310', "Segmentation Fault: Core Dumped", %multiuserquests);
	BNet::Utils::preprint ($count, '14322', "Bad Science! Bad!", %multiuserquests);
	BNet::Utils::preprint ($count, '14323', "Absorbent", %multiuserquests);
	BNet::Utils::preprint ($count, '14324', "Full of Hot Water", %multiuserquests);
	BNet::Utils::preprint ($count, '14340', "Dressed to Impress", %multiuserquests);
	BNet::Utils::preprint ($count, '14345', "Wash Out", %multiuserquests);
	BNet::Utils::preprint ($count, '14370', "Mysterious Azsharite", %multiuserquests);
	BNet::Utils::preprint ($count, '14371', "A Gigantic Snack", %multiuserquests);
	BNet::Utils::preprint ($count, '14377', "Befriending Giants", %multiuserquests);
	BNet::Utils::preprint ($count, '14383', "The Terrible Tinkers of the Ruined Reaches", %multiuserquests);
	BNet::Utils::preprint ($count, '14385', "Azsharite Experiment Number One", %multiuserquests);
	BNet::Utils::preprint ($count, '14388', "Azsharite Experiment Number Two", %multiuserquests);
	BNet::Utils::preprint ($count, '14389', "Wasn't It Obvious?", %multiuserquests);
	BNet::Utils::preprint ($count, '14390', "Easy is Boring", %multiuserquests);
	BNet::Utils::preprint ($count, '14391', "Turning the Tables", %multiuserquests);
	BNet::Utils::preprint ($count, '14392', "Farewell, Minnow", %multiuserquests);
	BNet::Utils::preprint ($count, '14407', "Azshara Blues", %multiuserquests);
	BNet::Utils::preprint ($count, '14408', "Nine's Plan", %multiuserquests);
	BNet::Utils::preprint ($count, '14413', "The Pinnacle of Learning", %multiuserquests);
	BNet::Utils::preprint ($count, '14422', "Raptor Raptor Rocket", %multiuserquests);
	BNet::Utils::preprint ($count, '14423', "Dozercism", %multiuserquests);
	BNet::Utils::preprint ($count, '14424', "Need More Science", %multiuserquests);
	BNet::Utils::preprint ($count, '14428', "Amberwind's Journal", %multiuserquests);
	BNet::Utils::preprint ($count, '14429', "Arcane De-Construction", %multiuserquests);
	BNet::Utils::preprint ($count, '14430', "Hacking the Construct", %multiuserquests);
	BNet::Utils::preprint ($count, '14431', "The Blackmaw Scar", %multiuserquests);
	BNet::Utils::preprint ($count, '14432', "A Pale Brew", %multiuserquests);
	BNet::Utils::preprint ($count, '14433', "Diplomacy by Another Means", %multiuserquests);
	BNet::Utils::preprint ($count, '14435', "The Blackmaw Doublecross", %multiuserquests);
	BNet::Utils::preprint ($count, '14442', "My Favorite Subject", %multiuserquests);
	BNet::Utils::preprint ($count, '14462', "Where's My Head?", %multiuserquests);
	BNet::Utils::preprint ($count, '14464', "Lightning Strike Assassination", %multiuserquests);
	BNet::Utils::preprint ($count, '14468', "Another Warm Body", %multiuserquests);
	BNet::Utils::preprint ($count, '14469', "Hand-me-downs", %multiuserquests);
	BNet::Utils::preprint ($count, '14470', "Military Breakthrough", %multiuserquests);
	BNet::Utils::preprint ($count, '14471', "First Degree Mortar", %multiuserquests);
	BNet::Utils::preprint ($count, '14472', "In The Face!", %multiuserquests);
	BNet::Utils::preprint ($count, '14475', "Grounded!", %multiuserquests);
	BNet::Utils::preprint ($count, '14476', "Rigged to Blow", %multiuserquests);
	BNet::Utils::preprint ($count, '14477', "Push the Button!", %multiuserquests);
	BNet::Utils::preprint ($count, '14478', "Operation Fishgut", %multiuserquests);
	BNet::Utils::preprint ($count, '14479', "There Are Many Like It", %multiuserquests);
	BNet::Utils::preprint ($count, '14480', "Extermination", %multiuserquests);
	BNet::Utils::preprint ($count, '14484', "Head of the Snake", %multiuserquests);
	BNet::Utils::preprint ($count, '14485', "Ticker Required", %multiuserquests);
	BNet::Utils::preprint ($count, '14486', "Handling the Goods", %multiuserquests);
	BNet::Utils::preprint ($count, '14487', "Still Beating Heart", %multiuserquests);
	BNet::Utils::preprint ($count, '24430', "Blacken the Skies", %multiuserquests);
	BNet::Utils::preprint ($count, '24433', "Let Them Feast on Fear", %multiuserquests);
	BNet::Utils::preprint ($count, '24434', "Commando Drop", %multiuserquests);
	BNet::Utils::preprint ($count, '24435', "Mop Up", %multiuserquests);
	BNet::Utils::preprint ($count, '24436', "Halo Drops", %multiuserquests);
	BNet::Utils::preprint ($count, '24437', "First Come, First Served", %multiuserquests);
	BNet::Utils::preprint ($count, '24439', "The Conquest of Azshara", %multiuserquests);
	BNet::Utils::preprint ($count, '24448', "Field Promotion", %multiuserquests);
	BNet::Utils::preprint ($count, '24449', "Shore Leave", %multiuserquests);
	BNet::Utils::preprint ($count, '24452', "Profitability Scouting", %multiuserquests);
	BNet::Utils::preprint ($count, '24453', "Private Chat", %multiuserquests);
	BNet::Utils::preprint ($count, '24455', "Rapid Deployment", %multiuserquests);
	BNet::Utils::preprint ($count, '24458', "A Hello to Arms", %multiuserquests);
	BNet::Utils::preprint ($count, '24463', "Probing into Ashenvale", %multiuserquests);
	BNet::Utils::preprint ($count, '24467', "Fade to Black", %multiuserquests);
	BNet::Utils::preprint ($count, '24478', "The Trial of Frost", %multiuserquests);
	BNet::Utils::preprint ($count, '24479', "The Trial of Shadow", %multiuserquests);
	BNet::Utils::preprint ($count, '24497', "Airborne Again", %multiuserquests);

}

sub z_10_60_Bloodmyst_Isle($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("10-60: Bloodmyst Isle");

}

sub z_10_60_Darkshore($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("10-60: Darkshore");

}

sub z_10_60_Northern_Barrens($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("10-60: Northern Barrens");

}

sub z_15_60_Ashenvale($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("15-60: Ashenvale");

}

sub z_20_60_Stonetalon_Mountains($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("20-60: Stonetalon Mountains");

}

sub z_25_60_Southern_Barrens($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("25-60: Southern Barrens");

}

sub z_30_60_Desolace($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("30-60: Desolace");

}

sub z_35_60_Dustwallow_Marsh($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("35-60: Dustwallow Marsh");
	BNet::Utils::preprint ($count, '1168', "Army of the Black Dragon <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '1201', "Theramore Spies <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '1202', "The Theramore Docks <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '1204', "Mudrock Soup and Bugs <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '1205', "Deadmire <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '1222', "Stinky's Escape <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '1258', "... and Bugs <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '1270', "Stinky's Escape <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '1271', "Feast at the Blue Recluse <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '11208', "Delivery for Drazzit", %multiuserquests);
	BNet::Utils::preprint ($count, '11211', "Help for Mudsprocket", %multiuserquests);
	BNet::Utils::preprint ($count, '11212', "Tabetha's Farm <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '11213', "Check Up on Tabetha <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '11215', "Help Mudsprocket <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '25051', "Darkmist Extermination <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '25292', "Next of Kin <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '26596', "The Call of Kalimdor <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '26682', "A Shambling Threat <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '26687', "Reinforcements From Theramore <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '26696', "The Call of Kalimdor <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '26701', "Flight to Brackenwall <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '26702', "Flight to Theramore <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27182', "The Hermit of Witch Hill <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27183', "Marsh Frog Legs", %multiuserquests);
	BNet::Utils::preprint ($count, '27184', "Jarl Needs Eyes", %multiuserquests);
	BNet::Utils::preprint ($count, '27186', "Jarl Needs a Blade", %multiuserquests);
	BNet::Utils::preprint ($count, '27188', "What's Haunting Witch Hill?", %multiuserquests);
	BNet::Utils::preprint ($count, '27189', "The Witch's Bane", %multiuserquests);
	BNet::Utils::preprint ($count, '27190', "Cleansing Witch Hill", %multiuserquests);
	BNet::Utils::preprint ($count, '27191', "Hungry as an Ogre!", %multiuserquests);
	BNet::Utils::preprint ($count, '27210', "Traitors Among Us <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27211', "Propaganda War <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27212', "Discrediting the Deserters <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27213', "The End of the Deserters <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27214', "A Disturbing Development <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27215', "The Hermit of Swamplight Manor <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27216', "This Old Lighthouse <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27217', "Thresher Oil <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27218', "Dastardly Denizens of the Deep <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27219', "Is it Real? <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27220', "Nat's Bargain <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27221', "Oh, It's Real <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27222', "Take Down Tethyr! <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27229', "SMASH BROODQUEEN <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27234', "Defias in Dustwallow? <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27235', "Renn McGill <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27236', "Secondhand Diving Gear <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27237', "Recover the Cargo! <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27238', "Jaina Must Know <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27239', "Survey Alcaz Island <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27240', "Proof of Treachery <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27241', "Return to Jaina <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27242', "Raptor Captor <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27243', "Unleash the Raptors <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27244', "The Lost Report <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27245', "Prisoners of the Grimtotems <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27246', "The Orc Report <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27247', "Captain Vimes <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27248', "Mission to Mudsprocket <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27249', "Inspecting the Ruins <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27251', "They Call Him Smiling Jim <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27252', "The Black Shield <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27253', "Inspecting the Ruins <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27254', "The Black Shield <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27255', "The Black Shield <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27256', "The Black Shield <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27257', "The Black Shield <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27258', "The Black Shield <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27259', "Suspicious Hoofprints <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27260', "Lieutenant Paval Reethe <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27261', "Questioning Reethe <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27262', "Suspicious Hoofprints <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27263', "Lieutenant Paval Reethe <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27264', "Lieutenant Paval Reethe <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27284', "The Black Shield <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27285', "The Black Shield <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27286', "Daelin's Men <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27287', "The Deserters <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27288', "The Deserters <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27291', "Peace at Last <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27292', "Return to Krog <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27293', "The Grimtotem Plot <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27294', "More than Coincidence <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27295', "Seek Out Tabetha <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27296', "Raze Direhorn Post! <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27297', "Justice Dispensed <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27306', "Talk to Ogron <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27336', "The Grimtotem Weapon", %multiuserquests);
	BNet::Utils::preprint ($count, '27339', "The Reagent Thief", %multiuserquests);
	BNet::Utils::preprint ($count, '27340', "Direhorn Raiders", %multiuserquests);
	BNet::Utils::preprint ($count, '27346', "The Zeppelin Crash", %multiuserquests);
	BNet::Utils::preprint ($count, '27347', "Corrosion Prevention", %multiuserquests);
	BNet::Utils::preprint ($count, '27348', "Secure the Cargo!", %multiuserquests);
	BNet::Utils::preprint ($count, '27407', "Bloodfen Feathers", %multiuserquests);
	BNet::Utils::preprint ($count, '27408', "Banner of the Stonemaul", %multiuserquests);
	BNet::Utils::preprint ($count, '27409', "The Essence of Enmity", %multiuserquests);
	BNet::Utils::preprint ($count, '27410', "Spirits of Stonemaul Hold", %multiuserquests);
	BNet::Utils::preprint ($count, '27411', "Challenge to the Black Flight", %multiuserquests);
	BNet::Utils::preprint ($count, '27412', "WANTED: Goreclaw the Ravenous", %multiuserquests);
	BNet::Utils::preprint ($count, '27413', "Catch a Dragon by the Tail", %multiuserquests);
	BNet::Utils::preprint ($count, '27414', "Identifying the Brood <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27415', "The Brood of Onyxia <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27416', "The Brood of Onyxia <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27417', "The Brood of Onyxia <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27418', "Challenge Overlord Mok'Morokk <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27424', "Overlord Mok'Morokk's Concern <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27425', "A Grim Connection <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27426', "Confirming the Suspicion <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27427', "Arms of the Grimtotems <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27428', "Tabetha's Assistance <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27429', "Raze Direhorn Post! <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '27430', "Justice for the Hyals <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28552', "Hero's Call: Dustwallow Marsh! <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28554', "Warchief's Command: Dustwallow Marsh! <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);

}

sub z_35_60_Feralas($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("35-60: Ferelas");

}

sub z_40_60_Thousand_Needles($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("40-60: Thousand Needles");

}

sub z_40_60_Felwood($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("40-60: Felwood");

}

sub z_40_60_Tanaris($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("40-60: Tanaris");

}

sub z_40_60_UnGoro_Crater($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("40-60: Un'Goro Crater");

}

sub z_40_60_Winterspring($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("40-60: Winterspring: Unsorted");
	BNet::Utils::preprint ($count, '28544', "Hero's Call: Winterspring! <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28545', "Warchief's Command: Winterspring! <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28460', "Threat of the Winterfall", %multiuserquests);
	BNet::Utils::preprint ($count, '28462', "Winterfall Firewater", %multiuserquests);
	BNet::Utils::preprint ($count, '28464', "Falling to Corruption", %multiuserquests);
	BNet::Utils::preprint ($count, '28467', "Mystery Goo", %multiuserquests);
	BNet::Utils::preprint ($count, '28469', "Winterfall Runners", %multiuserquests);
	BNet::Utils::preprint ($count, '28470', "High Chief Winterfall", %multiuserquests);
	BNet::Utils::preprint ($count, '28471', "The Final Piece", %multiuserquests);
	BNet::Utils::preprint ($count, '28472', "Words of the High Chief", %multiuserquests);
	BNet::Utils::preprint ($count, '28479', "The Ruins of Kel'Theril", %multiuserquests);
	BNet::Utils::preprint ($count, '28513', "Pride of the Highborne", %multiuserquests);
	BNet::Utils::preprint ($count, '28516', "Centuries of Suffering", %multiuserquests);
	BNet::Utils::preprint ($count, '28518', "Legacy of the High Elves", %multiuserquests);
	BNet::Utils::preprint ($count, '28519', "Pain of the Blood Elves", %multiuserquests);
	BNet::Utils::preprint ($count, '28521', "Speak to Salfa", %multiuserquests);
	BNet::Utils::preprint ($count, '28522', "Winterfall Activity", %multiuserquests);
	BNet::Utils::preprint ($count, '28524', "Delivery for Donova", %multiuserquests);
	BNet::Utils::preprint ($count, '28530', "Scalding Signs", %multiuserquests);
	BNet::Utils::preprint ($count, '28534', "Descendants of the Highborne", %multiuserquests);
	BNet::Utils::preprint ($count, '28535', "Descendants of the High Elves", %multiuserquests);
	BNet::Utils::preprint ($count, '28536', "The Curse of Zin-Malor", %multiuserquests);
	BNet::Utils::preprint ($count, '28537', "In Pursuit of Shades", %multiuserquests);
	BNet::Utils::preprint ($count, '28540', "Doin' De E'ko Magic", %multiuserquests);
	BNet::Utils::preprint ($count, '28609', "Hammer Time", %multiuserquests);
	BNet::Utils::preprint ($count, '28610', "Rubble Trouble", %multiuserquests);
	BNet::Utils::preprint ($count, '28614', "Bearzerker", %multiuserquests);
	BNet::Utils::preprint ($count, '28615', "Turning the Earth", %multiuserquests);
	BNet::Utils::preprint ($count, '28618', "Boulder Delivery", %multiuserquests);
	BNet::Utils::preprint ($count, '28624', "Kilram's Boast", %multiuserquests);
	BNet::Utils::preprint ($count, '28625', "Chop Chop", %multiuserquests);
	BNet::Utils::preprint ($count, '28626', "Tree Delivery", %multiuserquests);
	BNet::Utils::preprint ($count, '28627', "Seril's Boast", %multiuserquests);
	BNet::Utils::preprint ($count, '28628', "Ice Delivery", %multiuserquests);
	BNet::Utils::preprint ($count, '28629', "Are We There, Yeti?", %multiuserquests);
	BNet::Utils::preprint ($count, '28630', "Echo Three", %multiuserquests);
	BNet::Utils::preprint ($count, '28631', "The Perfect Horns", %multiuserquests);
	BNet::Utils::preprint ($count, '28632', "Fresh From The Hills", %multiuserquests);
	BNet::Utils::preprint ($count, '28637', "A Taste for Bear", %multiuserquests);
	BNet::Utils::preprint ($count, '28638', "The Owls Have It", %multiuserquests);
	BNet::Utils::preprint ($count, '28639', "Ursius", %multiuserquests);
	BNet::Utils::preprint ($count, '28640', "Fresh Frostsabers", %multiuserquests);
	BNet::Utils::preprint ($count, '28641', "Pride of the Dinner Table", %multiuserquests);
	BNet::Utils::preprint ($count, '28656', "Strange Life Forces", %multiuserquests);
	BNet::Utils::preprint ($count, '28674', "Starfall Village", %multiuserquests);
	BNet::Utils::preprint ($count, '28676', "Exterminators at Work", %multiuserquests);
	BNet::Utils::preprint ($count, '28701', "Out of Harm's Way", %multiuserquests);
	BNet::Utils::preprint ($count, '28703', "Step Into My Barrow", %multiuserquests);
	BNet::Utils::preprint ($count, '28706', "Spray it Forward", %multiuserquests);
	BNet::Utils::preprint ($count, '28707', "Spray it Again", %multiuserquests);
	BNet::Utils::preprint ($count, '28710', "Spray it One More Time", %multiuserquests);
	BNet::Utils::preprint ($count, '28718', "Where There's Smoke, There's Delicious Meat", %multiuserquests);
	BNet::Utils::preprint ($count, '28719', "A Little Gamy", %multiuserquests);
	BNet::Utils::preprint ($count, '28722', "Yetiphobia", %multiuserquests);
	BNet::Utils::preprint ($count, '28742', "Shy-Rotam", %multiuserquests);
	BNet::Utils::preprint ($count, '28745', "Screechy Keen", %multiuserquests);
	BNet::Utils::preprint ($count, '28768', "Winterspring!", %multiuserquests);
	BNet::Utils::preprint ($count, '28782', "A Bird of Legend", %multiuserquests);
	BNet::Utils::preprint ($count, '28828', "You Gotta Have Eggs", %multiuserquests);
	BNet::Utils::preprint ($count, '28829', "Razor Beak and Antlers Pointy", %multiuserquests);
	BNet::Utils::preprint ($count, '28830', "Chips off the Old Block", %multiuserquests);
	BNet::Utils::preprint ($count, '28831', "Damn You, Frostilicus", %multiuserquests);
	BNet::Utils::preprint ($count, '28837', "Altered Beasts", %multiuserquests);
	BNet::Utils::preprint ($count, '28838', "The Owlbeasts' Defense", %multiuserquests);
	BNet::Utils::preprint ($count, '28839', "Magic Prehistoric", %multiuserquests);
	BNet::Utils::preprint ($count, '28840', "Winterwater", %multiuserquests);
	BNet::Utils::preprint ($count, '28841', "The Arcane Storm Within", %multiuserquests);
	BNet::Utils::preprint ($count, '28842', "Umbranse's Deliverance", %multiuserquests);
	BNet::Utils::preprint ($count, '28847', "The Pursuit of Umbranse", %multiuserquests);
	BNet::Utils::preprint ($count, '28848', "Trailing the Spiritspeaker", %multiuserquests);

}

sub z_40_60_Silithus($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("40-60: Silithus: Breadcrumbs");
	BNet::Utils::preprint ($count, '28528', "Hero's Call: Silithus! <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28527', "Warchief's Command: Silithus! <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '28859', "The Dunes of Silithus", %multiuserquests);
	BNet::Utils::preprint ($count, '28856', "The Sands of Silithus", %multiuserquests);
	BNet::Utils::groupheader ("55-60: Silithus: Cenarian Hold");
	BNet::Utils::preprint ($count, '8280', "Securing the Supply Lines", %multiuserquests);
	BNet::Utils::preprint ($count, '8308', "Brann Bronzebeard's Lost Letter", %multiuserquests);
	BNet::Utils::preprint ($count, '8281', "Stepping Up Security", %multiuserquests);
	BNet::Utils::preprint ($count, '8283', "Wanted - Deathclasp, Terror of the Sands", %multiuserquests);
	BNet::Utils::preprint ($count, '8318', "Secret Communication", %multiuserquests);
	BNet::Utils::groupheader ("55-60: Silithus: Saving Noggle");
	BNet::Utils::preprint ($count, '8277', "Deadly Desert Venom", %multiuserquests);
	BNet::Utils::preprint ($count, '8278', "Noggle's Last Hope", %multiuserquests);
	BNet::Utils::preprint ($count, '8282', "Noggle's Lost Satchel", %multiuserquests);
	BNet::Utils::groupheader ("55-60: Silithus: Twilight Geolords");
	BNet::Utils::preprint ($count, '8320', "Twilight Geolords", %multiuserquests);
	BNet::Utils::preprint ($count, '8321', "Vyral the Vile", %multiuserquests);
	BNet::Utils::groupheader ("55-60: Silithus: Hive'Regal");
	BNet::Utils::preprint ($count, '8304', "Dearest Natalia", %multiuserquests);
	BNet::Utils::preprint ($count, '8306', "Into The Maw of Madness", %multiuserquests);
	BNet::Utils::preprint ($count, '8310', "Breaking the Code", %multiuserquests);
	BNet::Utils::preprint ($count, '8309', "Glyph Chasing", %multiuserquests);
	BNet::Utils::preprint ($count, '8314', "Unraveling the Mystery", %multiuserquests);
	BNet::Utils::preprint ($count, '8381', "Armaments of War (Obsolete) <img align=\"right\" src=\"https://wow.zamimg.com/images/wow/icons/small/class_mage.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '8381', "Armaments of War (Obsolete) <img align=\"right\" src=\"https://wow.zamimg.com/images/wow/icons/small/class_warlock.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '8379', "Armaments of War (Obsolete) <img align=\"right\" src=\"https://wow.zamimg.com/images/wow/icons/small/class_priest.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '8382', "Armaments of War (Obsolete) <img align=\"right\" src=\"https://wow.zamimg.com/images/wow/icons/small/class_druid.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '8378', "Armaments of War (Obsolete) <img align=\"right\" src=\"https://wow.zamimg.com/images/wow/icons/small/class_rogue.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '8377', "Armaments of War (Obsolete) <img align=\"right\" src=\"https://wow.zamimg.com/images/wow/icons/small/class_hunter.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '8380', "Armaments of War (Obsolete) <img align=\"right\" src=\"https://wow.zamimg.com/images/wow/icons/small/class_shaman.jpg\">", %multiuserquests);
	BNet::Utils::preprint ($count, '8376', "Armaments of War (Obsolete) <img align=\"right\" src=\"https://wow.zamimg.com/images/wow/icons/small/class_paladin.jpg\">", %multiuserquests);
	BNet::Utils::groupheader ("55-60: Silithus: Hermit Ortell");
	BNet::Utils::preprint ($count, '8284', "The Twilight Mystery", %multiuserquests);
	BNet::Utils::preprint ($count, '8285', "The Deserter", %multiuserquests);
	BNet::Utils::preprint ($count, '8279', "The Twilight Lexicon", %multiuserquests);
	BNet::Utils::preprint ($count, '8323', "True Believers", %multiuserquests);
	BNet::Utils::preprint ($count, '8287', "A Terrible Purpose", %multiuserquests);
	BNet::Utils::groupheader ("55-60: Silithus: PvP");
	BNet::Utils::preprint ($count, '9415', "Report to Marshal Bluewall <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '9416', "Report to General Kirika <img align=\"right\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);

}


1;

