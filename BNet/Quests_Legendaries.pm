package BNet::Quests_Legendaries;

use strict;
use warnings;


sub legendary_cloak ($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("Legendary Cloak");
	BNet::Utils::groupheader ("Chapter I: Sha Touched Gem");
	BNet::Utils::preprint ($count, '31488', "Stranger in a Strange Land", %multiuserquests);
	BNet::Utils::preprint ($count, '31454', "A Legend in the Making", %multiuserquests);
	BNet::Utils::preprint ($count, '31468', "Trial of the Black Prince", %multiuserquests);
	BNet::Utils::preprint ($count, '31473', "The Strength of One's Foes", %multiuserquests);
	BNet::Utils::preprint ($count, '31481', "Fear Itself", %multiuserquests);
	BNet::Utils::preprint ($count, '31482', "Breath of the Black Prince", %multiuserquests);
	BNet::Utils::groupheader ("Chapter II: Eye of the Black Prince ");
	BNet::Utils::preprint ($count, '31483', "Incoming...", %multiuserquests);
	BNet::Utils::groupheader ("Horde");
	BNet::Utils::preprint ($count, '32427', "The Measure of a Leader", %multiuserquests);
	BNet::Utils::preprint ($count, '32429', "The Prince's Pursuit", %multiuserquests);
	BNet::Utils::preprint ($count, '32476', "A Test of Valor", %multiuserquests);
	BNet::Utils::preprint ($count, '32430', "A Change of Command", %multiuserquests);
	BNet::Utils::preprint ($count, '32431', "Glory to the Horde", %multiuserquests);
	BNet::Utils::preprint ($count, '32432', "The Soul of the Horde", %multiuserquests);
	BNet::Utils::groupheader ("Alliance");
	BNet::Utils::preprint ($count, '32373', "The Measure of a Leader", %multiuserquests);
	BNet::Utils::preprint ($count, '32374', "The Prince's Pursuit", %multiuserquests);
	BNet::Utils::preprint ($count, '32388', "A Change of Command", %multiuserquests);
	BNet::Utils::preprint ($count, '32389', "The Lion Roars", %multiuserquests);
	BNet::Utils::preprint ($count, '32390', "Call of the Packmaster", %multiuserquests);
	BNet::Utils::groupheader ("Chapter III: Legendary Meta-Gem");
	BNet::Utils::preprint ($count, '32590', "Meet Me Upstairs", %multiuserquests);
	BNet::Utils::preprint ($count, '32591', "Secrets of the First Empire", %multiuserquests);
	BNet::Utils::preprint ($count, '32592', "I Need a Champion", %multiuserquests);
	BNet::Utils::preprint ($count, '32593', "The Thunder Forge", %multiuserquests);
	BNet::Utils::preprint ($count, '32594', "Spirit of the Storm Lord", %multiuserquests);
	BNet::Utils::preprint ($count, '32595', "The Crown of Heaven", %multiuserquests);
	BNet::Utils::preprint ($count, '32596', "Echoes of the Titans", %multiuserquests);
	BNet::Utils::preprint ($count, '32597', "Heart of the Thunder King", %multiuserquests);
	BNet::Utils::groupheader ("Chapter IV: Epic Cloak");
	BNet::Utils::preprint ($count, '32598', "A Reckoning", %multiuserquests);
	BNet::Utils::preprint ($count, '32805', "Celestial Blessings", %multiuserquests);
	BNet::Utils::preprint ($count, '32861', "Cloak of Virtue", %multiuserquests);
	BNet::Utils::groupheader ("Chapter V: Legendary Cloak");
	BNet::Utils::preprint ($count, '32870', "Preparing to Strike", %multiuserquests);
	BNet::Utils::preprint ($count, '33087', "Meet Me Back at the Inn", %multiuserquests);
	BNet::Utils::preprint ($count, '33088', "A Timeless Discovery", %multiuserquests);
	BNet::Utils::preprint ($count, '33098', "Secrets of the Timeless Isle", %multiuserquests);
	BNet::Utils::preprint ($count, '33100', "The Emperor's Way", %multiuserquests);
	BNet::Utils::preprint ($count, '33104', "A Pandaren Legend", %multiuserquests);
	BNet::Utils::preprint ($count, '33105', "Judgment of the Black Prince", %multiuserquests);

}


