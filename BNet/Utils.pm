package BNet::Utils;

use strict;
use warnings;
use JSON;
use LWP::Simple;
use Data::Dumper;

sub downloadinfo($$$$) {
	my ($character, $server, $field, $apikey) = @_;
	my $retrievedinfo = BNet::Utils::apiget($character, $server, $field, $apikey);
	return $retrievedinfo;
}

sub apiget ($$$$){
	my ($character, $server, $field, $apikey) = @_;
	my $definedurl = "https://us.api.battle.net/wow/character/" . $server . "/" . $character . "?fields=" . $field . "&apikey=" . $apikey;
	my $url = get($definedurl);
	die "Couldn't get it! $character $server" unless defined $url;

	my $decoded = decode_json($url);
	return $decoded;
}

sub tableprint ($) {
	my ($decoded) = @_;
	
	if ($decoded eq 'begintable') {
		print "\t<table>\n";
	} elsif ($decoded eq 'endtable') {
		print "\t</table>\n";
	} elsif ($decoded eq 'beginrow') {
		print "\t\t<tr>\n";
	} elsif ($decoded eq 'endrow') {
		print "\t\t</tr>\n";
	} elsif ($decoded eq 'begintd') {
		print "\t\t<td>\n";
	} elsif ($decoded eq 'begintddk') {
		print "\t\t<td class=\"Death-Knight\">\n";
	} elsif ($decoded eq 'begintddh') {
		print "\t\t<td class=\"Demon-Hunter\">\n";
	} elsif ($decoded eq 'begintddr') {
		print "\t\t<td class=\"Druid\">\n";
	} elsif ($decoded eq 'begintdhr') {
		print "\t\t<td class=\"Hunter\">\n";
	} elsif ($decoded eq 'begintdmg') {
		print "\t\t<td class=\"Mage\">\n";
	} elsif ($decoded eq 'begintdmo') {
		print "\t\t<td class=\"Monk\">\n";
	} elsif ($decoded eq 'begintdpa') {
		print "\t\t<td class=\"Paladin\">\n";
	} elsif ($decoded eq 'begintdpr') {
		print "\t\t<td class=\"Priest\">\n";
	} elsif ($decoded eq 'begintdro') {
		print "\t\t<td class=\"Rogue\">\n";
	} elsif ($decoded eq 'begintdsh') {
		print "\t\t<td class=\"Shaman\">\n";
	} elsif ($decoded eq 'begintdwl') {
		print "\t\t<td class=\"Warlock\">\n";
	} elsif ($decoded eq 'begintdwr') {
		print "\t\t<td class=\"Warrior\">\n";
	} elsif ($decoded eq 'begintdcomplete') {
		print "\t\t<td class=\"Complete\">\n";
	} elsif ($decoded eq 'begintdincomplete') {
		print "\t\t<td class=\"Incomplete\">\n";
	} elsif ($decoded eq 'endtd') {
		print "\t\t</td>\n";
	} elsif ($decoded eq 'beginth') {
		print "\t\t<th>\n";
	} elsif ($decoded eq 'endth') {
		print "\t\t</th>\n";
	} elsif ($decoded eq 'thbeginspan') {
		print "\t\t<th colspan=\"17\">\n";
	} elsif ($decoded eq 'begintdhated') {
		print "\t\t<td class=\"hated\">\n";
	} elsif ($decoded eq 'begintdhostile') {
		print "\t\t<td class=\"hostile\">\n";
	} elsif ($decoded eq 'begintdunfriendly') {
		print "\t\t<td class=\"unfriendly\">\n";
	} elsif ($decoded eq 'begintdneutral') {
		print "\t\t<td class=\"neutral\">\n";
	} elsif ($decoded eq 'begintdfriendly') {
		print "\t\t<td class=\"friendly\">\n";
	} elsif ($decoded eq 'begintdhonoured') {
		print "\t\t<td class=\"honoured\">\n";
	} elsif ($decoded eq 'begintdrevered') {
		print "\t\t<td class=\"revered\">\n";
	} elsif ($decoded eq 'begintdexalted') {
		print "\t\t<td class=\"exalted\">\n";
	} elsif ($decoded eq 'begintdblackout') {
		print "\t\t<td class=\"blackout\">\n";
	}
}

sub determineclass ($) {
	my ($decoded) = @_;
#	print $decoded->{'level'} . "&nbsp;";
	my $class;

	if ($decoded->{'class'} == 1) {
		#"Warrior";
		$class ="begintdwr";
	} elsif ($decoded->{'class'} == 2) {
		#"Paladin";
		$class ="begintdpa";
	} elsif ($decoded->{'class'} == 3) {
		$class ="begintdhr";
	} elsif ($decoded->{'class'} == 4) {
		#"Rogue";
		$class ="begintdro";
	} elsif ($decoded->{'class'} == 5) {
		#"Priest";
		$class ="begintdpr";
	} elsif ($decoded->{'class'} == 6) {
		$class ="begintddk";
	} elsif ($decoded->{'class'} == 7) {
		#"Shaman";
		$class ="begintdsh";
	} elsif ($decoded->{'class'} == 8) {
		$class ="begintdmg";
	} elsif ($decoded->{'class'} == 9) {
		#"Warlock";
		$class ="begintdwl";
	} elsif ($decoded->{'class'} == 10) {
		$class ="begintdmo";
	} elsif ($decoded->{'class'} == 11) {
		$class ="begintddr";
	} elsif ($decoded->{'class'} == 12) {
		$class ="begintddh";
	}
	return $class;
}

sub determinegender ($) {
	my ($decoded) = @_;
	if ($decoded->{'gender'} == 1) {
		print "Female";
	} else {
		print "Male";
	}
}

sub retrieveail ($) {
	my ($decoded) = @_;
	my $class = $decoded->{'items'}->{'averageItemLevelEquipped'};
	return $class;
}

sub determinerace ($) {
	my ($decoded) = @_;
	
	if ($decoded->{'race'} == 1) {
		print "Human&nbsp;";
	} elsif ($decoded->{'race'} == 2) {
		print "Orc&nbsp;";
	} elsif ($decoded->{'race'} == 3) {
		print "Dwarf&nbsp;";
	} elsif ($decoded->{'race'} == 4) {
		print "Night Elf&nbsp;";
	} elsif ($decoded->{'race'} == 5) {
		print "Undead&nbsp;";
	} elsif ($decoded->{'race'} == 6) {
		print "Tauren&nbsp;";
	} elsif ($decoded->{'race'} == 7) {
		print "Gnome&nbsp;";
	} elsif ($decoded->{'race'} == 8) {
		print "Troll&nbsp;";
	} elsif ($decoded->{'race'} == 9) {
		print "Goblin&nbsp;";
	} elsif ($decoded->{'race'} == 10) {
		print "Blood Elf&nbsp;";
	} elsif ($decoded->{'race'} == 11) {
		print "Draenei&nbsp;";
	} elsif ($decoded->{'race'} == 22) {
		print "Worgen&nbsp;";
	} elsif ($decoded->{'race'} == 24) {
		print "Pandaren&nbsp;";
	} elsif ($decoded->{'race'} == 25) {
		print "Pandaren&nbsp;";
	} elsif ($decoded->{'race'} == 26) {
		print "Pandaren&nbsp;";
	}

}

sub printcharacter($$$) {
	my ($server, $char, $ail) = @_;
	chomp $server;
	chomp $char;
	chomp $ail;
	my $url = "https://worldofwarcraft.com/en-us/character/" . $server . "/" . $char . "/";
#	print "\t\t\t\t$columns[0]\n";
#	print "\t\t\t\t</br>\n";
#	print "\t\t\t\t$columns[1]\n";
	print "\n\t\t\t\t<div><a href=\"";
	print $url;
	print "\">";
	print $char;
	print "</a>";
	print "</div>\n\t\t\t\t<div>";
	print $server;
	print "</div>\n\t\t\t\t<div>";
	print $ail;
	print "</div>\n";
	
}

sub percharachievementscriteria ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'achievements'}{'criteria'} };
	return @raids;
}

sub percharachievementscriteriaquantity ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'achievements'}{'criteriaQuantity'} };
	return @raids;
}

sub percharrecipesalchemy ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'professions'}{'primary'} };
	my $cookrank;
	my $cookmax;
	my @cookrecipes;
	foreach my $f ( @raids ) {
		if ($f->{"id"} == 171) {
			$cookrank = $f->{'rank'};
			$cookmax = $f->{'max'};
			foreach my $e (@{$f->{'recipes'}}) {
				push @cookrecipes, $e;
			}
		}
	}
	return $cookrank, @cookrecipes;
}

sub percharrecipesblacksmithing ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'professions'}{'primary'} };
	my $cookrank;
	my $cookmax;
	my @cookrecipes;
	foreach my $f ( @raids ) {
		if ($f->{"id"} == 164) {
			$cookrank = $f->{'rank'};
			$cookmax = $f->{'max'};
			foreach my $e (@{$f->{'recipes'}}) {
				push @cookrecipes, $e;
			}
		}
	}
	return $cookrank, @cookrecipes;
}

