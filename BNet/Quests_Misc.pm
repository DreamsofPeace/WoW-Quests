package BNet::Quests_Misc;

use strict;
use warnings;


sub dungeons ($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("Dungeons");
	BNet::Utils::preprint ($count, '12747', "Hero's Call: Northrend! <span class=\"dkimage\"></span>", %multiuserquests);

}

1;
