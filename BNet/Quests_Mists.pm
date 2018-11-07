package BNet::Quests_Mists;

use strict;
use warnings;

sub sz_01_10_Wandering_Isle($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("01-10: Wandering Isle");

}

sub z_80_90_Jade_Forest($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("80-90: Jade Forest");
	BNet::Utils::preprint ($count, '29552', "Critical Condition <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29553', "The Missing Admiral <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29555', "The White Pawn <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29556', "Hozen Aren't Your Friends, Hozen Are Your Enemies <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29558', "The Path of War <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29559', "Freeing Our Brothers <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29560', "Ancient Power <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29562', "Jailbreak <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29576', "An Air of Worry", %multiuserquests);
	BNet::Utils::preprint ($count, '29578', "Defiance", %multiuserquests);
	BNet::Utils::preprint ($count, '29579', "Rally the Survivors", %multiuserquests);
	BNet::Utils::preprint ($count, '29580', "Orchard-Supplied Hardware", %multiuserquests);
	BNet::Utils::preprint ($count, '29585', "Spitfire", %multiuserquests);
	BNet::Utils::preprint ($count, '29586', "The Splintered Path", %multiuserquests);
	BNet::Utils::preprint ($count, '29587', "Unbound", %multiuserquests);
	BNet::Utils::preprint ($count, '29617', "Tian Monastery", %multiuserquests);
	BNet::Utils::preprint ($count, '29618', "The High Elder", %multiuserquests);
	BNet::Utils::preprint ($count, '29619', "A Courteous Guest", %multiuserquests);
	BNet::Utils::preprint ($count, '29620', "The Great Banquet", %multiuserquests);
	BNet::Utils::preprint ($count, '29622', "Your Training Starts Now", %multiuserquests);
	BNet::Utils::preprint ($count, '29623', "Perfection", %multiuserquests);
	BNet::Utils::preprint ($count, '29624', "Attention", %multiuserquests);
	BNet::Utils::preprint ($count, '29626', "Groundskeeper Wu", %multiuserquests);
	BNet::Utils::preprint ($count, '29627', "A Proper Weapon", %multiuserquests);
	BNet::Utils::preprint ($count, '29628', "A Strong Back", %multiuserquests);
	BNet::Utils::preprint ($count, '29629', "A Steady Hand", %multiuserquests);
	BNet::Utils::preprint ($count, '29630', "And a Heavy Fist", %multiuserquests);
	BNet::Utils::preprint ($count, '29631', "Burning Bright", %multiuserquests);
	BNet::Utils::preprint ($count, '29632', "Becoming Battle-Ready", %multiuserquests);
	BNet::Utils::preprint ($count, '29633', "Zhi-Zhi, the Dextrous", %multiuserquests);
	BNet::Utils::preprint ($count, '29634', "Husshun, the Wizened", %multiuserquests);
	BNet::Utils::preprint ($count, '29635', "Xiao, the Eater", %multiuserquests);
	BNet::Utils::preprint ($count, '29636', "A Test of Endurance", %multiuserquests);
	BNet::Utils::preprint ($count, '29637', "The Rumpus", %multiuserquests);
	BNet::Utils::preprint ($count, '29639', "Flying Colors", %multiuserquests);
	BNet::Utils::preprint ($count, '29646', "Flying Colors", %multiuserquests);
	BNet::Utils::preprint ($count, '29647', "Flying Colors", %multiuserquests);
	BNet::Utils::preprint ($count, '29670', "Maul Gormal", %multiuserquests);
	BNet::Utils::preprint ($count, '29694', "Regroup! <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29716', "The Double Hozen Dare", %multiuserquests);
	BNet::Utils::preprint ($count, '29717', "Down Kitty!", %multiuserquests);
	BNet::Utils::preprint ($count, '29723', "The Jade Witch", %multiuserquests);
	BNet::Utils::preprint ($count, '29725', "SI:7 Report: Fire From the Sky <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29726', "SI:7 Report: Hostile Natives <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29727', "SI:7 Report: Take No Prisoners <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29730', "Scouting Report: Hostile Natives <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29731', "Scouting Report: On the Right Track <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29733', "SI:7 Report: Lost in the Woods <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29743', "Monstrosity <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29745', "The Sprites' Plight", %multiuserquests);
	BNet::Utils::preprint ($count, '29747', "Break the Cycle", %multiuserquests);
	BNet::Utils::preprint ($count, '29748', "Simulacrumble", %multiuserquests);
	BNet::Utils::preprint ($count, '29749', "An Urgent Plea", %multiuserquests);
	BNet::Utils::preprint ($count, '29750', "Vessels of the Spirit", %multiuserquests);
	BNet::Utils::preprint ($count, '29751', "Ritual Artifacts", %multiuserquests);
	BNet::Utils::preprint ($count, '29752', "The Wayward Dead", %multiuserquests);
	BNet::Utils::preprint ($count, '29753', "Back to Nature", %multiuserquests);
	BNet::Utils::preprint ($count, '29754', "To Bridge Earth and Sky", %multiuserquests);
	BNet::Utils::preprint ($count, '29755', "Pei-Back", %multiuserquests);
	BNet::Utils::preprint ($count, '29756', "A Humble Offering", %multiuserquests);
	BNet::Utils::preprint ($count, '29759', "Kung Din <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29762', "Family Heirlooms <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29765', "Cryin' My Eyes Out <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29804', "Seein' Red <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29815', "Forensic Science <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29821', "Missed Me By... That Much! <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29822', "Lay of the Land <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29823', "Scouting Report: The Friend of My Enemy <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29824', "Scouting Report: Like Jinyu in a Barrel <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29827', "Acid Rain <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29865', "The Silkwood Road", %multiuserquests);
	BNet::Utils::preprint ($count, '29866', "The Threads that Stick", %multiuserquests);
	BNet::Utils::preprint ($count, '29879', "Swallowed Whole <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29881', "The Perfect Color", %multiuserquests);
	BNet::Utils::preprint ($count, '29882', "Quill of Stingers", %multiuserquests);
	BNet::Utils::preprint ($count, '29883', "The Pearlfin Situation <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29885', "Road Rations <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29887', "The Elder's Instruments <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29888', "Seek Out the Lorewalker <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29889', "Borrowed Brew <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29890', "Finding Your Center <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29891', "Potency <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29892', "Body <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29893', "Hue <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29894', "Spirits of the Water <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29898', "Sacred Waters <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29899', "Rest in Peace <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29900', "An Ancient Legend <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29901', "Anduin's Decision <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29903', "A Perfect Match <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29904', "Bigger Fish to Fry <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29905', "Let Them Burn <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29906', "Carp Diem <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29920', "Getting Permission", %multiuserquests);
	BNet::Utils::preprint ($count, '29922', "In Search of Wisdom <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29924', "Kill Kher Shan <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29925', "All We Can Spare", %multiuserquests);
	BNet::Utils::preprint ($count, '29926', "Calamity Jade", %multiuserquests);
	BNet::Utils::preprint ($count, '29927', "Mann's Man", %multiuserquests);
	BNet::Utils::preprint ($count, '29928', "I Have No Jade And I Must Scream", %multiuserquests);
	BNet::Utils::preprint ($count, '29929', "Trapped!", %multiuserquests);
	BNet::Utils::preprint ($count, '29930', "What's Mined Is Yours", %multiuserquests);
	BNet::Utils::preprint ($count, '29931', "The Serpent's Heart", %multiuserquests);
	BNet::Utils::preprint ($count, '29932', "The Temple of the Jade Serpent", %multiuserquests);
	BNet::Utils::preprint ($count, '29933', "The Bees' Knees <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29935', "Orders are Orders <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29936', "Instant Messaging <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29937', "Furious Fowl <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29939', "Boom Bait <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29941', "Beyond the Horizon <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29942', "Silly Wikket, Slickies are for Hozen <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29943', "Guerrillas in our Midst <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29966', "Burning Down the House <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29967', "Boom Goes the Doonamite! <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29968', "Green-ish Energy <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29971', "The Scouts Return <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '29993', "Find the Boy", %multiuserquests);
	BNet::Utils::preprint ($count, '29995', "Shrine of the Dawn", %multiuserquests);
	BNet::Utils::preprint ($count, '29997', "The Scryer's Dilemma", %multiuserquests);
	BNet::Utils::preprint ($count, '29998', "The Librarian's Quandary", %multiuserquests);
	BNet::Utils::preprint ($count, '29999', "The Rider's Bind", %multiuserquests);
	BNet::Utils::preprint ($count, '30000', "The Jade Serpent", %multiuserquests);
	BNet::Utils::preprint ($count, '30001', "Moth-Ridden", %multiuserquests);
	BNet::Utils::preprint ($count, '30002', "Pages of History", %multiuserquests);
	BNet::Utils::preprint ($count, '30004', "Everything In Its Place", %multiuserquests);
	BNet::Utils::preprint ($count, '30005', "Lighting Up the Sky", %multiuserquests);
	BNet::Utils::preprint ($count, '30006', "The Darkness Around Us", %multiuserquests);
	BNet::Utils::preprint ($count, '30011', "A New Vision", %multiuserquests);
	BNet::Utils::preprint ($count, '30015', "Dawn's Blossom <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30063', "Behind the Masks", %multiuserquests);
	BNet::Utils::preprint ($count, '30064', "Saving the Sutras", %multiuserquests);
	BNet::Utils::preprint ($count, '30065', "Arrows of Fortune", %multiuserquests);
	BNet::Utils::preprint ($count, '30066', "Hidden Power", %multiuserquests);
	BNet::Utils::preprint ($count, '30067', "The Shadow of Doubt", %multiuserquests);
	BNet::Utils::preprint ($count, '30068', "Flames of the Void", %multiuserquests);
	BNet::Utils::preprint ($count, '30069', "No Plan Survives Contact with the Enemy <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30070', "The Fall of Ga'trul <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30134', "Wild Things", %multiuserquests);
	BNet::Utils::preprint ($count, '30135', "Beating the Odds", %multiuserquests);
	BNet::Utils::preprint ($count, '30136', "Empty Nests", %multiuserquests);
	BNet::Utils::preprint ($count, '30137', "Egg Collection", %multiuserquests);
	BNet::Utils::preprint ($count, '30138', "Choosing the One", %multiuserquests);
	BNet::Utils::preprint ($count, '30139', "The Rider's Journey", %multiuserquests);
	BNet::Utils::preprint ($count, '30140', "The Rider's Journey", %multiuserquests);
	BNet::Utils::preprint ($count, '30141', "The Rider's Journey", %multiuserquests);
	BNet::Utils::preprint ($count, '30142', "It's A...", %multiuserquests);
	BNet::Utils::preprint ($count, '30143', "They Grow Like Weeds", %multiuserquests);
	BNet::Utils::preprint ($count, '30144', "Flight Training: Ring Round-Up", %multiuserquests);
	BNet::Utils::preprint ($count, '30145', "Flight Training: Full Speed Ahead", %multiuserquests);
	BNet::Utils::preprint ($count, '30146', "Snack Time", %multiuserquests);
	BNet::Utils::preprint ($count, '30147', "Fragments of the Past", %multiuserquests);
	BNet::Utils::preprint ($count, '30148', "Just a Flesh Wound", %multiuserquests);
	BNet::Utils::preprint ($count, '30149', "A Feast for the Senses", %multiuserquests);
	BNet::Utils::preprint ($count, '30150', "Sweet as Honey", %multiuserquests);
	BNet::Utils::preprint ($count, '30151', "Catch!", %multiuserquests);
	BNet::Utils::preprint ($count, '30152', "The Sky Race", %multiuserquests);
	BNet::Utils::preprint ($count, '30154', "The Easiest Way To A Serpent's Heart", %multiuserquests);
	BNet::Utils::preprint ($count, '30155', "Restoring the Balance", %multiuserquests);
	BNet::Utils::preprint ($count, '30156', "Feeding Time", %multiuserquests);
	BNet::Utils::preprint ($count, '30157', "Emptier Nests", %multiuserquests);
	BNet::Utils::preprint ($count, '30158', "Disarming the Enemy", %multiuserquests);
	BNet::Utils::preprint ($count, '30159', "Preservation", %multiuserquests);
	BNet::Utils::preprint ($count, '30187', "Flight Training: In Due Course", %multiuserquests);
	BNet::Utils::preprint ($count, '30188', "Riding the Skies", %multiuserquests);
	BNet::Utils::preprint ($count, '30466', "Sufficient Motivation <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30484', "Gauging Our Progress <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30485', "Last Piece of the Puzzle <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30495', "Love's Labor", %multiuserquests);
	BNet::Utils::preprint ($count, '30498', "Get Back Here! <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30499', "Get Back Here! <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30500', "Residual Fallout", %multiuserquests);
	BNet::Utils::preprint ($count, '30502', "Jaded Heart", %multiuserquests);
	BNet::Utils::preprint ($count, '30504', "Emergency Response <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30565', "An Unexpected Advantage <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30568', "Helping the Cause <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30648', "Moving On", %multiuserquests);
	BNet::Utils::preprint ($count, '31112', "They're So Thorny! <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31121', "Stay a While, and Listen <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31130', "A Visit with Lorewalker Cho <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31132', "A Mile in My Shoes <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31134', "If These Stones Could Speak <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31152', "Peering Into the Past <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31167', "Family Tree <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31194', "Slitherscale Suppression", %multiuserquests);
	BNet::Utils::preprint ($count, '31230', "Welcome to Dawn's Blossom", %multiuserquests);
	BNet::Utils::preprint ($count, '31239', "What's in a Name Name? <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31241', "Wicked Wikkets <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31261', "Captain Jack's Dead <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31303', "The Seal is Broken", %multiuserquests);
	BNet::Utils::preprint ($count, '31307', "FLAG - Jade Infused Blade", %multiuserquests);
	BNet::Utils::preprint ($count, '31319', "Emergency Response <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31362', "Last Piece of the Puzzle <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31373', "The Order of the Cloud Serpent <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31375', "The Order of the Cloud Serpent <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31732', "Unleash Hell <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31733', "Touching Ground <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31734', "Welcome Wagons <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31735', "The Right Tool For The Job <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31736', "Envoy of the Alliance <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31737', "The Cost of War <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31738', "Pillaging Peons <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31739', "Priorities! <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31740', "Koukou's Rampage <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31741', "Twinspire Keep <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31742', "Fractured Forces <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31743', "Smoke Before Fire <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31744', "Unfair Trade <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31745', "Onward and Inward <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31765', "Paint it Red! <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31766', "Touching Ground <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31767', "Finish Them! <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31768', "Fire Is Always the Answer <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31769', "The Final Blow! <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31770', "You're Either With Us Or... <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31771', "Face to Face With Consequence <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31772', "Priorities! <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31773', "Prowler Problems <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31774', "Seeking Zin'jun <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31775', "Assault on the Airstrip <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31776', "Strongarm Tactics <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31777', "Choppertunity <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31778', "Unreliable Allies <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31779', "The Darkness Within <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31784', "Onyx To Goodness", %multiuserquests);
	BNet::Utils::preprint ($count, '31810', "Riding the Skies", %multiuserquests);
	BNet::Utils::preprint ($count, '31811', "Riding the Skies", %multiuserquests);
	BNet::Utils::preprint ($count, '31978', "Priorities! <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31999', "Nazgrim's Command <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '33250', "A Time-Lost Treasure", %multiuserquests);
	BNet::Utils::preprint ($count, '49538', "Warchief's Command: Jade Forest! <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '49556', "Hero's Call: Jade Forest! <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);

}

sub z_81_90_Valley_of_the_Four_Winds($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("81-90: Valley of the Four Winds");
	BNet::Utils::preprint ($count, '29577', "Ashyo's Vision", %multiuserquests);
	BNet::Utils::preprint ($count, '29581', "The Golden Dream", %multiuserquests);
	BNet::Utils::preprint ($count, '29600', "Snap Judgment", %multiuserquests);
	BNet::Utils::preprint ($count, '29757', "Bottletoads", %multiuserquests);
	BNet::Utils::preprint ($count, '29758', "Guess Whose Back", %multiuserquests);
	BNet::Utils::preprint ($count, '29871', "Clever Ashyo", %multiuserquests);
	BNet::Utils::preprint ($count, '29872', "Lin Tenderpaw", %multiuserquests);
	BNet::Utils::preprint ($count, '29877', "A Poor Grasp of the Basics", %multiuserquests);
	BNet::Utils::preprint ($count, '29907', "Chen and Li Li", %multiuserquests);
	BNet::Utils::preprint ($count, '29908', "A Seemingly Endless Nuisance", %multiuserquests);
	BNet::Utils::preprint ($count, '29909', "Low Turnip Turnout", %multiuserquests);
	BNet::Utils::preprint ($count, '29910', "Rampaging Rodents", %multiuserquests);
	BNet::Utils::preprint ($count, '29911', "Practically Perfect Produce", %multiuserquests);
	BNet::Utils::preprint ($count, '29912', "The Fabulous Miss Fanny", %multiuserquests);
	BNet::Utils::preprint ($count, '29913', "The Meat They'll Eat", %multiuserquests);
	BNet::Utils::preprint ($count, '29914', "Back to the Sty", %multiuserquests);
	BNet::Utils::preprint ($count, '29915', "A Neighbor's Duty", %multiuserquests);
	BNet::Utils::preprint ($count, '29916', "Piercing Talons and Slavering Jaws", %multiuserquests);
	BNet::Utils::preprint ($count, '29917', "Lupello", %multiuserquests);
	BNet::Utils::preprint ($count, '29918', "A Lesson in Bravery", %multiuserquests);
	BNet::Utils::preprint ($count, '29919', "Great Minds Drink Alike", %multiuserquests);
	BNet::Utils::preprint ($count, '29940', "Taking a Crop", %multiuserquests);
	BNet::Utils::preprint ($count, '29944', "Leaders Among Breeders", %multiuserquests);
	BNet::Utils::preprint ($count, '29945', "Yellow and Red Make Orange", %multiuserquests);
	BNet::Utils::preprint ($count, '29946', "The Warren-Mother", %multiuserquests);
	BNet::Utils::preprint ($count, '29947', "Crouching Carrot, Hidden Turnip", %multiuserquests);
	BNet::Utils::preprint ($count, '29948', "Thieves to the Core", %multiuserquests);
	BNet::Utils::preprint ($count, '29949', "Legacy", %multiuserquests);
	BNet::Utils::preprint ($count, '29950', "Li Li's Day Off", %multiuserquests);
	BNet::Utils::preprint ($count, '29951', "Muddy Water", %multiuserquests);
	BNet::Utils::preprint ($count, '29952', "Broken Dreams", %multiuserquests);
	BNet::Utils::preprint ($count, '29981', "Stemming the Swarm", %multiuserquests);
	BNet::Utils::preprint ($count, '29982', "Evacuation Orders", %multiuserquests);
	BNet::Utils::preprint ($count, '29983', "The Hidden Master", %multiuserquests);
	BNet::Utils::preprint ($count, '29984', "Unyielding Fists: Trial of Bamboo", %multiuserquests);
	BNet::Utils::preprint ($count, '29985', "They Will Be Mist", %multiuserquests);
	BNet::Utils::preprint ($count, '29986', "Fog Wards", %multiuserquests);
	BNet::Utils::preprint ($count, '29987', "Unyielding Fists: Trial of Wood", %multiuserquests);
	BNet::Utils::preprint ($count, '29988', "A Taste For Eggs", %multiuserquests);
	BNet::Utils::preprint ($count, '29989', "Unyielding Fists: Trial of Stone", %multiuserquests);
	BNet::Utils::preprint ($count, '29990', "Training and Discipline", %multiuserquests);
	BNet::Utils::preprint ($count, '29992', "Tenderpaw By Name, Tender Paw By Reputation", %multiuserquests);
	BNet::Utils::preprint ($count, '30028', "Grain Recovery", %multiuserquests);
	BNet::Utils::preprint ($count, '30029', "Wee Little Shenanigans", %multiuserquests);
	BNet::Utils::preprint ($count, '30030', "Out of Sprite", %multiuserquests);
	BNet::Utils::preprint ($count, '30031', "Taste Test", %multiuserquests);
	BNet::Utils::preprint ($count, '30032', "The Quest for Better Barley", %multiuserquests);
	BNet::Utils::preprint ($count, '30046', "Chen's Resolution", %multiuserquests);
	BNet::Utils::preprint ($count, '30047', "The Chen Taste Test", %multiuserquests);
	BNet::Utils::preprint ($count, '30048', "Li Li and the Grain", %multiuserquests);
	BNet::Utils::preprint ($count, '30049', "Doesn't Hold Water", %multiuserquests);
	BNet::Utils::preprint ($count, '30050', "Gardener Fran and the Watering Can", %multiuserquests);
	BNet::Utils::preprint ($count, '30051', "The Great Water Hunt", %multiuserquests);
	BNet::Utils::preprint ($count, '30052', "Weed War", %multiuserquests);
	BNet::Utils::preprint ($count, '30053', "Hop Hunting", %multiuserquests);
	BNet::Utils::preprint ($count, '30054', "Enough is Ookin' Enough", %multiuserquests);
	BNet::Utils::preprint ($count, '30055', "Stormstout's Hops", %multiuserquests);
	BNet::Utils::preprint ($count, '30056', "The Farmer's Daughter", %multiuserquests);
	BNet::Utils::preprint ($count, '30057', "Seeing Orange", %multiuserquests);
	BNet::Utils::preprint ($count, '30058', "Mothallus!", %multiuserquests);
	BNet::Utils::preprint ($count, '30059', "The Moth Rebellion", %multiuserquests);
	BNet::Utils::preprint ($count, '30072', "Where Silk Comes From", %multiuserquests);
	BNet::Utils::preprint ($count, '30073', "The Emperor", %multiuserquests);
	BNet::Utils::preprint ($count, '30074', "Knocking on the Door", %multiuserquests);
	BNet::Utils::preprint ($count, '30075', "Clear the Way", %multiuserquests);
	BNet::Utils::preprint ($count, '30076', "The Fanciest Water", %multiuserquests);
	BNet::Utils::preprint ($count, '30077', "Barrels, Man", %multiuserquests);
	BNet::Utils::preprint ($count, '30078', "Cleaning House", %multiuserquests);
	BNet::Utils::preprint ($count, '30086', "The Search for the Hidden Master", %multiuserquests);
	BNet::Utils::preprint ($count, '30117', "Stoneplow Thirsts", %multiuserquests);
	BNet::Utils::preprint ($count, '30172', "Barreling Along", %multiuserquests);
	BNet::Utils::preprint ($count, '30181', "Mushan Mastery", %multiuserquests);
	BNet::Utils::preprint ($count, '30182', "Fox Mastery", %multiuserquests);
	BNet::Utils::preprint ($count, '30183', "Stalker Mastery", %multiuserquests);
	BNet::Utils::preprint ($count, '30184', "Mushan Mastery: Darkhide", %multiuserquests);
	BNet::Utils::preprint ($count, '30185', "Tortoise Mastery", %multiuserquests);
	BNet::Utils::preprint ($count, '30186', "Parental Mastery", %multiuserquests);
	BNet::Utils::preprint ($count, '30241', "Warn Stoneplow <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30252', "A Helping Hand", %multiuserquests);
	BNet::Utils::preprint ($count, '30254', "Learn and Grow II: Tilling and Planting", %multiuserquests);
	BNet::Utils::preprint ($count, '30255', "Learn and Grow III: Tending Crops", %multiuserquests);
	BNet::Utils::preprint ($count, '30256', "Learn and Grow IV: Harvesting", %multiuserquests);
	BNet::Utils::preprint ($count, '30257', "Learn and Grow V: Halfhill Market", %multiuserquests);
	BNet::Utils::preprint ($count, '30258', "Mung-Mung's Vote I: A Hozen's Problem", %multiuserquests);
	BNet::Utils::preprint ($count, '30259', "Mung-Mung's Vote II: Rotten to the Core", %multiuserquests);
	BNet::Utils::preprint ($count, '30260', "Growing the Farm I: The Weeds", %multiuserquests);
	BNet::Utils::preprint ($count, '30267', "Watery Woes", %multiuserquests);
	BNet::Utils::preprint ($count, '30275', "A Crocolisk Tale", %multiuserquests);
	BNet::Utils::preprint ($count, '30325', "Where It Counts", %multiuserquests);
	BNet::Utils::preprint ($count, '30326', "The Kunzen Legend-Chief", %multiuserquests);
	BNet::Utils::preprint ($count, '30334', "Stealing is Bad... Re-Stealing is OK", %multiuserquests);
	BNet::Utils::preprint ($count, '30360', "Warn Stoneplow <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30376', "Hope Springs Eternal", %multiuserquests);
	BNet::Utils::preprint ($count, '30516', "Growing the Farm I: A Little Problem", %multiuserquests);
	BNet::Utils::preprint ($count, '30517', "Farmer Fung's Vote I: Yak Attack", %multiuserquests);
	BNet::Utils::preprint ($count, '30518', "Farmer Fung's Vote II: On the Loose", %multiuserquests);
	BNet::Utils::preprint ($count, '30519', "Nana's Vote I: Nana's Secret Recipe", %multiuserquests);
	BNet::Utils::preprint ($count, '30521', "Haohan's Vote I: Bungalow Break-In", %multiuserquests);
	BNet::Utils::preprint ($count, '30522', "Haohan's Vote II: The Real Culprits", %multiuserquests);
	BNet::Utils::preprint ($count, '30523', "Growing the Farm II: The Broken Wagon", %multiuserquests);
	BNet::Utils::preprint ($count, '30524', "Growing the Farm II: Knock on Wood", %multiuserquests);
	BNet::Utils::preprint ($count, '30525', "Haohan's Vote III: Pure Poison", %multiuserquests);
	BNet::Utils::preprint ($count, '30526', "Lost and Lonely", %multiuserquests);
	BNet::Utils::preprint ($count, '30527', "Haohan's Vote IV: Melons For Felons", %multiuserquests);
	BNet::Utils::preprint ($count, '30528', "Haohan's Vote V: Chief Yip-Yip", %multiuserquests);
	BNet::Utils::preprint ($count, '30529', "Growing the Farm III: The Mossy Boulder", %multiuserquests);
	BNet::Utils::preprint ($count, '30534', "A Second Hand", %multiuserquests);
	BNet::Utils::preprint ($count, '30535', "Learn and Grow I: Seeds", %multiuserquests);
	BNet::Utils::preprint ($count, '30622', "The Swarm Begins", %multiuserquests);
	BNet::Utils::preprint ($count, '30623', "The Mantidote", %multiuserquests);
	BNet::Utils::preprint ($count, '30624', "It Does You No Good In The Keg <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '30625', "Students No More", %multiuserquests);
	BNet::Utils::preprint ($count, '30626', "Retreat!", %multiuserquests);
	BNet::Utils::preprint ($count, '30627', "The Savior of Stoneplow", %multiuserquests);
	BNet::Utils::preprint ($count, '30628', "The Gratitude of Stoneplow", %multiuserquests);
	BNet::Utils::preprint ($count, '30653', "It Does You No Good In The Keg <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31312', "The Old Map", %multiuserquests);
	BNet::Utils::preprint ($count, '31313', "Just A Folk Story", %multiuserquests);
	BNet::Utils::preprint ($count, '31314', "Old Man Thistle's Treasure", %multiuserquests);
	BNet::Utils::preprint ($count, '31315', "The Heartland Legacy", %multiuserquests);
	BNet::Utils::preprint ($count, '31320', "Buy A Fish A Drink?", %multiuserquests);
	BNet::Utils::preprint ($count, '31321', "Buy A Fish A Round?", %multiuserquests);
	BNet::Utils::preprint ($count, '31322', "Buy A Fish A Keg?", %multiuserquests);
	BNet::Utils::preprint ($count, '31323', "Buy A Fish A Brewery?", %multiuserquests);
	BNet::Utils::preprint ($count, '31325', "A Very Nice Necklace", %multiuserquests);
	BNet::Utils::preprint ($count, '31326', "Tina's Tasteful Tiara", %multiuserquests);
	BNet::Utils::preprint ($count, '31328', "An Exquisite Earring", %multiuserquests);
	BNet::Utils::preprint ($count, '31329', "A Beautiful Brooch", %multiuserquests);
	BNet::Utils::preprint ($count, '31338', "Lost Sheepie", %multiuserquests);
	BNet::Utils::preprint ($count, '31339', "Lost Sheepie... Again", %multiuserquests);
	BNet::Utils::preprint ($count, '31340', "Oh Sheepie...", %multiuserquests);
	BNet::Utils::preprint ($count, '31341', "A Wolf In Sheep's Clothing", %multiuserquests);
	BNet::Utils::preprint ($count, '31372', "The Tillers <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31374', "The Tillers <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '31529', "Mission: Culling The Vermin", %multiuserquests);
	BNet::Utils::preprint ($count, '31530', "Mission: The Hozen Dozen", %multiuserquests);
	BNet::Utils::preprint ($count, '31531', "Mission: Aerial Threat", %multiuserquests);
	BNet::Utils::preprint ($count, '31532', "Mission: Predator of the Cliffs", %multiuserquests);
	BNet::Utils::preprint ($count, '31534', "The Beginner's Brew", %multiuserquests);
	BNet::Utils::preprint ($count, '31537', "Ella's Taste Test", %multiuserquests);
	BNet::Utils::preprint ($count, '31538', "A Worthy Brew", %multiuserquests);
	BNet::Utils::preprint ($count, '31671', "Why Not Scallions?", %multiuserquests);
	BNet::Utils::preprint ($count, '31936', "The "Jinyu Princess" Irrigation System", %multiuserquests);
	BNet::Utils::preprint ($count, '31937', "Thunder King Pest Repellers", %multiuserquests);
	BNet::Utils::preprint ($count, '31938', "The "Earth-Slasher" Master Plow", %multiuserquests);
	BNet::Utils::preprint ($count, '31945', "Learn and Grow VI: Gina's Vote", %multiuserquests);
	BNet::Utils::preprint ($count, '31946', "Mung-Mung's Vote III: The Great Carrot Caper", %multiuserquests);
	BNet::Utils::preprint ($count, '31947', "Farmer Fung's Vote III: Crazy For Cabbage", %multiuserquests);
	BNet::Utils::preprint ($count, '31948', "Nana's Vote II: The Sacred Springs", %multiuserquests);
	BNet::Utils::preprint ($count, '31949', "Nana's Vote III: Witchberry Julep", %multiuserquests);
	BNet::Utils::preprint ($count, '32018', "His Name Was... Stormstout", %multiuserquests);
	BNet::Utils::preprint ($count, '32019', "They Call Him... Stormstout", %multiuserquests);
	BNet::Utils::preprint ($count, '32035', "Got Silk?", %multiuserquests);
	BNet::Utils::preprint ($count, '32038', "Stag Mastery", %multiuserquests);
	BNet::Utils::preprint ($count, '32045', "Children of the Water", %multiuserquests);
	BNet::Utils::preprint ($count, '32189', "A Shabby New Face", %multiuserquests);
	BNet::Utils::preprint ($count, '32198', "One Magical, Flying Kingdom's Trash...", %multiuserquests);
	BNet::Utils::preprint ($count, '32682', "Inherit the Earth", %multiuserquests);
	BNet::Utils::preprint ($count, '38935', "His Name Was... Stormstout", %multiuserquests);
	BNet::Utils::preprint ($count, '49539', "Warchief's Command: Valley of the Four Winds! <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/horde.png\">", %multiuserquests);
	BNet::Utils::preprint ($count, '49557', "Hero's Call: Valley of the Four Winds! <img class=\"icons\" src=\"https://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);

}

sub z_81_90_Krasarang_Wilds($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("81-90: Krasarang Wilds");

}

sub z_82_90_KunLai_Summit($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("82-90: KunLai Summit");

}

sub z_83_90_Townlong_Steppes($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("83-90: Townlong Steppes");

}

sub z_84_90_Dread_Wastes($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("84-90: Dread Wastes");

}

sub z_85_90_Vale_of_Eternal_Blossoms($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("85-90: Vale of Eternal Blossoms");

}

sub z_85_90_Isle_of_Giants($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("85-90: Isle of Giants");

}

sub z_85_90_Isle_of_Thunder($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("85-90: Isle of Thunder");

}

sub z_85_90_Timeless_Isle($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("85-90: Timeless Isle");

}


1;

