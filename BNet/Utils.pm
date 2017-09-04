package BNet::Utils;

use strict;
use warnings;
use JSON;
use LWP::Simple;

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

sub printcharacter($$) {
	my ($server, $char) = @_;
	my $url = "https://worldofwarcraft.com/en-us/character/" . $server . "/" . $char . "/";
#	print "\t\t\t\t$columns[0]\n";
#	print "\t\t\t\t</br>\n";
#	print "\t\t\t\t$columns[1]\n";
	print "\t\t\t\t<a href=\"";
	print $url;
	print "\">";
	print $char;
	print "</a>";
	
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

sub percharquests ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'quests'} };
	return @raids;
}
#$reputation->{'professions'}{'primary'}{'recipes'} };


#sub percharquests ($) {
#	my ($decoded) = @_;
#	my @raids = @{ $decoded->{'quests'} };
#	return @raids;
#}

sub reputationtojson ($) {
	my ($reputation) = @_;
	my @raids = @{ $reputation->{'reputation'} };
	return @raids;
}

sub reputationtohash ($%) {
	my (@raids, %rephash) = @_;

	foreach my $f ( @raids ) {
	
	}

}

sub preprint ($$$%) {
	my ($count, $qid, $ql, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "\t\t\t<a href=\"http://www.wowhead.com/quest=" . $qid . "\"  rel=\"quest=" . $qid . "\">" . $ql ."</a>";
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

sub preprintachievement ($$$$%) {
	my ($count, $qid, $aid, $ql, %multiuserquests) = @_;
	my %qc;
	my $wowheadurl = "\t\t\t<a href=\"http://www.wowhead.com/achievement=" . $aid . "\"  rel=\"achievement=" . $aid . "\">" . $ql ."</a>";
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

sub htmlheadprint () {
	
	print "<html>\n";
	print "\t<head>\n";
	print "\t\t<title>Character Quests</title>\n";
	print "\t\t<style>\n";
	print "\t\ttable {\n";
	print "\t\t\tborder-collapse: collapse;\n";
	print "\t\t\tborder: solid 1px;\n";
	print "\t\t}\n";
	print "\t\ttable th, table td {\n";
	print "\t\t\tborder: solid 1px;\n";
	print "\t\t\tfont-size:	14px;\n";
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


sub achievements_to_hash($) {
}

1;