sub legendary_thunderfury ($%) {
	my ($count, %multiuserquests) = @_;
	BNet::Utils::groupheader ("Thunderfury");
	BNet::Utils::preprint ($count, '7785', "Examine the Vessel", %multiuserquests);
	BNet::Utils::preprint ($count, '7786', "Thunderaan the Windseeker", %multiuserquests);
	BNet::Utils::preprint ($count, '7787', "Rise, Thunderfury!", %multiuserquests);

}



sub legendary_ring ($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("Legendary Ring");
	BNet::Utils::groupheader ("Chapter I: Call of the Archmage");
	BNet::Utils::preprint ($count, '39018', "Call of the Archmage", %multiuserquests);
	BNet::Utils::preprint ($count, '36157', "Spires of the Betrayer", %multiuserquests);
	BNet::Utils::preprint ($count, '35989', "Khadgar's Task", %multiuserquests);
	BNet::Utils::preprint ($count, '35990', "Core of Flame", %multiuserquests);
	BNet::Utils::preprint ($count, '35991', "Core of Iron", %multiuserquests);
	BNet::Utils::preprint ($count, '35992', "Core of Life", %multiuserquests);
	BNet::Utils::preprint ($count, '36158', "Draenor's Secret Power", %multiuserquests);
	BNet::Utils::preprint ($count, '35993', "Tackling Teron'gor", %multiuserquests);
	BNet::Utils::preprint ($count, '36000', "Fugitive Dragon", %multiuserquests);
	BNet::Utils::preprint ($count, '36004', "Power Unleashed", %multiuserquests);
	BNet::Utils::groupheader ("Chapter II: Gul'dan Strikes Back");
	BNet::Utils::preprint ($count, '35997', "Empire's Fall", %multiuserquests);
	BNet::Utils::preprint ($count, '35998', "Legacy of the Sorcerer Kings", %multiuserquests);
	BNet::Utils::preprint ($count, '36005', "The Scrying Game", %multiuserquests);
	BNet::Utils::preprint ($count, '36006', "Hunter: Hunted", %multiuserquests);
	BNet::Utils::preprint ($count, '36007', "Touch of the Kirin-Tor", %multiuserquests);
	BNet::Utils::groupheader ("Chapter III: The Foundry Falls");
	BNet::Utils::preprint ($count, '36013', "Might of the Elemental Lords", %multiuserquests);
	BNet::Utils::preprint ($count, '36009', "Heart of the Fury", %multiuserquests);
	BNet::Utils::preprint ($count, '36010', "Flamebender's Tome", %multiuserquests);
	BNet::Utils::preprint ($count, '36012', "Reverse Piracy", %multiuserquests);
	BNet::Utils::preprint ($count, '36016', "The Unbroken Circle", %multiuserquests);
	BNet::Utils::groupheader ("Chapter IV: Darkness Incarnate");
	BNet::Utils::preprint ($count, '36014', "Blackhand's Secret", %multiuserquests);
	BNet::Utils::preprint ($count, '36017', "Prisoner of the Mind", %multiuserquests);
	BNet::Utils::preprint ($count, '37835', "The Shadow War", %multiuserquests);
	BNet::Utils::preprint ($count, '37834', "Orb of Dominion", %multiuserquests);
	BNet::Utils::preprint ($count, '37836', "Breaking Badness", %multiuserquests);
	BNet::Utils::preprint ($count, '37964', "To Gul'dan!", %multiuserquests);
	BNet::Utils::preprint ($count, '37837', "An Inside Job", %multiuserquests);
	BNet::Utils::preprint ($count, '37838', "My Garona", %multiuserquests);
	BNet::Utils::preprint ($count, '37841', "The Final Assault", %multiuserquests);
	BNet::Utils::preprint ($count, '39057', "Command of the Seas", %multiuserquests);
	BNet::Utils::preprint ($count, '39697', "Master vs. Commander", %multiuserquests);
	BNet::Utils::preprint ($count, '39000', "We Don't Need No Library Card", %multiuserquests);
	BNet::Utils::preprint ($count, '39003', "Cooking the Books", %multiuserquests);
	BNet::Utils::preprint ($count, '37839', "Light Be With You (Alliance)", %multiuserquests);
	BNet::Utils::preprint ($count, '37840', "Draenor's Blessing (Horde)", %multiuserquests);
	BNet::Utils::preprint ($count, '39004', "Darkness Incarnate", %multiuserquests);


}

1;
