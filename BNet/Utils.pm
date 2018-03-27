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

sub percharquests ($) {
	my ($decoded) = @_;
	my @raids = @{ $decoded->{'quests'} };
	return @raids;
}

sub reputationtohash ($) {
	my ($reputation) = @_;
#	my ($pid, $reputation) = @_;
#	my ($pid, $reputation, %rep) = @_;
#	print Dumper ($reputation->{'reputation'});
	my @raids = @{ $reputation->{'reputation'} };
	my %rep;
	foreach my $f ( @raids ) {
	#	print $pid;
	#	print "\t";
	#	print $f->{'id'};
	#	print "\t";
	#	print $f->{'standing'};
	#	print "\t";
	#	print $f->{'value'};
	#	print "\t";
	#	print $f->{'max'};
	#	print "\n";
		my $temp = $f->{'id'};
		$rep{$temp} = $f;
	##	$rep{$temp}->{'id'} = $f->{'id'};
	##	$rep{$temp}->{'standing'} = $f->{'standing'};
	##	$rep{$temp}->{'value'} = $f->{'value'};
	##	$rep{$temp}->{'max'} = $f->{'max'};
	#	$rep{$pid}{$f->{'id'}}{'id'} = $f->{'id'};
	#	$rep{$pid}{$f->{'id'}}{'standing'} = $f->{'standing'};
	#	$rep{$pid}{$f->{'id'}}{'value'} = $f->{'value'};
	#	$rep{$pid}{$f->{'id'}}{'max'} = $f->{'max'};
	#	print Dumper ($rep{$pid}{$f->{'id'}}{'id'});
	#	print "\t";
	#	print Dumper ($rep{$pid}{$f->{'id'}}{'standing'});
	#	print "\t";
	#	print Dumper ($rep{$pid}{$f->{'id'}}{'value'});
	#	print "\t";
	#	print Dumper ($rep{$pid}{$f->{'id'}}{'max'});
	#	print "\t";
	#	print "\n";
	}
#	print Dumper (%rep);
	return %rep;
}
#		print $f->{'id'};
#		print "\t";
#		print $f->{'standing'};
#		print "\t";
#		print $f->{'value'};
#		print "\t";
#		print $f->{'max'};
#		print "\n";
#		my $temp = $f->{'id'};
#		$rep{$temp}{'standing'} = $f->{'standing'};
#		$rep{$temp}{'value'} = $f->{'value'};
#		$rep{$temp}{'max'} = $f->{'max'};
#		print $rep{$temp}{'standing'};
#		print "\n";
#	return %rep;

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