sub percharrecipesenchanting ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'professions'}{'primary'} };
	my $cookrank;
	my $cookmax;
	my @cookrecipes;
	foreach my $f ( @raids ) {
		if ($f->{"id"} == 333) {
			$cookrank = $f->{'rank'};
			$cookmax = $f->{'max'};
			foreach my $e (@{$f->{'recipes'}}) {
				push @cookrecipes, $e;
			}
		}
	}
	return $cookrank, @cookrecipes;
}

sub percharrecipesengineering ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'professions'}{'primary'} };
	my $cookrank;
	my $cookmax;
	my @cookrecipes;
	foreach my $f ( @raids ) {
		if ($f->{"id"} == 202) {
			$cookrank = $f->{'rank'};
			$cookmax = $f->{'max'};
			foreach my $e (@{$f->{'recipes'}}) {
				push @cookrecipes, $e;
			}
		}
	}
	return $cookrank, @cookrecipes;
}

sub percharrecipesherbalism ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'professions'}{'primary'} };
	my $cookrank;
	my $cookmax;
	my @cookrecipes;
	foreach my $f ( @raids ) {
		if ($f->{"id"} == 182) {
			$cookrank = $f->{'rank'};
			$cookmax = $f->{'max'};
			foreach my $e (@{$f->{'recipes'}}) {
				push @cookrecipes, $e;
			}
		}
	}
	return $cookrank, @cookrecipes;
}

sub percharrecipesinscription ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'professions'}{'primary'} };
	my $cookrank;
	my $cookmax;
	my @cookrecipes;
	foreach my $f ( @raids ) {
		if ($f->{"id"} == 773) {
			$cookrank = $f->{'rank'};
			$cookmax = $f->{'max'};
			foreach my $e (@{$f->{'recipes'}}) {
				push @cookrecipes, $e;
			}
		}
	}
	return $cookrank, @cookrecipes;
}

sub percharrecipesjewelcrafting ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'professions'}{'primary'} };
	my $cookrank;
	my $cookmax;
	my @cookrecipes;
	foreach my $f ( @raids ) {
		if ($f->{"id"} == 755) {
			$cookrank = $f->{'rank'};
			$cookmax = $f->{'max'};
			foreach my $e (@{$f->{'recipes'}}) {
				push @cookrecipes, $e;
			}
		}
	}
	return $cookrank, @cookrecipes;
}

sub percharrecipesmining ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'professions'}{'primary'} };
	my $cookrank;
	my $cookmax;
	my @cookrecipes;
	foreach my $f ( @raids ) {
		if ($f->{"id"} == 186) {
			$cookrank = $f->{'rank'};
			$cookmax = $f->{'max'};
			foreach my $e (@{$f->{'recipes'}}) {
				push @cookrecipes, $e;
			}
		}
	}
	return $cookrank, @cookrecipes;
}

sub percharrecipesleatherworking ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'professions'}{'primary'} };
	my $cookrank;
	my $cookmax;
	my @cookrecipes;
	foreach my $f ( @raids ) {
		if ($f->{"id"} == 165) {
			$cookrank = $f->{'rank'};
			$cookmax = $f->{'max'};
			foreach my $e (@{$f->{'recipes'}}) {
				push @cookrecipes, $e;
			}
		}
	}
	return $cookrank, @cookrecipes;
}

sub percharrecipesskinning ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'professions'}{'primary'} };
	my $cookrank;
	my $cookmax;
	my @cookrecipes;
	foreach my $f ( @raids ) {
		if ($f->{"id"} == 393) {
			$cookrank = $f->{'rank'};
			$cookmax = $f->{'max'};
			foreach my $e (@{$f->{'recipes'}}) {
				push @cookrecipes, $e;
			}
		}
	}
	return $cookrank, @cookrecipes;
}

sub percharrecipestailoring ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'professions'}{'primary'} };
	my $cookrank;
	my $cookmax;
	my @cookrecipes;
	foreach my $f ( @raids ) {
		if ($f->{"id"} == 197) {
			$cookrank = $f->{'rank'};
			$cookmax = $f->{'max'};
			foreach my $e (@{$f->{'recipes'}}) {
				push @cookrecipes, $e;
			}
		}
	}
	return $cookrank, @cookrecipes;
}

sub percharrecipescooking ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'professions'}{'secondary'} };
	my $cookrank;
	my $cookmax;
	my @cookrecipes;
	foreach my $f ( @raids ) {
		if ($f->{"id"} == 185) {
			$cookrank = $f->{'rank'};
			$cookmax = $f->{'max'};
			foreach my $e (@{$f->{'recipes'}}) {
				push @cookrecipes, $e;
			}
		}
	}
#	return $cookrank, $cookmax, @cookrecipes;
	return $cookrank, @cookrecipes;
}

sub percharrecipesarchaeology ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'professions'}{'secondary'} };
	my $cookrank;
	my $cookmax;
	my @cookrecipes;
	foreach my $f ( @raids ) {
		if ($f->{"id"} == 794) {
			$cookrank = $f->{'rank'};
			$cookmax = $f->{'max'};
			foreach my $e (@{$f->{'recipes'}}) {
				push @cookrecipes, $e;
			}
		}
	}
	return $cookrank, @cookrecipes;
}

sub percharrecipesfishing ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'professions'}{'secondary'} };
	my $cookrank;
	my $cookmax;
	my @cookrecipes;
	foreach my $f ( @raids ) {
		if ($f->{"id"} == 356) {
			$cookrank = $f->{'rank'};
			$cookmax = $f->{'max'};
			foreach my $e (@{$f->{'recipes'}}) {
				push @cookrecipes, $e;
			}
		}
	}
	return $cookrank, @cookrecipes;
}

sub percharquests ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'quests'} };
	return @raids;
}

