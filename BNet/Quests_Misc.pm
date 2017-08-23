package BNet::Quests_Misc;

use strict;
use warnings;


sub dungeons ($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("Dungeons");
	BNet::Utils::preprint ($count, '12747', "Hero's Call: Northrend! <span class=\"dkimage\"></span>", %multiuserquests);

}


sub warlock_green_fire ($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("Warlock: Green Fire");
	BNet::Utils::preprint ($count, '32295', "An Unusual Tome", %multiuserquests);
	BNet::Utils::preprint ($count, '32307', "Reader for the Dead Tongue", %multiuserquests);
	BNet::Utils::preprint ($count, '32309', "A Tale of Six Masters horde", %multiuserquests);
	BNet::Utils::preprint ($count, '32310', "A Tale of Six Masters alliance", %multiuserquests);
	BNet::Utils::preprint ($count, '32317', "Seeking the Soulstones", %multiuserquests);
	BNet::Utils::preprint ($count, '32324', "Seek the Signal", %multiuserquests);
	BNet::Utils::preprint ($count, '32325', "Infiltrating the Black Temple", %multiuserquests);
	BNet::Utils::preprint ($count, '32340', "Plunder the Black Temple", %multiuserquests);
	BNet::Utils::preprint ($count, '32358', "The Soulcore", %multiuserquests);

}


1;