sub preprintrep ($$$%) {
	my ($count, $fid, $ql, %rep) = @_;
	my %qc;
	my $wowheadurl = "<a href=\"http://www.wowhead.com/faction=" . $fid . "\" rel=\"faction=" . $fid . "\">" . $ql . "</a>";
#	print Dumper (%rep);
#	valueprintrep ($count, $wowheadurl, $fid, %qc);
	print $rep{zero}->{$fid}->{'standing'};
#	print Dumper ($rep{0});
	print "\n";
#	print Dumper ($rep{1});
#	print $rep{0}{$fid}{'standing'};
#	print "\n";
	#if (0 < $count) {
	#	$qc{zero} =  join(':', $rep{0}{$fid}->{'standing'},$rep{0}{$fid}->{'value'},$rep{0}{$fid}->{'max'});
	#}
	#if (1 < $count) {
	#	$qc{one} =  join(':', $rep{1}{$fid}->{'standing'},$rep{1}{$fid}->{'value'},$rep{1}{$fid}->{'max'});
	#}
	#if (2 < $count) {
	#	$qc{two} =  join(':', $rep{2}{$fid}->{'standing'},$rep{2}{$fid}->{'value'},$rep{2}{$fid}->{'max'});
	#}
	#if (3 < $count) {
	#	$qc{three} =  join(':', $rep{3}{$fid}->{'standing'},$rep{3}{$fid}->{'value'},$rep{3}{$fid}->{'max'});
	#}
	#if (4 < $count) {
	#	$qc{four} =  join(':', $rep{4}{$fid}->{'standing'},$rep{4}{$fid}->{'value'},$rep{4}{$fid}->{'max'});
	#}
	#if (5 < $count) {
	#	$qc{five} = join(':', $rep{5}{$fid}->{'standing'},$rep{5}{$fid}->{'value'},$rep{5}{$fid}->{'max'});
	#}
	#if (6 < $count) {
	#	$qc{six} = join(':', $rep{6}{$fid}->{'standing'},$rep{6}{$fid}->{'value'},$rep{6}{$fid}->{'max'});
	#}
	#if (7 < $count) {
	#	$qc{seven} = join(':', $rep{7}{$fid}->{'standing'},$rep{7}{$fid}->{'value'},$rep{7}{$fid}->{'max'});
	#}
	#if (8 < $count) {
	#	$qc{eight} = join(':', $rep{8}{$fid}->{'standing'},$rep{8}{$fid}->{'value'},$rep{8}{$fid}->{'max'});
	#}
	#if (9 < $count) {
	#	$qc{nine} = join(':', $rep{9}{$fid}->{'standing'},$rep{9}{$fid}->{'value'},$rep{9}{$fid}->{'max'});
	#}
	#if (10 < $count) {
	#	$qc{ten} = join(':', $rep{10}{$fid}->{'standing'},$rep{10}{$fid}->{'value'},$rep{10}{$fid}->{'max'});
	#}
	#if (11 < $count) {
	#	$qc{eleven} = join(':', $rep{11}{$fid}->{'standing'},$rep{11}{$fid}->{'value'},$rep{11}{$fid}->{'max'});
	#}
	#if (12 < $count) {
	#	$qc{twelve} = join(':', $rep{12}{$fid}->{'standing'},$rep{12}{$fid}->{'value'},$rep{12}{$fid}->{'max'});
	#}
	#if (13 < $count) {
	#	$qc{thirteen} = join(':', $rep{13}{$fid}->{'standing'},$rep{13}{$fid}->{'value'},$rep{13}{$fid}->{'max'});
	#}
	#if (14 < $count) {
	#	$qc{fourteen} = join(':', $rep{14}{$fid}->{'standing'},$rep{14}{$fid}->{'value'},$rep{14}{$fid}->{'max'});
	#}
	#if (15 < $count) {
	#	$qc{fifteen} = join(':', $rep{15}{$fid}->{'standing'},$rep{15}{$fid}->{'value'},$rep{15}{$fid}->{'max'});
	#}

#	if (0 < $count) {
#		$qc{zero}{standing} = $rep{0}{$fid}{'standing'};
#		$qc{zero}{value} = $rep{0}{$fid}{'value'};
#		$qc{zero}{max} = $rep{0}{$fid}{'max'};
#	}
#	$qc{one}{standing} = $rep{1}{$fid}{standing};
#	$qc{one}{value} = $rep{1}{$fid}{value};
#	$qc{one}{max} = $rep{1}{$fid}{max};
#	$qc{two}{standing} = $rep{2}{$fid}{standing};
#	$qc{two}{value} = $rep{2}{$fid}{value};
#	$qc{two}{max} = $rep{2}{$fid}{max};
#	$qc{three}{standing} = $rep{3}{$fid}{standing};
#	$qc{three}{value} = $rep{3}{$fid}{value};
#	$qc{three}{max} = $rep{3}{$fid}{max};
#	$qc{four}{standing} = $rep{4}{$fid}{standing};
#	$qc{four}{value} = $rep{4}{$fid}{value};
#	$qc{four}{max} = $rep{4}{$fid}{max};
#	$qc{five}{standing} = $rep{5}{$fid}{standing};
#	$qc{five}{value} = $rep{5}{$fid}{value};
#	$qc{five}{max} = $rep{5}{$fid}{max};
#	$qc{six}{standing} = $rep{6}{$fid}{standing};
#	$qc{six}{value} = $rep{6}{$fid}{value};
#	$qc{six}{max} = $rep{6}{$fid}{max};
#	$qc{seven}{standing} = $rep{7}{$fid}{standing};
#	$qc{seven}{value} = $rep{7}{$fid}{value};
#	$qc{seven}{max} = $rep{7}{$fid}{max};
#	$qc{eight}{standing} = $rep{8}{$fid}{standing};
#	$qc{eight}{value} = $rep{8}{$fid}{value};
#	$qc{eight}{max} = $rep{8}{$fid}{max};
#	$qc{nine}{standing} = $rep{9}{$fid}{standing};
#	$qc{nine}{value} = $rep{9}{$fid}{value};
#	$qc{nine}{max} = $rep{9}{$fid}{max};
#	$qc{ten}{standing} = $rep{10}{$fid}{standing};
#	$qc{ten}{value} = $rep{10}{$fid}{value};
#	$qc{ten}{max} = $rep{10}{$fid}{max};
#	$qc{eleven}{standing} = $rep{11}{$fid}{standing};
#	$qc{eleven}{value} = $rep{11}{$fid}{value};
#	$qc{eleven}{max} = $rep{11}{$fid}{max};
#	$qc{zero}{standing} = $rep{12}{$fid}{standing};
#	$qc{zero}{value} = $rep{12}{$fid}{value};
#	$qc{zero}{max} = $rep{12}{$fid}{max};
#	$qc{thirteen}{standing} = $rep{13}{$fid}{standing};
#	$qc{thirteen}{value} = $rep{13}{$fid}{value};
#	$qc{thirteen}{max} = $rep{13}{$fid}{max};
#	$qc{fourteen}{standing} = $rep{14}{$fid}{standing};
#	$qc{fourteen}{value} = $rep{14}{$fid}{value};
#	$qc{fourteen}{max} = $rep{14}{$fid}{max};
#	$qc{fifteen}{standing} = $rep{15}{$fid}{standing};
#	$qc{fifteen}{value} = $rep{15}{$fid}{value};
#	$qc{fifteen}{max} = $rep{15}{$fid}{max};
	
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


sub preprintprofcookinglegion ($$$$%) {
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

=pod
ff0000	hostile
f26000	unfriendly
e4e400	neutral
33ff33	friendly
5fe65d	honoured
53e9bc	revered
2ee6e6	exalted
=cut

sub valueprintrepcalc ($$) {
	my($da, $db) = @_;
	return my $percent = $da / $db;	
}

sub valueprintrepcell ($$$$) {
	my($da, $db, $dc, $dd) = @_;
	my $mypercent;
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
			if ($db == 0) {
				BNet::Utils::tableprint("begintdhated");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Stranger<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 1) {
				BNet::Utils::tableprint("begintdhostile");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Acquaintance<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 2) {
				BNet::Utils::tableprint("begintdunfriendly");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Buddy<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 3) {
				BNet::Utils::tableprint("begintdneutral");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Friend<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 4) {
				BNet::Utils::tableprint("begintdfriendly");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Good Friend<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 5) {
				BNet::Utils::tableprint("begintdexalted");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Best Friend<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			}
		} elsif ($da == 2135) {
			if ($db == 0) {
				BNet::Utils::tableprint("begintdhated");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Whelpling<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 1) {
				BNet::Utils::tableprint("begintdhostile");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Temporal Trainee<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 2) {
				BNet::Utils::tableprint("begintdunfriendly");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Timehopper<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 3) {
				BNet::Utils::tableprint("begintdneutral");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Chrono-Friend<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 4) {
				BNet::Utils::tableprint("begintdfriendly");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Bronze Ally<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 5) {
				BNet::Utils::tableprint("begintdhonoured");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Epoch-Mender<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 6) {
				BNet::Utils::tableprint("begintdexalted");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Timelord<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			}
		} else {
			if ($db == 0) {
				BNet::Utils::tableprint("begintdhated");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Hated<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 1) {
				BNet::Utils::tableprint("begintdhostile");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Hostile<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 2) {
				BNet::Utils::tableprint("begintdunfriendly");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Unfriendly<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 3) {
				BNet::Utils::tableprint("begintdneutral");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Hated<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 4) {
				BNet::Utils::tableprint("begintdfriendly");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Hated<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 5) {
				BNet::Utils::tableprint("begintdhonoured");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Hated<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 6) {
				BNet::Utils::tableprint("begintdrevered");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Hated<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			} elsif ($db == 7) {
				BNet::Utils::tableprint("begintdexalted");
				$mypercent = valueprintrepcalc ($dc, $dd);
				print "<div>Hated<div>";
				print "<div>";
				print $mypercent;
				print "</div>";
				BNet::Utils::tableprint("endtd");
			}
		}

}

sub valueprintrep ($%) {
	my($da, $d0, $fid, %d1) = @_;
	BNet::Utils::tableprint("beginrow");
	BNet::Utils::tableprint("beginth");
#	print $d0;
	BNet::Utils::tableprint("endth");
#$count, $wowheadurl, $fid, %qc
	print Dumper (%d1);
	if (0 < $da) {
		if (exists($d1{zero}{standing})) {
	#		#if (defined $d1{zero}{standing} {
				print $d1{zero}{standing};
				print "\t";
				print $d1{zero}{max};
				print "\t";
				print $d1{zero}{value};
				print "\n";
	#		#}
		}
	BNet::Utils::tableprint("endrow");
	}
}
#				my @splitbysemicolon = split(/;/, $d1->{zero});
#				valueprintrepcell ($fid, $splitbysemicolon[0], $splitbysemicolon[1], $splitbysemicolon[2]);

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
	print "\t\t	color:\t#cc0000;\n";
	print "\t\t}\n";

	print "\t\t.hostile{\n";
	print "\t\t	color:\t#ff0000;\n";
	print "\t\t}\n";

	print "\t\t.unfriendly{\n";
	print "\t\t	color:\t#f26000;\n";
	print "\t\t}\n";

	print "\t\t.neutral{\n";
	print "\t\t	color:\t#e4e400;\n";
	print "\t\t}\n";

	print "\t\t.friendly{\n";
	print "\t\t	color:\t#33ff33;\n";
	print "\t\t}\n";

	print "\t\t.honoured{\n";
	print "\t\t	color:\t#5fe65d;\n";
	print "\t\t}\n";

	print "\t\t.revered{\n";
	print "\t\t	color:\t#53e9bc;\n";
	print "\t\t}\n";

	print "\t\t.exalted{\n";
	print "\t\t	color:\t#2ee6e6;\n";
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