sub preprint ($$$%) {
	my ($count, $qid, $ql, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/quest=" . $qid . "\" rel=\"quest=" . $qid . "\">" . $ql ."</a>";
#	print $wowheadurl;
	$qc{zero} = $multiuserquests{0}{$qid};
	$qc{one} = $multiuserquests{1}{$qid};
	$qc{two} = $multiuserquests{2}{$qid};
	$qc{three} = $multiuserquests{3}{$qid};
	$qc{four} = $multiuserquests{4}{$qid};
	$qc{five} = $multiuserquests{5}{$qid};
	$qc{six} = $multiuserquests{6}{$qid};
	$qc{seven} = $multiuserquests{7}{$qid};
	$qc{eight} = $multiuserquests{8}{$qid};
	$qc{nine} = $multiuserquests{9}{$qid};
	$qc{ten} = $multiuserquests{10}{$qid};
	$qc{eleven} = $multiuserquests{11}{$qid};
	$qc{twelve} = $multiuserquests{12}{$qid};
	$qc{thirteen} = $multiuserquests{13}{$qid};
	$qc{fourteen} = $multiuserquests{14}{$qid};
	$qc{fifteen} = $multiuserquests{15}{$qid};
	valueprint ($count, $wowheadurl, %qc);
}

sub preprintprofalchemy ($$$$%) {
	my ($count, $qid, $ql, $qic, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/spell=" . $qid . "\" rel=\"spell=" . $qid . "\">" . $ql ."</a>";
	$qc{zero} = $multiuserquests{0}{alchemy}{$qid};
	$qc{one} = $multiuserquests{1}{alchemy}{$qid};
	$qc{two} = $multiuserquests{2}{alchemy}{$qid};
	$qc{three} = $multiuserquests{3}{alchemy}{$qid};
	$qc{four} = $multiuserquests{4}{alchemy}{$qid};
	$qc{five} = $multiuserquests{5}{alchemy}{$qid};
	$qc{six} = $multiuserquests{6}{alchemy}{$qid};
	$qc{seven} = $multiuserquests{7}{alchemy}{$qid};
	$qc{eight} = $multiuserquests{8}{alchemy}{$qid};
	$qc{nine} = $multiuserquests{9}{alchemy}{$qid};
	$qc{ten} = $multiuserquests{10}{alchemy}{$qid};
	$qc{eleven} = $multiuserquests{11}{alchemy}{$qid};
	$qc{twelve} = $multiuserquests{12}{alchemy}{$qid};
	$qc{thirteen} = $multiuserquests{13}{alchemy}{$qid};
	$qc{fourteen} = $multiuserquests{14}{alchemy}{$qid};
	$qc{fifteen} = $multiuserquests{15}{alchemy}{$qid};
	valueprint ($count, $wowheadurl, %qc);
}

sub preprintprofblacksmithing ($$$$%) {
	my ($count, $qid, $ql, $qic, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/spell=" . $qid . "\" rel=\"spell=" . $qid . "\">" . $ql ."</a>";
	$qc{zero} = $multiuserquests{0}{blacksmithing}{$qid};
	$qc{one} = $multiuserquests{1}{blacksmithing}{$qid};
	$qc{two} = $multiuserquests{2}{blacksmithing}{$qid};
	$qc{three} = $multiuserquests{3}{blacksmithing}{$qid};
	$qc{four} = $multiuserquests{4}{blacksmithing}{$qid};
	$qc{five} = $multiuserquests{5}{blacksmithing}{$qid};
	$qc{six} = $multiuserquests{6}{blacksmithing}{$qid};
	$qc{seven} = $multiuserquests{7}{blacksmithing}{$qid};
	$qc{eight} = $multiuserquests{8}{blacksmithing}{$qid};
	$qc{nine} = $multiuserquests{9}{blacksmithing}{$qid};
	$qc{ten} = $multiuserquests{10}{blacksmithing}{$qid};
	$qc{eleven} = $multiuserquests{11}{blacksmithing}{$qid};
	$qc{twelve} = $multiuserquests{12}{blacksmithing}{$qid};
	$qc{thirteen} = $multiuserquests{13}{blacksmithing}{$qid};
	$qc{fourteen} = $multiuserquests{14}{blacksmithing}{$qid};
	$qc{fifteen} = $multiuserquests{15}{blacksmithing}{$qid};
	valueprint ($count, $wowheadurl, %qc);
}

sub preprintprofenchanting ($$$$%) {
	my ($count, $qid, $ql, $qic, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/spell=" . $qid . "\" rel=\"spell=" . $qid . "\">" . $ql ."</a>";
	$qc{zero} = $multiuserquests{0}{enchanting}{$qid};
	$qc{one} = $multiuserquests{1}{enchanting}{$qid};
	$qc{two} = $multiuserquests{2}{enchanting}{$qid};
	$qc{three} = $multiuserquests{3}{enchanting}{$qid};
	$qc{four} = $multiuserquests{4}{enchanting}{$qid};
	$qc{five} = $multiuserquests{5}{enchanting}{$qid};
	$qc{six} = $multiuserquests{6}{enchanting}{$qid};
	$qc{seven} = $multiuserquests{7}{enchanting}{$qid};
	$qc{eight} = $multiuserquests{8}{enchanting}{$qid};
	$qc{nine} = $multiuserquests{9}{enchanting}{$qid};
	$qc{ten} = $multiuserquests{10}{enchanting}{$qid};
	$qc{eleven} = $multiuserquests{11}{enchanting}{$qid};
	$qc{twelve} = $multiuserquests{12}{enchanting}{$qid};
	$qc{thirteen} = $multiuserquests{13}{enchanting}{$qid};
	$qc{fourteen} = $multiuserquests{14}{enchanting}{$qid};
	$qc{fifteen} = $multiuserquests{15}{enchanting}{$qid};
	valueprint ($count, $wowheadurl, %qc);
}

sub preprintprofengineering ($$$$%) {
	my ($count, $qid, $ql, $qic, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/spell=" . $qid . "\" rel=\"spell=" . $qid . "\">" . $ql ."</a>";
	$qc{zero} = $multiuserquests{0}{engineering}{$qid};
	$qc{one} = $multiuserquests{1}{engineering}{$qid};
	$qc{two} = $multiuserquests{2}{engineering}{$qid};
	$qc{three} = $multiuserquests{3}{engineering}{$qid};
	$qc{four} = $multiuserquests{4}{engineering}{$qid};
	$qc{five} = $multiuserquests{5}{engineering}{$qid};
	$qc{six} = $multiuserquests{6}{engineering}{$qid};
	$qc{seven} = $multiuserquests{7}{engineering}{$qid};
	$qc{eight} = $multiuserquests{8}{engineering}{$qid};
	$qc{nine} = $multiuserquests{9}{engineering}{$qid};
	$qc{ten} = $multiuserquests{10}{engineering}{$qid};
	$qc{eleven} = $multiuserquests{11}{engineering}{$qid};
	$qc{twelve} = $multiuserquests{12}{engineering}{$qid};
	$qc{thirteen} = $multiuserquests{13}{engineering}{$qid};
	$qc{fourteen} = $multiuserquests{14}{engineering}{$qid};
	$qc{fifteen} = $multiuserquests{15}{engineering}{$qid};
	valueprint ($count, $wowheadurl, %qc);
}

sub preprintprofinscription ($$$$%) {
	my ($count, $qid, $ql, $qic, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/spell=" . $qid . "\" rel=\"spell=" . $qid . "\">" . $ql ."</a>";
	$qc{zero} = $multiuserquests{0}{inscription}{$qid};
	$qc{one} = $multiuserquests{1}{inscription}{$qid};
	$qc{two} = $multiuserquests{2}{inscription}{$qid};
	$qc{three} = $multiuserquests{3}{inscription}{$qid};
	$qc{four} = $multiuserquests{4}{inscription}{$qid};
	$qc{five} = $multiuserquests{5}{inscription}{$qid};
	$qc{six} = $multiuserquests{6}{inscription}{$qid};
	$qc{seven} = $multiuserquests{7}{inscription}{$qid};
	$qc{eight} = $multiuserquests{8}{inscription}{$qid};
	$qc{nine} = $multiuserquests{9}{inscription}{$qid};
	$qc{ten} = $multiuserquests{10}{inscription}{$qid};
	$qc{eleven} = $multiuserquests{11}{inscription}{$qid};
	$qc{twelve} = $multiuserquests{12}{inscription}{$qid};
	$qc{thirteen} = $multiuserquests{13}{inscription}{$qid};
	$qc{fourteen} = $multiuserquests{14}{inscription}{$qid};
	$qc{fifteen} = $multiuserquests{15}{inscription}{$qid};
	valueprint ($count, $wowheadurl, %qc);
}

sub preprintprofjewelcrafting ($$$$%) {
	my ($count, $qid, $ql, $qic, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/spell=" . $qid . "\" rel=\"spell=" . $qid . "\">" . $ql ."</a>";
	$qc{zero} = $multiuserquests{0}{jewelcrafting}{$qid};
	$qc{one} = $multiuserquests{1}{jewelcrafting}{$qid};
	$qc{two} = $multiuserquests{2}{jewelcrafting}{$qid};
	$qc{three} = $multiuserquests{3}{jewelcrafting}{$qid};
	$qc{four} = $multiuserquests{4}{jewelcrafting}{$qid};
	$qc{five} = $multiuserquests{5}{jewelcrafting}{$qid};
	$qc{six} = $multiuserquests{6}{jewelcrafting}{$qid};
	$qc{seven} = $multiuserquests{7}{jewelcrafting}{$qid};
	$qc{eight} = $multiuserquests{8}{jewelcrafting}{$qid};
	$qc{nine} = $multiuserquests{9}{jewelcrafting}{$qid};
	$qc{ten} = $multiuserquests{10}{jewelcrafting}{$qid};
	$qc{eleven} = $multiuserquests{11}{jewelcrafting}{$qid};
	$qc{twelve} = $multiuserquests{12}{jewelcrafting}{$qid};
	$qc{thirteen} = $multiuserquests{13}{jewelcrafting}{$qid};
	$qc{fourteen} = $multiuserquests{14}{jewelcrafting}{$qid};
	$qc{fifteen} = $multiuserquests{15}{jewelcrafting}{$qid};
	valueprint ($count, $wowheadurl, %qc);
}

sub preprintprofleatherworking ($$$$%) {
	my ($count, $qid, $ql, $qic, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/spell=" . $qid . "\" rel=\"spell=" . $qid . "\">" . $ql ."</a>";
	$qc{zero} = $multiuserquests{0}{leatherworking}{$qid};
	$qc{one} = $multiuserquests{1}{leatherworking}{$qid};
	$qc{two} = $multiuserquests{2}{leatherworking}{$qid};
	$qc{three} = $multiuserquests{3}{leatherworking}{$qid};
	$qc{four} = $multiuserquests{4}{leatherworking}{$qid};
	$qc{five} = $multiuserquests{5}{leatherworking}{$qid};
	$qc{six} = $multiuserquests{6}{leatherworking}{$qid};
	$qc{seven} = $multiuserquests{7}{leatherworking}{$qid};
	$qc{eight} = $multiuserquests{8}{leatherworking}{$qid};
	$qc{nine} = $multiuserquests{9}{leatherworking}{$qid};
	$qc{ten} = $multiuserquests{10}{leatherworking}{$qid};
	$qc{eleven} = $multiuserquests{11}{leatherworking}{$qid};
	$qc{twelve} = $multiuserquests{12}{leatherworking}{$qid};
	$qc{thirteen} = $multiuserquests{13}{leatherworking}{$qid};
	$qc{fourteen} = $multiuserquests{14}{leatherworking}{$qid};
	$qc{fifteen} = $multiuserquests{15}{leatherworking}{$qid};
	valueprint ($count, $wowheadurl, %qc);
}

sub preprintproftailoring ($$$$%) {
	my ($count, $qid, $ql, $qic, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/spell=" . $qid . "\" rel=\"spell=" . $qid . "\">" . $ql ."</a>";
	$qc{zero} = $multiuserquests{0}{tailoring}{$qid};
	$qc{one} = $multiuserquests{1}{tailoring}{$qid};
	$qc{two} = $multiuserquests{2}{tailoring}{$qid};
	$qc{three} = $multiuserquests{3}{tailoring}{$qid};
	$qc{four} = $multiuserquests{4}{tailoring}{$qid};
	$qc{five} = $multiuserquests{5}{tailoring}{$qid};
	$qc{six} = $multiuserquests{6}{tailoring}{$qid};
	$qc{seven} = $multiuserquests{7}{tailoring}{$qid};
	$qc{eight} = $multiuserquests{8}{tailoring}{$qid};
	$qc{nine} = $multiuserquests{9}{tailoring}{$qid};
	$qc{ten} = $multiuserquests{10}{tailoring}{$qid};
	$qc{eleven} = $multiuserquests{11}{tailoring}{$qid};
	$qc{twelve} = $multiuserquests{12}{tailoring}{$qid};
	$qc{thirteen} = $multiuserquests{13}{tailoring}{$qid};
	$qc{fourteen} = $multiuserquests{14}{tailoring}{$qid};
	$qc{fifteen} = $multiuserquests{15}{tailoring}{$qid};
	valueprint ($count, $wowheadurl, %qc);
}

sub preprintprofherbalism ($$$$%) {
	my ($count, $qid, $ql, $qic, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/spell=" . $qid . "\" rel=\"spell=" . $qid . "\">" . $ql ."</a>";
	$qc{zero} = $multiuserquests{0}{herbalism}{$qid};
	$qc{one} = $multiuserquests{1}{herbalism}{$qid};
	$qc{two} = $multiuserquests{2}{herbalism}{$qid};
	$qc{three} = $multiuserquests{3}{herbalism}{$qid};
	$qc{four} = $multiuserquests{4}{herbalism}{$qid};
	$qc{five} = $multiuserquests{5}{herbalism}{$qid};
	$qc{six} = $multiuserquests{6}{herbalism}{$qid};
	$qc{seven} = $multiuserquests{7}{herbalism}{$qid};
	$qc{eight} = $multiuserquests{8}{herbalism}{$qid};
	$qc{nine} = $multiuserquests{9}{herbalism}{$qid};
	$qc{ten} = $multiuserquests{10}{herbalism}{$qid};
	$qc{eleven} = $multiuserquests{11}{herbalism}{$qid};
	$qc{twelve} = $multiuserquests{12}{herbalism}{$qid};
	$qc{thirteen} = $multiuserquests{13}{herbalism}{$qid};
	$qc{fourteen} = $multiuserquests{14}{herbalism}{$qid};
	$qc{fifteen} = $multiuserquests{15}{herbalism}{$qid};
	valueprint ($count, $wowheadurl, %qc);
}

sub preprintprofmining ($$$$%) {
	my ($count, $qid, $ql, $qic, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/spell=" . $qid . "\" rel=\"spell=" . $qid . "\">" . $ql ."</a>";
	$qc{zero} = $multiuserquests{0}{mining}{$qid};
	$qc{one} = $multiuserquests{1}{mining}{$qid};
	$qc{two} = $multiuserquests{2}{mining}{$qid};
	$qc{three} = $multiuserquests{3}{mining}{$qid};
	$qc{four} = $multiuserquests{4}{mining}{$qid};
	$qc{five} = $multiuserquests{5}{mining}{$qid};
	$qc{six} = $multiuserquests{6}{mining}{$qid};
	$qc{seven} = $multiuserquests{7}{mining}{$qid};
	$qc{eight} = $multiuserquests{8}{mining}{$qid};
	$qc{nine} = $multiuserquests{9}{mining}{$qid};
	$qc{ten} = $multiuserquests{10}{mining}{$qid};
	$qc{eleven} = $multiuserquests{11}{mining}{$qid};
	$qc{twelve} = $multiuserquests{12}{mining}{$qid};
	$qc{thirteen} = $multiuserquests{13}{mining}{$qid};
	$qc{fourteen} = $multiuserquests{14}{mining}{$qid};
	$qc{fifteen} = $multiuserquests{15}{mining}{$qid};
	valueprint ($count, $wowheadurl, %qc);
}

sub preprintprofskinning ($$$$%) {
	my ($count, $qid, $ql, $qic, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/spell=" . $qid . "\" rel=\"spell=" . $qid . "\">" . $ql ."</a>";
	$qc{zero} = $multiuserquests{0}{skinning}{$qid};
	$qc{one} = $multiuserquests{1}{skinning}{$qid};
	$qc{two} = $multiuserquests{2}{skinning}{$qid};
	$qc{three} = $multiuserquests{3}{skinning}{$qid};
	$qc{four} = $multiuserquests{4}{skinning}{$qid};
	$qc{five} = $multiuserquests{5}{skinning}{$qid};
	$qc{six} = $multiuserquests{6}{skinning}{$qid};
	$qc{seven} = $multiuserquests{7}{skinning}{$qid};
	$qc{eight} = $multiuserquests{8}{skinning}{$qid};
	$qc{nine} = $multiuserquests{9}{skinning}{$qid};
	$qc{ten} = $multiuserquests{10}{skinning}{$qid};
	$qc{eleven} = $multiuserquests{11}{skinning}{$qid};
	$qc{twelve} = $multiuserquests{12}{skinning}{$qid};
	$qc{thirteen} = $multiuserquests{13}{skinning}{$qid};
	$qc{fourteen} = $multiuserquests{14}{skinning}{$qid};
	$qc{fifteen} = $multiuserquests{15}{skinning}{$qid};
	valueprint ($count, $wowheadurl, %qc);
}

sub preprintprofcooking ($$$$%) {
	my ($count, $qid, $ql, $qic, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/spell=" . $qid . "\" rel=\"spell=" . $qid . "\">" . $ql ."</a>";
	$qc{zero} = $multiuserquests{0}{cooking}{$qid};
	$qc{one} = $multiuserquests{1}{cooking}{$qid};
	$qc{two} = $multiuserquests{2}{cooking}{$qid};
	$qc{three} = $multiuserquests{3}{cooking}{$qid};
	$qc{four} = $multiuserquests{4}{cooking}{$qid};
	$qc{five} = $multiuserquests{5}{cooking}{$qid};
	$qc{six} = $multiuserquests{6}{cooking}{$qid};
	$qc{seven} = $multiuserquests{7}{cooking}{$qid};
	$qc{eight} = $multiuserquests{8}{cooking}{$qid};
	$qc{nine} = $multiuserquests{9}{cooking}{$qid};
	$qc{ten} = $multiuserquests{10}{cooking}{$qid};
	$qc{eleven} = $multiuserquests{11}{cooking}{$qid};
	$qc{twelve} = $multiuserquests{12}{cooking}{$qid};
	$qc{thirteen} = $multiuserquests{13}{cooking}{$qid};
	$qc{fourteen} = $multiuserquests{14}{cooking}{$qid};
	$qc{fifteen} = $multiuserquests{15}{cooking}{$qid};
	valueprint ($count, $wowheadurl, %qc);
}

sub preprintproffishing ($$$$%) {
	my ($count, $qid, $ql, $qic, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/spell=" . $qid . "\" rel=\"spell=" . $qid . "\">" . $ql ."</a>";
	$qc{zero} = $multiuserquests{0}{fishing}{$qid};
	$qc{one} = $multiuserquests{1}{fishing}{$qid};
	$qc{two} = $multiuserquests{2}{fishing}{$qid};
	$qc{three} = $multiuserquests{3}{fishing}{$qid};
	$qc{four} = $multiuserquests{4}{fishing}{$qid};
	$qc{five} = $multiuserquests{5}{fishing}{$qid};
	$qc{six} = $multiuserquests{6}{fishing}{$qid};
	$qc{seven} = $multiuserquests{7}{fishing}{$qid};
	$qc{eight} = $multiuserquests{8}{fishing}{$qid};
	$qc{nine} = $multiuserquests{9}{fishing}{$qid};
	$qc{ten} = $multiuserquests{10}{fishing}{$qid};
	$qc{eleven} = $multiuserquests{11}{fishing}{$qid};
	$qc{twelve} = $multiuserquests{12}{fishing}{$qid};
	$qc{thirteen} = $multiuserquests{13}{fishing}{$qid};
	$qc{fourteen} = $multiuserquests{14}{fishing}{$qid};
	$qc{fifteen} = $multiuserquests{15}{fishing}{$qid};
	valueprint ($count, $wowheadurl, %qc);
}

sub preprintprofarchaeology ($$$$%) {
	my ($count, $qid, $ql, $qic, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/spell=" . $qid . "\" rel=\"spell=" . $qid . "\">" . $ql ."</a>";
	$qc{zero} = $multiuserquests{0}{archaeology}{$qid};
	$qc{one} = $multiuserquests{1}{archaeology}{$qid};
	$qc{two} = $multiuserquests{2}{archaeology}{$qid};
	$qc{three} = $multiuserquests{3}{archaeology}{$qid};
	$qc{four} = $multiuserquests{4}{archaeology}{$qid};
	$qc{five} = $multiuserquests{5}{archaeology}{$qid};
	$qc{six} = $multiuserquests{6}{archaeology}{$qid};
	$qc{seven} = $multiuserquests{7}{archaeology}{$qid};
	$qc{eight} = $multiuserquests{8}{archaeology}{$qid};
	$qc{nine} = $multiuserquests{9}{archaeology}{$qid};
	$qc{ten} = $multiuserquests{10}{archaeology}{$qid};
	$qc{eleven} = $multiuserquests{11}{archaeology}{$qid};
	$qc{twelve} = $multiuserquests{12}{archaeology}{$qid};
	$qc{thirteen} = $multiuserquests{13}{archaeology}{$qid};
	$qc{fourteen} = $multiuserquests{14}{archaeology}{$qid};
	$qc{fifteen} = $multiuserquests{15}{archaeology}{$qid};
	valueprint ($count, $wowheadurl, %qc);
}

sub preprintachievement ($$$$%) {
	my ($count, $qid, $aid, $ql, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/achievement=" . $aid . "\" rel=\"achievement=" . $aid . "\">" . $ql ."</a>";
#	print $wowheadurl;
	$qc{zero} = $multiuserquests{0}{$qid};
	$qc{one} = $multiuserquests{1}{$qid};
	$qc{two} = $multiuserquests{2}{$qid};
	$qc{three} = $multiuserquests{3}{$qid};
	$qc{four} = $multiuserquests{4}{$qid};
	$qc{five} = $multiuserquests{5}{$qid};
	$qc{six} = $multiuserquests{6}{$qid};
	$qc{seven} = $multiuserquests{7}{$qid};
	$qc{eight} = $multiuserquests{8}{$qid};
	$qc{nine} = $multiuserquests{9}{$qid};
	$qc{ten} = $multiuserquests{10}{$qid};
	$qc{eleven} = $multiuserquests{11}{$qid};
	$qc{twelve} = $multiuserquests{12}{$qid};
	$qc{thirteen} = $multiuserquests{13}{$qid};
	$qc{fourteen} = $multiuserquests{14}{$qid};
	$qc{fifteen} = $multiuserquests{15}{$qid};
	valueprint ($count, $wowheadurl, %qc);
}

sub preprintachievementvia4q ($$$$$$$$%) {
	my ($count, $qid, $aid, $ql, $q01, $q02, $q03, $q04, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/achievement=" . $aid . "\" rel=\"achievement=" . $aid . "\">" . $ql ."</a>";
#	print $wowheadurl;

	if ($multiuserquests{0}{$q01} eq "yes" ||
		$multiuserquests{0}{$q02} eq "yes" ||
		$multiuserquests{0}{$q03} eq "yes" ||
		$multiuserquests{0}{$q04} eq "yes") {
		$qc{zero} = 'yes'
	} else {
		$qc{zero} = 'no'
	}
	#if ($multiuserquests{1}{$qid} == $q01 || $multiuserquests{1}{$qid} == $q02 || $multiuserquests{1}{$qid} == $q03 || $multiuserquests{1}{$q04} == $q04) {
	#	$qc{one} = 'yes'
	#} else {
	#	$qc{one} = 'no'
	#}
	#if ($multiuserquests{2}{$qid} == $q01 || $multiuserquests{2}{$qid} == $q02 || $multiuserquests{2}{$qid} == $q03 || $multiuserquests{2}{$q04} == $q04) {
	#	$qc{two} = 'yes'
	#} else {
	#	$qc{two} = 'no'
	#}
	#if ($multiuserquests{3}{$qid} == $q01 || $multiuserquests{3}{$qid} == $q02 || $multiuserquests{3}{$qid} == $q03 || $multiuserquests{3}{$q04} == $q04) {
	#	$qc{three} = 'yes'
	#} else {
	#	$qc{three} = 'no'
	#}
	#if ($multiuserquests{4}{$qid} == $q01 || $multiuserquests{4}{$qid} == $q02 || $multiuserquests{4}{$qid} == $q03 || $multiuserquests{4}{$q04} == $q04) {
	#	$qc{four} = 'yes'
	#} else {
	#	$qc{four} = 'no'
	#}
	#if ($multiuserquests{5}{$qid} == $q01 || $multiuserquests{5}{$qid} == $q02 || $multiuserquests{5}{$qid} == $q03 || $multiuserquests{5}{$q04} == $q04) {
	#	$qc{five} = 'yes'
	#} else {
	#	$qc{five} = 'no'
	#}
	#if ($multiuserquests{6}{$qid} == $q01 || $multiuserquests{6}{$qid} == $q02 || $multiuserquests{6}{$qid} == $q03 || $multiuserquests{6}{$q04} == $q04) {
	#	$qc{six} = 'yes'
	#} else {
	#	$qc{six} = 'no'
	#}
	#if ($multiuserquests{7}{$qid} == $q01 || $multiuserquests{7}{$qid} == $q02 || $multiuserquests{7}{$qid} == $q03 || $multiuserquests{7}{$q04} == $q04) {
	#	$qc{seven} = 'yes'
	#} else {
	#	$qc{seven} = 'no'
	#}
	#if ($multiuserquests{8}{$qid} == $q01 || $multiuserquests{8}{$qid} == $q02 || $multiuserquests{8}{$qid} == $q03 || $multiuserquests{8}{$q04} == $q04) {
	#	$qc{eight} = 'yes'
	#} else {
	#	$qc{eight} = 'no'
	#}
	#if ($multiuserquests{9}{$qid} == $q01 || $multiuserquests{9}{$qid} == $q02 || $multiuserquests{9}{$qid} == $q03 || $multiuserquests{9}{$q04} == $q04) {
	#	$qc{nine} = 'yes'
	#} else {
	#	$qc{nine} = 'no'
	#}
	#if ($multiuserquests{10}{$qid} == $q01 || $multiuserquests{10}{$qid} == $q02 || $multiuserquests{10}{$qid} == $q03 || $multiuserquests{10}{$q04} == $q04) {
	#	$qc{ten} = 'yes'
	#} else {
	#	$qc{ten} = 'no'
	#}
	#if ($multiuserquests{11}{$qid} == $q01 || $multiuserquests{11}{$qid} == $q02 || $multiuserquests{11}{$qid} == $q03 || $multiuserquests{11}{$q04} == $q04) {
	#	$qc{eleven} = 'yes'
	#} else {
	#	$qc{eleven} = 'no'
	#}
	#if ($multiuserquests{12}{$qid} == $q01 || $multiuserquests{12}{$qid} == $q02 || $multiuserquests{12}{$qid} == $q03 || $multiuserquests{12}{$q04} == $q04) {
	#	$qc{twelve} = 'yes'
	#} else {
	#	$qc{twelve} = 'no'
	#}
	#if ($multiuserquests{13}{$qid} == $q01 || $multiuserquests{13}{$qid} == $q02 || $multiuserquests{13}{$qid} == $q03 || $multiuserquests{13}{$q04} == $q04) {
	#	$qc{thirteen} = 'yes'
	#} else {
	#	$qc{thirteen} = 'no'
	#}
	#if ($multiuserquests{14}{$qid} == $q01 || $multiuserquests{14}{$qid} == $q02 || $multiuserquests{14}{$qid} == $q03 || $multiuserquests{14}{$q04} == $q04) {
	#	$qc{fourteen} = 'yes'
	#} else {
	#	$qc{fourteen} = 'no'
	#}
	#if ($multiuserquests{15}{$qid} == $q01 || $multiuserquests{15}{$qid} == $q02 || $multiuserquests{15}{$qid} == $q03 || $multiuserquests{15}{$q04} == $q04) {
	#	$qc{fifteen} = 'yes'
	#} else {
	#	$qc{fifteen} = 'no'
	#}
#	$qc{zero} = $multiuserquests{0}{$qid};
#	$qc{one} = $multiuserquests{1}{$qid};
#	$qc{two} = $multiuserquests{2}{$qid};
#	$qc{three} = $multiuserquests{3}{$qid};
#	$qc{four} = $multiuserquests{4}{$qid};
#	$qc{five} = $multiuserquests{5}{$qid};
#	$qc{six} = $multiuserquests{6}{$qid};
#	$qc{seven} = $multiuserquests{7}{$qid};
#	$qc{eight} = $multiuserquests{8}{$qid};
#	$qc{nine} = $multiuserquests{9}{$qid};
#	$qc{ten} = $multiuserquests{10}{$qid};
#	$qc{eleven} = $multiuserquests{11}{$qid};
#	$qc{twelve} = $multiuserquests{12}{$qid};
#	$qc{thirteen} = $multiuserquests{13}{$qid};
#	$qc{fourteen} = $multiuserquests{14}{$qid};
#	$qc{fifteen} = $multiuserquests{15}{$qid};
	valueprint ($count, $wowheadurl, %qc);
	
}

sub valueprint($ % ) {
	my($da, $d0, %d1) = @_;
	BNet::Utils::tableprint("beginrow");
	BNet::Utils::tableprint("beginth");
	print $d0;
	BNet::Utils::tableprint("endth");


	if (0 < $da) {
		if (exists($d1 {zero})) {
			if (defined $d1 {zero}) {
				BNet::Utils::tableprint("begintdcomplete");
				print "\t\t\t\t&#10004\n";
				BNet::Utils::tableprint("endtd");
			} else {
				BNet::Utils::tableprint("begintdincomplete");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (1 < $da) {
		if (exists($d1 {one})) {
			if (defined $d1 {one}) {
				BNet::Utils::tableprint("begintdcomplete");
				print "\t\t\t\t&#10004\n";
				BNet::Utils::tableprint("endtd");
			} else {
				BNet::Utils::tableprint("begintdincomplete");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (2 < $da) {
		if (exists($d1 {two})) {
			if (defined $d1 {two}) {
				BNet::Utils::tableprint("begintdcomplete");
				print "\t\t\t\t&#10004\n";
				BNet::Utils::tableprint("endtd");
			} else {
				BNet::Utils::tableprint("begintdincomplete");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (3 < $da) {
		if (exists($d1 {three})) {
			if (defined $d1 {three}) {
				BNet::Utils::tableprint("begintdcomplete");
				print "\t\t\t\t&#10004\n";
				BNet::Utils::tableprint("endtd");
			} else {
				BNet::Utils::tableprint("begintdincomplete");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (4 < $da) {
		if (exists($d1 {four})) {
			if (defined $d1 {four}) {
				BNet::Utils::tableprint("begintdcomplete");
				print "\t\t\t\t&#10004\n";
				BNet::Utils::tableprint("endtd");
			} else {
				BNet::Utils::tableprint("begintdincomplete");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (5 < $da) {
		if (exists($d1 {five})) {
			if (defined $d1 {five}) {
				BNet::Utils::tableprint("begintdcomplete");
				print "\t\t\t\t&#10004\n";
				BNet::Utils::tableprint("endtd");
			} else {
				BNet::Utils::tableprint("begintdincomplete");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (6 < $da) {
		if (exists($d1 {six})) {
			if (defined $d1 {six}) {
				BNet::Utils::tableprint("begintdcomplete");
				print "\t\t\t\t&#10004\n";
				BNet::Utils::tableprint("endtd");
			} else {
				BNet::Utils::tableprint("begintdincomplete");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (7 < $da) {
		if (exists($d1 {seven})) {
			if (defined $d1 {seven}) {
				BNet::Utils::tableprint("begintdcomplete");
				print "\t\t\t\t&#10004\n";
				BNet::Utils::tableprint("endtd");
			} else {
				BNet::Utils::tableprint("begintdincomplete");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (8 < $da) {
		if (exists($d1 {eight})) {
			if (defined $d1 {eight}) {
				BNet::Utils::tableprint("begintdcomplete");
				print "\t\t\t\t&#10004\n";
				BNet::Utils::tableprint("endtd");
			} else {
				BNet::Utils::tableprint("begintdincomplete");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (9 < $da) {
		if (exists($d1 {nine})) {
			if (defined $d1 {nine}) {
				BNet::Utils::tableprint("begintdcomplete");
				print "\t\t\t\t&#10004\n";
				BNet::Utils::tableprint("endtd");
			} else {
				BNet::Utils::tableprint("begintdincomplete");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (10 < $da) {
		if (exists($d1 {ten})) {
			if (defined $d1 {ten}) {
				BNet::Utils::tableprint("begintdcomplete");
				print "\t\t\t\t&#10004\n";
				BNet::Utils::tableprint("endtd");
			} else {
				BNet::Utils::tableprint("begintdincomplete");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (11 < $da) {
		if (exists($d1 {eleven})) {
			if (defined $d1 {eleven}) {
				BNet::Utils::tableprint("begintdcomplete");
				print "\t\t\t\t&#10004\n";
				BNet::Utils::tableprint("endtd");
			} else {
				BNet::Utils::tableprint("begintdincomplete");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (12 < $da) {
		if (exists($d1 {twelve})) {
			if (defined $d1 {twelve}) {
				BNet::Utils::tableprint("begintdcomplete");
				print "\t\t\t\t&#10004\n";
				BNet::Utils::tableprint("endtd");
			} else {
				BNet::Utils::tableprint("begintdincomplete");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (13 < $da) {
		if (exists($d1 {thirteen})) {
			if (defined $d1 {thirteen}) {
				BNet::Utils::tableprint("begintdcomplete");
				print "\t\t\t\t&#10004\n";
				BNet::Utils::tableprint("endtd");
			} else {
				BNet::Utils::tableprint("begintdincomplete");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (14 < $da) {
		if (exists($d1 {fourteen})) {
			if (defined $d1 {fourteen}) {
				BNet::Utils::tableprint("begintdcomplete");
				print "\t\t\t\t&#10004\n";
				BNet::Utils::tableprint("endtd");
			} else {
				BNet::Utils::tableprint("begintdincomplete");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
#	print $da;
	if (15 < $da) {
		if (exists($d1 {fifteen})) {
			if (defined $d1 {fifteen}) {
				BNet::Utils::tableprint("begintdcomplete");
				print "\t\t\t\t&#10004\n";
				BNet::Utils::tableprint("endtd");
			} else {
				BNet::Utils::tableprint("begintdincomplete");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	BNet::Utils::tableprint("endrow");

}

sub valueprintreputationcellfriend ($$$) {
	my($db, $dc, $dd) = @_;
	if ($db == 0) {
		BNet::Utils::tableprint("begintdhated");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Stranger</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 1) {
		BNet::Utils::tableprint("begintdhostile");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Acquaintance</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 2) {
		BNet::Utils::tableprint("begintdunfriendly");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Buddy</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 3) {
		BNet::Utils::tableprint("begintdneutral");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Friend</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 4) {
		BNet::Utils::tableprint("begintdfriendly");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Good Friend</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 5) {
		BNet::Utils::tableprint("begintdexalted");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Best Friend</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		BNet::Utils::tableprint("endtd");
	}
}

sub valueprintreputationcellchromie ($$$) {
	my($db, $dc, $dd) = @_;
	if ($db == 0) {
		BNet::Utils::tableprint("begintdhated");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Whelpling</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		print "\n";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 1) {
		BNet::Utils::tableprint("begintdhostile");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Temporal Trainee</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		print "\n";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 2) {
		BNet::Utils::tableprint("begintdunfriendly");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Timehopper</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		print "\n";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 3) {
		BNet::Utils::tableprint("begintdneutral");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Chrono-Friend</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		print "\n";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 4) {
		BNet::Utils::tableprint("begintdfriendly");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Bronze Ally</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		print "\n";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 5) {
		BNet::Utils::tableprint("begintdhonoured");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Epoch-Mender</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		print "\n";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 6) {
		BNet::Utils::tableprint("begintdexalted");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Timelord</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		print "\n";
		BNet::Utils::tableprint("endtd");
	}
}

sub valueprintreputationcellgeneral ($$$) {
	my($db, $dc, $dd) = @_;
	if ($db == 0) {
		BNet::Utils::tableprint("begintdhated");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Hated</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		print "\n";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 1) {
		BNet::Utils::tableprint("begintdhostile");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Hostile</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		print "\n";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 2) {
		BNet::Utils::tableprint("begintdunfriendly");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Unfriendly</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		print "\n";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 3) {
		BNet::Utils::tableprint("begintdneutral");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Neutral</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		print "\n";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 4) {
		BNet::Utils::tableprint("begintdfriendly");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Friendly</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		print "\n";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 5) {
		BNet::Utils::tableprint("begintdhonoured");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Honored</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		print "\n";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 6) {
		BNet::Utils::tableprint("begintdrevered");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Revered</div>";
		print "<div>";
		print $mypercent;
		print "</div>";
		print "\n";
		BNet::Utils::tableprint("endtd");
	} elsif ($db == 7) {
		BNet::Utils::tableprint("begintdexalted");
		my $mypercent = valueprintreputationcalc ($dc, $dd);
		print "\t\t\t<div>Exalted</div>";
		print "\t\t\t<div></div>";
		print "\n";
		BNet::Utils::tableprint("endtd");
	}
}

sub valueprintreputationcell ($$$$) {
	my($da, $db, $dc, $dd) = @_;
	if (($da == 1419) ||
		($da == 1691) ||
		($da == 2011) ||
		($da == 2010) ||
		($da == 1374) ||
		($da == 1619) ||
		($da == 1277) ||
		($da == 1275) ||
		($da == 1283) ||
		($da == 1282) ||
		($da == 1281) ||
		($da == 1279) ||
		($da == 1273) ||
		($da == 1276) ||
		($da == 1278) ||
		($da == 1280) ||
		($da == 1975) ||
		($da == 2102) ||
		($da == 2097) ||
		($da == 2098) ||
		($da == 2099) ||
		($da == 2100) ||
		($da == 2101)
		) {
			valueprintreputationcellfriend ($db, $dc, $dd);
		} elsif ($da == 2135) {
			valueprintreputationcellchromie ($db, $dc, $dd);
		} else {
			valueprintreputationcellgeneral ($db, $dc, $dd);
		}

}

sub valueprintreputationcalc ($$) {
	my($da, $db) = @_;
	if ($da == 0) {
		return 0;
	} elsif ($db == 0) {
		return 0;
	} else {
		return sprintf("%.2f", my $percent = $da / $db);	
	}
}

sub valueprintreputation ($$$%) {
	my($count, $rid, $wowheadurl, %reptree) = @_;
	BNet::Utils::tableprint("beginrow");
	BNet::Utils::tableprint("beginth");
	print $wowheadurl;
	BNet::Utils::tableprint("endth");

#	print Dumper (%d1);
	if (0 < $count) {
		if (exists($reptree{zero}{standing})) {
			if (defined($reptree{zero}{standing})) {
				valueprintreputationcell($rid, $reptree{zero}{standing},$reptree{zero}{value},$reptree{zero}{max})
			} else {
				BNet::Utils::tableprint("begintdblackout");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (1 < $count) {
		if (exists($reptree{one}{standing})) {
			if (defined($reptree{one}{standing})) {
				valueprintreputationcell($rid, $reptree{one}{standing},$reptree{one}{value},$reptree{one}{max})
			} else {
				BNet::Utils::tableprint("begintdblackout");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (2 < $count) {
		if (exists($reptree{two}{standing})) {
			if (defined($reptree{two}{standing})) {
				valueprintreputationcell($rid, $reptree{two}{standing},$reptree{two}{value},$reptree{two}{max})
			} else {
				BNet::Utils::tableprint("begintdblackout");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (3 < $count) {
		if (exists($reptree{three}{standing})) {
			if (defined($reptree{three}{standing})) {
				valueprintreputationcell($rid, $reptree{three}{standing},$reptree{three}{value},$reptree{three}{max})
			} else {
				BNet::Utils::tableprint("begintdblackout");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (4 < $count) {
		if (exists($reptree{four}{standing})) {
			if (defined($reptree{four}{standing})) {
				valueprintreputationcell($rid, $reptree{four}{standing},$reptree{four}{value},$reptree{four}{max})
			} else {
				BNet::Utils::tableprint("begintdblackout");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (5 < $count) {
		if (exists($reptree{five}{standing})) {
			if (defined($reptree{five}{standing})) {
				valueprintreputationcell($rid, $reptree{five}{standing},$reptree{five}{value},$reptree{five}{max})
			} else {
				BNet::Utils::tableprint("begintdblackout");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (6 < $count) {
		if (exists($reptree{six}{standing})) {
			if (defined($reptree{six}{standing})) {
				valueprintreputationcell($rid, $reptree{six}{standing},$reptree{six}{value},$reptree{six}{max})
			} else {
				BNet::Utils::tableprint("begintdblackout");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (7 < $count) {
		if (exists($reptree{seven}{standing})) {
			if (defined($reptree{seven}{standing})) {
				valueprintreputationcell($rid, $reptree{seven}{standing},$reptree{seven}{value},$reptree{seven}{max})
			} else {
				BNet::Utils::tableprint("begintdblackout");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (8 < $count) {
		if (exists($reptree{eight}{standing})) {
			if (defined($reptree{eight}{standing})) {
				valueprintreputationcell($rid, $reptree{eight}{standing},$reptree{eight}{value},$reptree{eight}{max})
			} else {
				BNet::Utils::tableprint("begintdblackout");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (9 < $count) {
		if (exists($reptree{nine}{standing})) {
			if (defined($reptree{nine}{standing})) {
				valueprintreputationcell($rid, $reptree{nine}{standing},$reptree{nine}{value},$reptree{nine}{max})
			} else {
				BNet::Utils::tableprint("begintdblackout");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (10 < $count) {
		if (exists($reptree{ten}{standing})) {
			if (defined($reptree{ten}{standing})) {
				valueprintreputationcell($rid, $reptree{ten}{standing},$reptree{ten}{value},$reptree{ten}{max})
			} else {
				BNet::Utils::tableprint("begintdblackout");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (11 < $count) {
		if (exists($reptree{eleven}{standing})) {
			if (defined($reptree{eleven}{standing})) {
				valueprintreputationcell($rid, $reptree{eleven}{standing},$reptree{eleven}{value},$reptree{eleven}{max})
			} else {
				BNet::Utils::tableprint("begintdblackout");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (12 < $count) {
		if (exists($reptree{twelve}{standing})) {
			if (defined($reptree{twelve}{standing})) {
				valueprintreputationcell($rid, $reptree{twelve}{standing},$reptree{twelve}{value},$reptree{twelve}{max})
			} else {
				BNet::Utils::tableprint("begintdblackout");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (13 < $count) {
		if (exists($reptree{thirteen}{standing})) {
			if (defined($reptree{thirteen}{standing})) {
				valueprintreputationcell($rid, $reptree{thirteen}{standing},$reptree{thirteen}{value},$reptree{thirteen}{max})
			} else {
				BNet::Utils::tableprint("begintdblackout");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (14 < $count) {
		if (exists($reptree{fourteen}{standing})) {
			if (defined($reptree{fourteen}{standing})) {
				valueprintreputationcell($rid, $reptree{fourteen}{standing},$reptree{fourteen}{value},$reptree{fourteen}{max})
			} else {
				BNet::Utils::tableprint("begintdblackout");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	if (15 < $count) {
		if (exists($reptree{fiveteen}{standing})) {
			if (defined($reptree{fiveteen}{standing})) {
				valueprintreputationcell($rid, $reptree{fiveteen}{standing},$reptree{fiveteen}{value},$reptree{fiveteen}{max})
			} else {
				BNet::Utils::tableprint("begintdblackout");
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	BNet::Utils::tableprint("endrow");
}

sub preprintreputation ($$$%) {
	my ($count, $fid, $ql, %rep) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/faction=" . $fid . "\" rel=\"faction=" . $fid . "\">" . $ql . "</a>";

	if (0 < $count) {
		$qc{zero}->{'id'}       = $rep{0}{$fid}->{'id'};
		$qc{zero}->{'standing'} = $rep{0}{$fid}->{'standing'};
		$qc{zero}->{'value'}    = $rep{0}{$fid}->{'value'};
		$qc{zero}->{'max'}       = $rep{0}{$fid}->{'max'};
	}
	if (1 < $count) {
		$qc{one}->{'id'}       = $rep{1}{$fid}->{'id'};
		$qc{one}->{'standing'} = $rep{1}{$fid}->{'standing'};
		$qc{one}->{'value'}    = $rep{1}{$fid}->{'value'};
		$qc{one}->{'max'}       = $rep{1}{$fid}->{'max'};
	}
	if (2 < $count) {
		$qc{two}->{'id'}       = $rep{2}{$fid}->{'id'};
		$qc{two}->{'standing'} = $rep{2}{$fid}->{'standing'};
		$qc{two}->{'value'}    = $rep{2}{$fid}->{'value'};
		$qc{two}->{'max'}       = $rep{2}{$fid}->{'max'};
	}
	if (3 < $count) {
		$qc{three}->{'id'}       = $rep{3}{$fid}->{'id'};
		$qc{three}->{'standing'} = $rep{3}{$fid}->{'standing'};
		$qc{three}->{'value'}    = $rep{3}{$fid}->{'value'};
		$qc{three}->{'max'}       = $rep{3}{$fid}->{'max'};
	}
	if (4 < $count) {
		$qc{four}->{'id'}       = $rep{4}{$fid}->{'id'};
		$qc{four}->{'standing'} = $rep{4}{$fid}->{'standing'};
		$qc{four}->{'value'}    = $rep{4}{$fid}->{'value'};
		$qc{four}->{'max'}       = $rep{4}{$fid}->{'max'};
	}
	if (5 < $count) {
		$qc{five}->{'id'}       = $rep{5}{$fid}->{'id'};
		$qc{five}->{'standing'} = $rep{5}{$fid}->{'standing'};
		$qc{five}->{'value'}    = $rep{5}{$fid}->{'value'};
		$qc{five}->{'max'}       = $rep{5}{$fid}->{'max'};
	}
	if (6 < $count) {
		$qc{six}->{'id'}       = $rep{6}{$fid}->{'id'};
		$qc{six}->{'standing'} = $rep{6}{$fid}->{'standing'};
		$qc{six}->{'value'}    = $rep{6}{$fid}->{'value'};
		$qc{six}->{'max'}       = $rep{6}{$fid}->{'max'};
	}
	if (7 < $count) {
		$qc{seven}->{'id'}       = $rep{7}{$fid}->{'id'};
		$qc{seven}->{'standing'} = $rep{7}{$fid}->{'standing'};
		$qc{seven}->{'value'}    = $rep{7}{$fid}->{'value'};
		$qc{seven}->{'max'}       = $rep{7}{$fid}->{'max'};
	}
	if (8 < $count) {
		$qc{eight}->{'id'}       = $rep{8}{$fid}->{'id'};
		$qc{eight}->{'standing'} = $rep{8}{$fid}->{'standing'};
		$qc{eight}->{'value'}    = $rep{8}{$fid}->{'value'};
		$qc{eight}->{'max'}       = $rep{8}{$fid}->{'max'};
	}
	if (9 < $count) {
		$qc{nine}->{'id'}       = $rep{9}{$fid}->{'id'};
		$qc{nine}->{'standing'} = $rep{9}{$fid}->{'standing'};
		$qc{nine}->{'value'}    = $rep{9}{$fid}->{'value'};
		$qc{nine}->{'max'}       = $rep{9}{$fid}->{'max'};
	}
	if (10 < $count) {
		$qc{ten}->{'id'}       = $rep{10}{$fid}->{'id'};
		$qc{ten}->{'standing'} = $rep{10}{$fid}->{'standing'};
		$qc{ten}->{'value'}    = $rep{10}{$fid}->{'value'};
		$qc{ten}->{'max'}       = $rep{10}{$fid}->{'max'};
	}
	if (11 < $count) {
		$qc{eleven}->{'id'}       = $rep{11}{$fid}->{'id'};
		$qc{eleven}->{'standing'} = $rep{11}{$fid}->{'standing'};
		$qc{eleven}->{'value'}    = $rep{11}{$fid}->{'value'};
		$qc{eleven}->{'max'}       = $rep{11}{$fid}->{'max'};
	}
	if (12 < $count) {
		$qc{twelve}->{'id'}       = $rep{12}{$fid}->{'id'};
		$qc{twelve}->{'standing'} = $rep{12}{$fid}->{'standing'};
		$qc{twelve}->{'value'}    = $rep{12}{$fid}->{'value'};
		$qc{twelve}->{'max'}       = $rep{12}{$fid}->{'max'};
	}
	if (13 < $count) {
		$qc{thirteen}->{'id'}       = $rep{13}{$fid}->{'id'};
		$qc{thirteen}->{'standing'} = $rep{13}{$fid}->{'standing'};
		$qc{thirteen}->{'value'}    = $rep{13}{$fid}->{'value'};
		$qc{thirteen}->{'max'}       = $rep{13}{$fid}->{'max'};
	}
	if (14 < $count) {
		$qc{fourteen}->{'id'}       = $rep{14}{$fid}->{'id'};
		$qc{fourteen}->{'standing'} = $rep{14}{$fid}->{'standing'};
		$qc{fourteen}->{'value'}    = $rep{14}{$fid}->{'value'};
		$qc{fourteen}->{'max'}       = $rep{14}{$fid}->{'max'};
	}
	if (15 < $count) {
		$qc{fiveteen}->{'id'}       = $rep{15}{$fid}->{'id'};
		$qc{fiveteen}->{'standing'} = $rep{15}{$fid}->{'standing'};
		$qc{fiveteen}->{'value'}    = $rep{15}{$fid}->{'value'};
		$qc{fiveteen}->{'max'}       = $rep{15}{$fid}->{'max'};
	}
	valueprintreputation ($count, $fid, $wowheadurl, %qc)
}

sub reputationtohash ($) {
	my ($reputation) = @_;
	my @raids = @{ $reputation->{'reputation'} };
	my %rep;
	foreach my $f ( @raids ) {
		$rep{$f->{'id'}}{'id'} = $f->{'id'};
		$rep{$f->{'id'}}{'standing'} = $f->{'standing'};
		$rep{$f->{'id'}}{'value'} = $f->{'value'};
		$rep{$f->{'id'}}{'max'} = $f->{'max'};
	}
	return %rep;
}

sub htmlheadprint () {
	
	print "<html>\n";
	print "\t<head>\n";
	print "\t\t<title>Character Quests</title>\n";
	print "\t\t<style>\n";

	print "\t\ttable {\n";
	print "\t\t\tborder-collapse: collapse;\n";
	print "\t\t\tborder: solid 1px;\n";
	print "\t\t}\n";

	print "\t\ttable th {\n";
	print "\t\t\tborder: solid 1px;\n";
	print "\t\t\tfont-size:	14px;\n";
	print "\t\t}\n";

	print "\t\ttable td {\n";
	print "\t\t\tborder: solid 1px;\n";
	print "\t\t\tfont-size:	14px;\n";
	print "\t\t\ttext-align: left;\n";
	print "\t\t}\n";

	print "\t\ttable td.Death-Knight {\n";
	print "\t\t\ttext-align:\tcenter;\n";
	print "\t\t\tbackground-color:	#C41F3B;\n";
	print "\t\t}\n";

	print "\t\ttable td.Demon-Hunter {\n";
	print "\t\t\ttext-align:\tcenter;\n";
	print "\t\t\tbackground-color:	#A330C9;\n";
	print "\t\t}\n";

	print "\t\ttable td.Druid {\n";
	print "\t\t\ttext-align:\tcenter;\n";
	print "\t\t\tbackground-color:	#FF7D0A;\n";
	print "\t\t}\n";

	print "\t\ttable td.Hunter {\n";
	print "\t\t\ttext-align:\tcenter;\n";
	print "\t\t\tbackground-color:	#ABD473;\n";
	print "\t\t}\n";

	print "\t\ttable td.Mage {\n";
	print "\t\t\ttext-align:\tcenter;\n";
	print "\t\t\tbackground-color:	#69CCF0;\n";
	print "\t\t}\n";

	print "\t\ttable td.Monk {\n";
	print "\t\t\ttext-align:\tcenter;\n";
	print "\t\t\tbackground-color:	#00FF96;\n";
	print "\t\t}\n";

	print "\t\ttable td.Paladin {\n";
	print "\t\t\ttext-align:\tcenter;\n";
	print "\t\t\tbackground-color:	#F58CBA;\n";
	print "\t\t}\n";

	print "\t\ttable td.Priest {\n";
	print "\t\t\ttext-align:\tcenter;\n";
	print "\t\t\tbackground-color:	#FFFFFF;\n";
	print "\t\t}\n";

	print "\t\ttable td.Rogue {\n";
	print "\t\t\ttext-align:\tcenter;\n";
	print "\t\t\tbackground-color:	#FFF569;\n";
	print "\t\t}\n";

	print "\t\ttable td.Shaman {\n";
	print "\t\t\ttext-align:\tcenter;\n";
	print "\t\t\tbackground-color:	#0070DE;\n";
	print "\t\t}\n";

	print "\t\ttable td.Warlock {\n";
	print "\t\t\ttext-align:\tcenter;\n";
	print "\t\t\tbackground-color:	#9482C9;\n";
	print "\t\t}\n";

	print "\t\ttable td.Warrior {\n";
	print "\t\t\ttext-align:\tcenter;\n";
	print "\t\t\tbackground-color:	#C79C6E;\n";
	print "\t\t}\n";

	print "\t\ttable tr.Complete {\n";
	print "\t\t\tbackground-color:	#1EFF00;\n";
	print "\t\t}\n";

	print "\t\ttable tr.Incomplete {\n";
	print "\t\t\tbackground-color:	#0070DD;\n";
	print "\t\t}\n";

	print "\t\ttable td.Complete {\n";
	print "\t\t\tbackground-color:	#1EFF00;\n";
	print "\t\t\ttext-align:\tcenter;\n";
	print "\t\t\tvertical-align:\tmiddle;\n";
	print "\t\t\tfont-size:	14px;\n";
	print "\t\t}\n";

	print "\t\ttable td.Incomplete {\n";
	print "\t\t\tbackground-color:	#0070DD;\n";
	print "\t\t}\n";

	print "\t\ttable tr.Incomplete2 {\n";
	print "\t\t\tcolor:	#000000;\n";
	print "\t\t\tbackground-color:	#DC143C;\n";
	print "\t\t}\n";

	print "\t\t.r1{\n";
	print "\t\t	color:\t#ff8040;\n";
	print "\t\t}\n";

	print "\t\t.r2{\n";
	print "\t\t	color:\t#ffff00;\n";
	print "\t\t}\n";

	print "\t\t.r3{\n";
	print "\t\t	color:\t#40bf40;\n";
	print "\t\t}\n";

	print "\t\t.r4{\n";
	print "\t\t	color:\t#808080;\n";
	print "\t\t}\n";

	print "\t\t.hated{\n";
	print "\t\t\tbackground-color:\t#cc0000;\n";
	print "\t\t\tcolor:\t#000000;\n";
	print "\t\t}\n";

	print "\t\t.hostile{\n";
	print "\t\t\tbackground-color:\t#ff0000;\n";
	print "\t\t\tcolor:\t#000000;\n";
	print "\t\t}\n";

	print "\t\t.unfriendly{\n";
	print "\t\t\tbackground-color:\t#f26000;\n";
	print "\t\t\tcolor:\t#000000;\n";
	print "\t\t}\n";

	print "\t\t.neutral{\n";
	print "\t\t\tbackground-color:\t#e4e400;\n";
	print "\t\t\tcolor:\t#000000;\n";
	print "\t\t}\n";

	print "\t\t.friendly{\n";
	print "\t\t\tbackground-color:\t#33ff33;\n";
	print "\t\t\tcolor:\t#000000;\n";
	print "\t\t}\n";

	print "\t\t.honoured{\n";
	print "\t\t\tbackground-color:\t#5fe65d;\n";
	print "\t\t\tcolor:\t#000000;\n";
	print "\t\t}\n";

	print "\t\t.revered{\n";
	print "\t\t\tbackground-color:\t#53e9bc;\n";
	print "\t\t\tcolor:\t#000000;\n";
	print "\t\t}\n";

	print "\t\t.exalted{\n";
	print "\t\t\tbackground-color:\t#2ee6e6;\n";
	print "\t\t\tcolor:\t#000000;\n";
	print "\t\t}\n";

	print "\t\t.blackout{\n";
	print "\t\t\tbackground-color:\t#000000;\n";
	print "\t\t\tcolor:\t#000000;\n";
	print "\t\t}\n";

	print "\t\tdiv {\n";
	print "\t\t\ttext-align:\tcenter;\n";
	print "\t\t\tvertical-align:\tmiddle;\n";
	print "\t\t}\n";
	print "\t\t</style>\n";

	print "\t\t<script type=\"text/javascript\" src=\"//wow.zamimg.com/widgets/power.js\"></script>\n";
	print "\t\t<script>var wowhead_tooltips = { \"colorlinks\": true, \"iconizelinks\": true, \"renamelinks\": false }</script>\n";
	print "\t\t</head>\n";
}

sub groupheader($) {
	my ($qa) = @_;
	tableprint("beginrow");
	tableprint("thbeginspan");
	print $qa;
	print "\n";
	tableprint("endth");
	tableprint("endrow");
}

1;
