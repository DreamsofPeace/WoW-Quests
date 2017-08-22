package BNet::Quests_Mists;

use strict;
use warnings;


sub z_68_72_borean_tundra ($%) {
	my ($count, %multiuserquests) = @_;

	BNet::Utils::groupheader ("68: Borean Tundra: Intro");
	BNet::Utils::preprint ($count, '28709', "Hero's Call: Northrend!  <img src=\"http://wow.zamimg.com/images/icons/alliance.png\">", %multiuserquests);

}

1;
