use strict;
use warnings;
use JSON;
use LWP::Simple;
use Getopt::Long;
use List::Util 1.33 'any';
use Data::Dumper;

BEGIN {
	require 'BNet/Utils.pm';
	require 'BNet/Misc.pm';
	require 'BNet/Achievements.pm';
	require 'BNet/Professions.pm';
}


sub findinarray($@) {
	my ($D1, @D0) = @_;
	my $match_found = any { /$D1/ } @D0;
	if ($match_found == 1) {
		my $myreturn = "yes";
		return $myreturn;
	} else {
		my $myreturn = "no";
		return $myreturn;
	}
}


sub __main__() {
	my $file;
	my %keys;
	my $apikey;
	my $module;
	GetOptions (
		'f=s' => \$file,
		'a=s' => \$apikey,
		'm=s' => \$module,
	);

	open(my $yourhandle, '<:encoding(UCS-2le)', $file) # always use a variable here containing filename
		or die "Unable to open file, $!";

	my @entire_file=<$yourhandle>;
	
	
	my $userinfo00;
	my $userinfo01;
	my $userinfo02;
	my $userinfo03;
	my $userinfo04;
	my $userinfo05;
	my $userinfo06;
	my $userinfo07;
	my $userinfo08;
	my $userinfo09;
	my $userinfo10;
	my $userinfo11;
	my $userinfo12;
	my $userinfo13;
	my $userinfo14;
	my $userinfo15;


	my $count = 0;
	
	my $fetchtype = 'quests,items,professions,achievements,reputation';
	BNet::Utils::htmlheadprint();
	BNet::Utils::tableprint("begintable");
	BNet::Utils::tableprint("beginrow");
	BNet::Utils::tableprint("beginth");
	print "\t\t\t\t<div>Character</div>";
	print "\t\t\t\t<div>Server</div>";
	print "\t\t\t\t<div>Average iLvl</div>";
	print "\t\t\t\t<div>Wowhead</div>";
	print "\t\t\t\t<div>Level</div>";
	BNet::Utils::tableprint("endth");

	foreach my $f (@entire_file) {
		my @columns = split (/\t/, $f);
		if( defined($columns[2]) ){
			chomp ($columns[2]);
		}
		$columns[0] =~ s/^\x{FEFF}//;
		if ($count == 0) {
			if( defined($columns[1]) ){
				$userinfo00 =  BNet::Utils::downloadinfo($columns[1], $columns[0], $fetchtype, $apikey);
				$count++;
				my $classid = BNet::Utils::determineclass($userinfo00);
				my $ail = BNet::Utils::retrieveail($userinfo00);
				BNet::Utils::tableprint($classid);
				BNet::Utils::printcharacter($columns[0], $columns[1], $ail);
				if( defined($columns[2]) ){
					print "\n\t\t\t\t<div><a href=\"";
					chomp ($columns[2]);
					print $columns[2];
					print "\">WH</a></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo00->{'level'};
					print "</div>\n";
				} else {
					print "\n\t\t\t\t<div></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo00->{'level'};
					print "</div>\n";
				}
				BNet::Utils::tableprint("endtd");
			}
		} elsif ($count == 1) {
			if( defined($columns[1]) ){
				$userinfo01 =  BNet::Utils::downloadinfo($columns[1], $columns[0], $fetchtype, $apikey);
				$count++;
				my $classid = BNet::Utils::determineclass($userinfo01);
				my $ail = BNet::Utils::retrieveail($userinfo01);
				BNet::Utils::tableprint($classid);
				BNet::Utils::printcharacter($columns[0], $columns[1], $ail);
				if( defined($columns[2]) ){
					print "\n\t\t\t\t<div><a href=\"";
					chomp ($columns[2]);
					print $columns[2];
					print "\">WH</a></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo01->{'level'};
					print "</div>\n";
				} else {
					print "\n\t\t\t\t<div></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo01->{'level'};
					print "</div>\n";
				}
				BNet::Utils::tableprint("endtd");
			}
		} elsif ($count == 2) {
			if( defined($columns[1]) ){
				$userinfo02 =  BNet::Utils::downloadinfo($columns[1], $columns[0], $fetchtype, $apikey);
				$count++;
				my $classid = BNet::Utils::determineclass($userinfo02);
				my $ail = BNet::Utils::retrieveail($userinfo02);
				BNet::Utils::tableprint($classid);
				BNet::Utils::printcharacter($columns[0], $columns[1], $ail);
				if( defined($columns[2]) ){
					print "\n\t\t\t\t<div><a href=\"";
					chomp ($columns[2]);
					print $columns[2];
					print "\">WH</a></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo02->{'level'};
					print "</div>\n";
				} else {
					print "\n\t\t\t\t<div></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo02->{'level'};
					print "</div>\n";
				}
				BNet::Utils::tableprint("endtd");
			}
		} elsif ($count == 3) {
			if( defined($columns[1]) ){
				$userinfo03 =  BNet::Utils::downloadinfo($columns[1], $columns[0], $fetchtype, $apikey);
				$count++;
				my $classid = BNet::Utils::determineclass($userinfo03);
				my $ail = BNet::Utils::retrieveail($userinfo03);
				BNet::Utils::tableprint($classid);
				BNet::Utils::printcharacter($columns[0], $columns[1], $ail);
				if( defined($columns[2]) ){
					print "\n\t\t\t\t<div><a href=\"";
					chomp ($columns[2]);
					print $columns[2];
					print "\">WH</a></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo03->{'level'};
					print "</div>\n";
				} else {
					print "\n\t\t\t\t<div></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo03->{'level'};
					print "</div>\n";
				}
				BNet::Utils::tableprint("endtd");
			}
		} elsif ($count == 4) {
			if( defined($columns[1]) ){
				$userinfo04 =  BNet::Utils::downloadinfo($columns[1], $columns[0], $fetchtype, $apikey);
				$count++;
				my $classid = BNet::Utils::determineclass($userinfo04);
				my $ail = BNet::Utils::retrieveail($userinfo04);
				BNet::Utils::tableprint($classid);
				BNet::Utils::printcharacter($columns[0], $columns[1], $ail);
				if( defined($columns[2]) ){
					print "\n\t\t\t\t<div><a href=\"";
					chomp ($columns[2]);
					print $columns[2];
					print "\">WH</a></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo04->{'level'};
					print "</div>\n";
				} else {
					print "\n\t\t\t\t<div></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo04->{'level'};
					print "</div>\n";
				}
				BNet::Utils::tableprint("endtd");
			}
		} elsif ($count == 5) {
			if( defined($columns[1]) ){
				$userinfo05 =  BNet::Utils::downloadinfo($columns[1], $columns[0], $fetchtype, $apikey);
				$count++;
				my $classid = BNet::Utils::determineclass($userinfo05);
				my $ail = BNet::Utils::retrieveail($userinfo05);
				BNet::Utils::tableprint($classid);
				BNet::Utils::printcharacter($columns[0], $columns[1], $ail);
				if( defined($columns[2]) ){
					print "\n\t\t\t\t<div><a href=\"";
					chomp ($columns[2]);
					print $columns[2];
					print "\">WH</a></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo05->{'level'};
					print "</div>\n";
				} else {
					print "\n\t\t\t\t<div></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo05->{'level'};
					print "</div>\n";
				}
				BNet::Utils::tableprint("endtd");
			}
		} elsif ($count == 6) {
			if( defined($columns[1]) ){
				$userinfo06 =  BNet::Utils::downloadinfo($columns[1], $columns[0], $fetchtype, $apikey);
				$count++;
				my $classid = BNet::Utils::determineclass($userinfo06);
				my $ail = BNet::Utils::retrieveail($userinfo06);
				BNet::Utils::tableprint($classid);
				BNet::Utils::printcharacter($columns[0], $columns[1], $ail);
				if( defined($columns[2]) ){
					print "\n\t\t\t\t<div><a href=\"";
					chomp ($columns[2]);
					print $columns[2];
					print "\">WH</a></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo06->{'level'};
					print "</div>\n";
				} else {
					print "\n\t\t\t\t<div></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo06->{'level'};
					print "</div>\n";
				}
				BNet::Utils::tableprint("endtd");
			}
		} elsif ($count == 7) {
			if( defined($columns[1]) ){
				$userinfo07 =  BNet::Utils::downloadinfo($columns[1], $columns[0], $fetchtype, $apikey);
				$count++;
				my $classid = BNet::Utils::determineclass($userinfo07);
				my $ail = BNet::Utils::retrieveail($userinfo07);
				BNet::Utils::tableprint($classid);
				BNet::Utils::printcharacter($columns[0], $columns[1], $ail);
				if( defined($columns[2]) ){
					print "\n\t\t\t\t<div><a href=\"";
					chomp ($columns[2]);
					print $columns[2];
					print "\">WH</a></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo07->{'level'};
					print "</div>\n";
				} else {
					print "\n\t\t\t\t<div></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo07->{'level'};
					print "</div>\n";
				}
				BNet::Utils::tableprint("endtd");
			}
		} elsif ($count == 8) {
			if( defined($columns[1]) ){
				$userinfo08 =  BNet::Utils::downloadinfo($columns[1], $columns[0], $fetchtype, $apikey);
				$count++;
				my $classid = BNet::Utils::determineclass($userinfo08);
				my $ail = BNet::Utils::retrieveail($userinfo08);
				BNet::Utils::tableprint($classid);
				BNet::Utils::printcharacter($columns[0], $columns[1], $ail);
				if( defined($columns[2]) ){
					print "\n\t\t\t\t<div><a href=\"";
					chomp ($columns[2]);
					print $columns[2];
					print "\">WH</a></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo08->{'level'};
					print "</div>\n";
				} else {
					print "\n\t\t\t\t<div></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo08->{'level'};
					print "</div>\n";
				}
				BNet::Utils::tableprint("endtd");
			}
		} elsif ($count == 9) {
			if( defined($columns[1]) ){
				$userinfo09 =  BNet::Utils::downloadinfo($columns[1], $columns[0], $fetchtype, $apikey);
				$count++;
				my $classid = BNet::Utils::determineclass($userinfo09);
				my $ail = BNet::Utils::retrieveail($userinfo09);
				BNet::Utils::tableprint($classid);
				BNet::Utils::printcharacter($columns[0], $columns[1], $ail);
				if( defined($columns[2]) ){
					print "\n\t\t\t\t<div><a href=\"";
					chomp ($columns[2]);
					print $columns[2];
					print "\">WH</a></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo09->{'level'};
					print "</div>\n";
				} else {
					print "\n\t\t\t\t<div></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo09->{'level'};
					print "</div>\n";
				}
				BNet::Utils::tableprint("endtd");
			}
		} elsif ($count == 10) {
			if( defined($columns[1]) ){
				$userinfo10 =  BNet::Utils::downloadinfo($columns[1], $columns[0], $fetchtype, $apikey);
				$count++;
				my $classid = BNet::Utils::determineclass($userinfo10);
				my $ail = BNet::Utils::retrieveail($userinfo10);
				BNet::Utils::tableprint($classid);
				BNet::Utils::printcharacter($columns[0], $columns[1], $ail);
				if( defined($columns[2]) ){
					print "\n\t\t\t\t<div><a href=\"";
					chomp ($columns[2]);
					print $columns[2];
					print "\">WH</a></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo10->{'level'};
					print "</div>\n";
				} else {
					print "\n\t\t\t\t<div></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo10->{'level'};
					print "</div>\n";
				}
				BNet::Utils::tableprint("endtd");
			}
		} elsif ($count == 11) {
			if( defined($columns[1]) ){
				$userinfo11 =  BNet::Utils::downloadinfo($columns[1], $columns[0], $fetchtype, $apikey);
				$count++;
				my $classid = BNet::Utils::determineclass($userinfo11);
				my $ail = BNet::Utils::retrieveail($userinfo11);
				BNet::Utils::tableprint($classid);
				BNet::Utils::printcharacter($columns[0], $columns[1], $ail);
				if( defined($columns[2]) ){
					print "\n\t\t\t\t<div><a href=\"";
					chomp ($columns[2]);
					print $columns[2];
					print "\">WH</a></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo11->{'level'};
					print "</div>\n";
				} else {
					print "\n\t\t\t\t<div></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo11->{'level'};
					print "</div>\n";
				}
				BNet::Utils::tableprint("endtd");
			}
		} elsif ($count == 12) {
			if( defined($columns[1]) ){
				$userinfo12 =  BNet::Utils::downloadinfo($columns[1], $columns[0], $fetchtype, $apikey);
				$count++;
				my $classid = BNet::Utils::determineclass($userinfo12);
				my $ail = BNet::Utils::retrieveail($userinfo12);
				BNet::Utils::tableprint($classid);
				BNet::Utils::printcharacter($columns[0], $columns[1], $ail);
				if( defined($columns[2]) ){
					print "\n\t\t\t\t<div><a href=\"";
					chomp ($columns[2]);
					print $columns[2];
					print "\">WH</a></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo12->{'level'};
					print "</div>\n";
				} else {
					print "\n\t\t\t\t<div></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo12->{'level'};
					print "</div>\n";
				}
				BNet::Utils::tableprint("endtd");
			}
		} elsif ($count == 13) {
			if( defined($columns[1]) ){
				$userinfo13 =  BNet::Utils::downloadinfo($columns[1], $columns[0], $fetchtype, $apikey);
				$count++;
				my $classid = BNet::Utils::determineclass($userinfo13);
				my $ail = BNet::Utils::retrieveail($userinfo13);
				BNet::Utils::tableprint($classid);
				BNet::Utils::printcharacter($columns[0], $columns[1], $ail);
				if( defined($columns[2]) ){
					print "\n\t\t\t\t<div><a href=\"";
					chomp ($columns[2]);
					print $columns[2];
					print "\">WH</a></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo13->{'level'};
					print "</div>\n";
				} else {
					print "\n\t\t\t\t<div></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo13->{'level'};
					print "</div>\n";
				}
				BNet::Utils::tableprint("endtd");
			}
		} elsif ($count == 14) {
			if( defined($columns[1]) ){
				$userinfo14 =  BNet::Utils::downloadinfo($columns[1], $columns[0], $fetchtype, $apikey);
				$count++;
				my $classid = BNet::Utils::determineclass($userinfo14);
				my $ail = BNet::Utils::retrieveail($userinfo14);
				BNet::Utils::tableprint($classid);
				BNet::Utils::printcharacter($columns[0], $columns[1], $ail);
				if( defined($columns[2]) ){
					print "\n\t\t\t\t<div><a href=\"";
					chomp ($columns[2]);
					print $columns[2];
					print "\">WH</a></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo14->{'level'};
					print "</div>\n";
				} else {
					print "\n\t\t\t\t<div></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo14->{'level'};
					print "</div>\n";
				}
				BNet::Utils::tableprint("endtd");
			}
		} elsif ($count == 15) {
			if( defined($columns[1]) ){
				$userinfo15 =  BNet::Utils::downloadinfo($columns[1], $columns[0], $fetchtype, $apikey);
				$count++;
				my $classid = BNet::Utils::determineclass($userinfo15);
				my $ail = BNet::Utils::retrieveail($userinfo15);
				BNet::Utils::tableprint($classid);
				BNet::Utils::printcharacter($columns[0], $columns[1], $ail);
				if( defined($columns[2]) ){
					print "\n\t\t\t\t<div><a href=\"";
					chomp ($columns[2]);
					print $columns[2];
					print "\">WH</a></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo15->{'level'};
					print "</div>\n";
				} else {
					print "\n\t\t\t\t<div></div>\n";
					print "\n\t\t\t\t<div>";
					print $userinfo15->{'level'};
					print "</div>\n";
				}
				BNet::Utils::tableprint("endtd");
			}
		}
	}
	BNet::Utils::tableprint("endrow");
	
	my %multiuserquests;
	my %multiusercriteria;
	
#		print $count;
#		print "\n";
	if (0 < $count) {
		if ($module eq "quests") {
			my @UI00 = BNet::Utils::percharquests ($userinfo00);
			my @UI00A = BNet::Utils::percharachievementscriteria ($userinfo00);
			my @UI00B = BNet::Utils::percharachievementscriteriaquantity ($userinfo00);
			foreach my $uq (@UI00) {
				my $lookupres= findinarray($uq, @UI00);
				$multiuserquests{0}{$uq} = $lookupres;
			}
			foreach my $uq (@UI00A) {
				my $lookupres= findinarray($uq, @UI00A);
				$multiusercriteria{0}{$uq} = $lookupres;
			}
		}
		if ($module eq "professions") {
			($multiuserquests{0}{profinfo}{cooking}{rank}, my @UI00RECA) = BNet::Utils::percharrecipesalchemy ($userinfo00);
			foreach my $uq (@UI00RECA) {
				my $lookupres= findinarray($uq, @UI00RECA);
				$multiusercriteria{0}{alchemy}{$uq} = $lookupres;
			}

			($multiuserquests{0}{profinfo}{cooking}{rank}, my @UI00RECB) = BNet::Utils::percharrecipesarchaeology ($userinfo00);
			foreach my $uq (@UI00RECB) {
				my $lookupres= findinarray($uq, @UI00RECB);
				$multiusercriteria{0}{archaeology}{$uq} = $lookupres;
			}

			($multiuserquests{0}{profinfo}{cooking}{rank}, my @UI00RECC) = BNet::Utils::percharrecipesblacksmithing ($userinfo00);
			foreach my $uq (@UI00RECC) {
				my $lookupres= findinarray($uq, @UI00RECC);
				$multiusercriteria{0}{blacksmithing}{$uq} = $lookupres;
			}

			($multiuserquests{0}{profinfo}{cooking}{rank}, my @UI00RECD) = BNet::Utils::percharrecipescooking ($userinfo00);
			foreach my $uq (@UI00RECD) {
				my $lookupres= findinarray($uq, @UI00RECD);
				$multiusercriteria{0}{cooking}{$uq} = $lookupres;
			}

			($multiuserquests{0}{profinfo}{cooking}{rank}, my @UI00RECE) = BNet::Utils::percharrecipesenchanting ($userinfo00);
			foreach my $uq (@UI00RECE) {
				my $lookupres= findinarray($uq, @UI00RECE);
				$multiusercriteria{0}{enchanting}{$uq} = $lookupres;
			}

			($multiuserquests{0}{profinfo}{cooking}{rank}, my @UI00RECF) = BNet::Utils::percharrecipesengineering ($userinfo00);
			foreach my $uq (@UI00RECF) {
				my $lookupres= findinarray($uq, @UI00RECF);
				$multiusercriteria{0}{engineering}{$uq} = $lookupres;
			}

			($multiuserquests{0}{profinfo}{cooking}{rank}, my @UI00RECG) = BNet::Utils::percharrecipesfishing ($userinfo00);
			foreach my $uq (@UI00RECG) {
				my $lookupres= findinarray($uq, @UI00RECG);
				$multiusercriteria{0}{fishing}{$uq} = $lookupres;
			}

			($multiuserquests{0}{profinfo}{cooking}{rank}, my @UI00RECH) = BNet::Utils::percharrecipesherbalism ($userinfo00);
			foreach my $uq (@UI00RECH) {
				my $lookupres= findinarray($uq, @UI00RECH);
				$multiusercriteria{0}{herbalism}{$uq} = $lookupres;
			}

			($multiuserquests{0}{profinfo}{cooking}{rank}, my @UI00RECI) = BNet::Utils::percharrecipesinscription ($userinfo00);
			foreach my $uq (@UI00RECI) {
				my $lookupres= findinarray($uq, @UI00RECI);
				$multiusercriteria{0}{inscription}{$uq} = $lookupres;
			}

			($multiuserquests{0}{profinfo}{cooking}{rank}, my @UI00RECJ) = BNet::Utils::percharrecipesjewelcrafting ($userinfo00);
			foreach my $uq (@UI00RECJ) {
				my $lookupres= findinarray($uq, @UI00RECJ);
				$multiusercriteria{0}{jewelcrafting}{$uq} = $lookupres;
			}

			($multiuserquests{0}{profinfo}{cooking}{rank}, my @UI00RECK) = BNet::Utils::percharrecipesleatherworking ($userinfo00);
			foreach my $uq (@UI00RECK) {
				my $lookupres= findinarray($uq, @UI00RECK);
				$multiusercriteria{0}{leatherworking}{$uq} = $lookupres;
			}

			($multiuserquests{0}{profinfo}{cooking}{rank}, my @UI00RECL) = BNet::Utils::percharrecipesmining ($userinfo00);
			foreach my $uq (@UI00RECL) {
				my $lookupres= findinarray($uq, @UI00RECL);
				$multiusercriteria{0}{mining}{$uq} = $lookupres;
			}

			($multiuserquests{0}{profinfo}{cooking}{rank}, my @UI00RECM) = BNet::Utils::percharrecipesskinning ($userinfo00);
			foreach my $uq (@UI00RECM) {
				my $lookupres= findinarray($uq, @UI00RECM);
				$multiusercriteria{0}{skinning}{$uq} = $lookupres;
			}

			($multiuserquests{0}{profinfo}{cooking}{rank}, my @UI00RECN) = BNet::Utils::percharrecipestailoring ($userinfo00);
			foreach my $uq (@UI00RECN) {
				my $lookupres= findinarray($uq, @UI00RECN);
				$multiusercriteria{0}{tailoring}{$uq} = $lookupres;
			}
		}
	}
	if (1 < $count) {
		if ($module eq "quests") {
			my @UI01 = BNet::Utils::percharquests ($userinfo01);
			my @UI01A = BNet::Utils::percharachievementscriteria ($userinfo01);
			my @UI01B = BNet::Utils::percharachievementscriteriaquantity ($userinfo01);
			foreach my $uq (@UI01) {
				my $lookupres= findinarray($uq, @UI01);
				$multiuserquests{1}{$uq} = $lookupres;
			}
			foreach my $uq (@UI01A) {
				my $lookupres= findinarray($uq, @UI01A);
				$multiusercriteria{1}{$uq} = $lookupres;
			}
		}
		if ($module eq "professions") {
			($multiuserquests{1}{profinfo}{cooking}{rank}, my @UI01RECA) = BNet::Utils::percharrecipesalchemy ($userinfo01);
			foreach my $uq (@UI01RECA) {
				my $lookupres= findinarray($uq, @UI01RECA);
				$multiusercriteria{1}{alchemy}{$uq} = $lookupres;
			}

			($multiuserquests{1}{profinfo}{cooking}{rank}, my @UI01RECB) = BNet::Utils::percharrecipesarchaeology ($userinfo01);
			foreach my $uq (@UI01RECB) {
				my $lookupres= findinarray($uq, @UI01RECB);
				$multiusercriteria{1}{archaeology}{$uq} = $lookupres;
			}

			($multiuserquests{1}{profinfo}{cooking}{rank}, my @UI01RECC) = BNet::Utils::percharrecipesblacksmithing ($userinfo01);
			foreach my $uq (@UI01RECC) {
				my $lookupres= findinarray($uq, @UI01RECC);
				$multiusercriteria{1}{blacksmithing}{$uq} = $lookupres;
			}

			($multiuserquests{1}{profinfo}{cooking}{rank}, my @UI01RECD) = BNet::Utils::percharrecipescooking ($userinfo01);
			foreach my $uq (@UI01RECD) {
				my $lookupres= findinarray($uq, @UI01RECD);
				$multiusercriteria{1}{cooking}{$uq} = $lookupres;
			}

			($multiuserquests{1}{profinfo}{cooking}{rank}, my @UI01RECE) = BNet::Utils::percharrecipesenchanting ($userinfo01);
			foreach my $uq (@UI01RECE) {
				my $lookupres= findinarray($uq, @UI01RECE);
				$multiusercriteria{1}{enchanting}{$uq} = $lookupres;
			}

			($multiuserquests{1}{profinfo}{cooking}{rank}, my @UI01RECF) = BNet::Utils::percharrecipesengineering ($userinfo01);
			foreach my $uq (@UI01RECF) {
				my $lookupres= findinarray($uq, @UI01RECF);
				$multiusercriteria{1}{engineering}{$uq} = $lookupres;
			}

			($multiuserquests{1}{profinfo}{cooking}{rank}, my @UI01RECG) = BNet::Utils::percharrecipesfishing ($userinfo01);
			foreach my $uq (@UI01RECG) {
				my $lookupres= findinarray($uq, @UI01RECG);
				$multiusercriteria{1}{fishing}{$uq} = $lookupres;
			}

			($multiuserquests{1}{profinfo}{cooking}{rank}, my @UI01RECH) = BNet::Utils::percharrecipesherbalism ($userinfo01);
			foreach my $uq (@UI01RECH) {
				my $lookupres= findinarray($uq, @UI01RECH);
				$multiusercriteria{1}{herbalism}{$uq} = $lookupres;
			}

			($multiuserquests{1}{profinfo}{cooking}{rank}, my @UI01RECI) = BNet::Utils::percharrecipesinscription ($userinfo01);
			foreach my $uq (@UI01RECI) {
				my $lookupres= findinarray($uq, @UI01RECI);
				$multiusercriteria{1}{inscription}{$uq} = $lookupres;
			}

			($multiuserquests{1}{profinfo}{cooking}{rank}, my @UI01RECJ) = BNet::Utils::percharrecipesjewelcrafting ($userinfo01);
			foreach my $uq (@UI01RECJ) {
				my $lookupres= findinarray($uq, @UI01RECJ);
				$multiusercriteria{1}{jewelcrafting}{$uq} = $lookupres;
			}

			($multiuserquests{1}{profinfo}{cooking}{rank}, my @UI01RECK) = BNet::Utils::percharrecipesleatherworking ($userinfo01);
			foreach my $uq (@UI01RECK) {
				my $lookupres= findinarray($uq, @UI01RECK);
				$multiusercriteria{1}{leatherworking}{$uq} = $lookupres;
			}

			($multiuserquests{1}{profinfo}{cooking}{rank}, my @UI01RECL) = BNet::Utils::percharrecipesmining ($userinfo01);
			foreach my $uq (@UI01RECL) {
				my $lookupres= findinarray($uq, @UI01RECL);
				$multiusercriteria{1}{mining}{$uq} = $lookupres;
			}

			($multiuserquests{1}{profinfo}{cooking}{rank}, my @UI01RECM) = BNet::Utils::percharrecipesskinning ($userinfo01);
			foreach my $uq (@UI01RECM) {
				my $lookupres= findinarray($uq, @UI01RECM);
				$multiusercriteria{1}{skinning}{$uq} = $lookupres;
			}

			($multiuserquests{1}{profinfo}{cooking}{rank}, my @UI01RECN) = BNet::Utils::percharrecipestailoring ($userinfo01);
			foreach my $uq (@UI01RECN) {
				my $lookupres= findinarray($uq, @UI01RECN);
				$multiusercriteria{1}{tailoring}{$uq} = $lookupres;
			}
		}
	}
	if (2 < $count) {
		if ($module eq "quests") {
			my @UI02 = BNet::Utils::percharquests ($userinfo02);
			my @UI02A = BNet::Utils::percharachievementscriteria ($userinfo02);
			my @UI02B = BNet::Utils::percharachievementscriteriaquantity ($userinfo02);
			foreach my $uq (@UI02) {
				my $lookupres= findinarray($uq, @UI02);
				$multiuserquests{2}{$uq} = $lookupres;
			}
			foreach my $uq (@UI02A) {
				my $lookupres= findinarray($uq, @UI02A);
				$multiusercriteria{2}{$uq} = $lookupres;
			}
		}
		if ($module eq "professions") {
			($multiuserquests{2}{profinfo}{cooking}{rank}, my @UI02RECA) = BNet::Utils::percharrecipesalchemy ($userinfo02);
			foreach my $uq (@UI02RECA) {
				my $lookupres= findinarray($uq, @UI02RECA);
				$multiusercriteria{2}{alchemy}{$uq} = $lookupres;
			}

			($multiuserquests{2}{profinfo}{cooking}{rank}, my @UI02RECB) = BNet::Utils::percharrecipesarchaeology ($userinfo02);
			foreach my $uq (@UI02RECB) {
				my $lookupres= findinarray($uq, @UI02RECB);
				$multiusercriteria{2}{archaeology}{$uq} = $lookupres;
			}

			($multiuserquests{2}{profinfo}{cooking}{rank}, my @UI02RECC) = BNet::Utils::percharrecipesblacksmithing ($userinfo02);
			foreach my $uq (@UI02RECC) {
				my $lookupres= findinarray($uq, @UI02RECC);
				$multiusercriteria{2}{blacksmithing}{$uq} = $lookupres;
			}

			($multiuserquests{2}{profinfo}{cooking}{rank}, my @UI02RECD) = BNet::Utils::percharrecipescooking ($userinfo02);
			foreach my $uq (@UI02RECD) {
				my $lookupres= findinarray($uq, @UI02RECD);
				$multiusercriteria{2}{cooking}{$uq} = $lookupres;
			}

			($multiuserquests{2}{profinfo}{cooking}{rank}, my @UI02RECE) = BNet::Utils::percharrecipesenchanting ($userinfo02);
			foreach my $uq (@UI02RECE) {
				my $lookupres= findinarray($uq, @UI02RECE);
				$multiusercriteria{2}{enchanting}{$uq} = $lookupres;
			}

			($multiuserquests{2}{profinfo}{cooking}{rank}, my @UI02RECF) = BNet::Utils::percharrecipesengineering ($userinfo02);
			foreach my $uq (@UI02RECF) {
				my $lookupres= findinarray($uq, @UI02RECF);
				$multiusercriteria{2}{engineering}{$uq} = $lookupres;
			}

			($multiuserquests{2}{profinfo}{cooking}{rank}, my @UI02RECG) = BNet::Utils::percharrecipesfishing ($userinfo02);
			foreach my $uq (@UI02RECG) {
				my $lookupres= findinarray($uq, @UI02RECG);
				$multiusercriteria{2}{fishing}{$uq} = $lookupres;
			}

			($multiuserquests{2}{profinfo}{cooking}{rank}, my @UI02RECH) = BNet::Utils::percharrecipesherbalism ($userinfo02);
			foreach my $uq (@UI02RECH) {
				my $lookupres= findinarray($uq, @UI02RECH);
				$multiusercriteria{2}{herbalism}{$uq} = $lookupres;
			}

			($multiuserquests{2}{profinfo}{cooking}{rank}, my @UI02RECI) = BNet::Utils::percharrecipesinscription ($userinfo02);
			foreach my $uq (@UI02RECI) {
				my $lookupres= findinarray($uq, @UI02RECI);
				$multiusercriteria{2}{inscription}{$uq} = $lookupres;
			}

			($multiuserquests{2}{profinfo}{cooking}{rank}, my @UI02RECJ) = BNet::Utils::percharrecipesjewelcrafting ($userinfo02);
			foreach my $uq (@UI02RECJ) {
				my $lookupres= findinarray($uq, @UI02RECJ);
				$multiusercriteria{2}{jewelcrafting}{$uq} = $lookupres;
			}

			($multiuserquests{2}{profinfo}{cooking}{rank}, my @UI02RECK) = BNet::Utils::percharrecipesleatherworking ($userinfo02);
			foreach my $uq (@UI02RECK) {
				my $lookupres= findinarray($uq, @UI02RECK);
				$multiusercriteria{2}{leatherworking}{$uq} = $lookupres;
			}

			($multiuserquests{2}{profinfo}{cooking}{rank}, my @UI02RECL) = BNet::Utils::percharrecipesmining ($userinfo02);
			foreach my $uq (@UI02RECL) {
				my $lookupres= findinarray($uq, @UI02RECL);
				$multiusercriteria{2}{mining}{$uq} = $lookupres;
			}

			($multiuserquests{2}{profinfo}{cooking}{rank}, my @UI02RECM) = BNet::Utils::percharrecipesskinning ($userinfo02);
			foreach my $uq (@UI02RECM) {
				my $lookupres= findinarray($uq, @UI02RECM);
				$multiusercriteria{2}{skinning}{$uq} = $lookupres;
			}

			($multiuserquests{2}{profinfo}{cooking}{rank}, my @UI02RECN) = BNet::Utils::percharrecipestailoring ($userinfo02);
			foreach my $uq (@UI02RECN) {
				my $lookupres= findinarray($uq, @UI02RECN);
				$multiusercriteria{2}{tailoring}{$uq} = $lookupres;
			}
		}
	}
	if (3 < $count) {
		if ($module eq "quests") {
			my @UI03 = BNet::Utils::percharquests ($userinfo03);
			my @UI03A = BNet::Utils::percharachievementscriteria ($userinfo03);
			my @UI03B = BNet::Utils::percharachievementscriteriaquantity ($userinfo03);
			foreach my $uq (@UI03) {
				my $lookupres= findinarray($uq, @UI03);
				$multiuserquests{3}{$uq} = $lookupres;
			}
			foreach my $uq (@UI03A) {
				my $lookupres= findinarray($uq, @UI03A);
				$multiusercriteria{3}{$uq} = $lookupres;
			}
		}
		if ($module eq "professions") {
			($multiuserquests{3}{profinfo}{cooking}{rank}, my @UI03RECA) = BNet::Utils::percharrecipesalchemy ($userinfo03);
			foreach my $uq (@UI03RECA) {
				my $lookupres= findinarray($uq, @UI03RECA);
				$multiusercriteria{3}{alchemy}{$uq} = $lookupres;
			}

			($multiuserquests{3}{profinfo}{cooking}{rank}, my @UI03RECB) = BNet::Utils::percharrecipesarchaeology ($userinfo03);
			foreach my $uq (@UI03RECB) {
				my $lookupres= findinarray($uq, @UI03RECB);
				$multiusercriteria{3}{archaeology}{$uq} = $lookupres;
			}

			($multiuserquests{3}{profinfo}{cooking}{rank}, my @UI03RECC) = BNet::Utils::percharrecipesblacksmithing ($userinfo03);
			foreach my $uq (@UI03RECC) {
				my $lookupres= findinarray($uq, @UI03RECC);
				$multiusercriteria{3}{blacksmithing}{$uq} = $lookupres;
			}

			($multiuserquests{3}{profinfo}{cooking}{rank}, my @UI03RECD) = BNet::Utils::percharrecipescooking ($userinfo03);
			foreach my $uq (@UI03RECD) {
				my $lookupres= findinarray($uq, @UI03RECD);
				$multiusercriteria{3}{cooking}{$uq} = $lookupres;
			}

			($multiuserquests{3}{profinfo}{cooking}{rank}, my @UI03RECE) = BNet::Utils::percharrecipesenchanting ($userinfo03);
			foreach my $uq (@UI03RECE) {
				my $lookupres= findinarray($uq, @UI03RECE);
				$multiusercriteria{3}{enchanting}{$uq} = $lookupres;
			}

			($multiuserquests{3}{profinfo}{cooking}{rank}, my @UI03RECF) = BNet::Utils::percharrecipesengineering ($userinfo03);
			foreach my $uq (@UI03RECF) {
				my $lookupres= findinarray($uq, @UI03RECF);
				$multiusercriteria{3}{engineering}{$uq} = $lookupres;
			}

			($multiuserquests{3}{profinfo}{cooking}{rank}, my @UI03RECG) = BNet::Utils::percharrecipesfishing ($userinfo03);
			foreach my $uq (@UI03RECG) {
				my $lookupres= findinarray($uq, @UI03RECG);
				$multiusercriteria{3}{fishing}{$uq} = $lookupres;
			}

			($multiuserquests{3}{profinfo}{cooking}{rank}, my @UI03RECH) = BNet::Utils::percharrecipesherbalism ($userinfo03);
			foreach my $uq (@UI03RECH) {
				my $lookupres= findinarray($uq, @UI03RECH);
				$multiusercriteria{3}{herbalism}{$uq} = $lookupres;
			}

			($multiuserquests{3}{profinfo}{cooking}{rank}, my @UI03RECI) = BNet::Utils::percharrecipesinscription ($userinfo03);
			foreach my $uq (@UI03RECI) {
				my $lookupres= findinarray($uq, @UI03RECI);
				$multiusercriteria{3}{inscription}{$uq} = $lookupres;
			}

			($multiuserquests{3}{profinfo}{cooking}{rank}, my @UI03RECJ) = BNet::Utils::percharrecipesjewelcrafting ($userinfo03);
			foreach my $uq (@UI03RECJ) {
				my $lookupres= findinarray($uq, @UI03RECJ);
				$multiusercriteria{3}{jewelcrafting}{$uq} = $lookupres;
			}

			($multiuserquests{3}{profinfo}{cooking}{rank}, my @UI03RECK) = BNet::Utils::percharrecipesleatherworking ($userinfo03);
			foreach my $uq (@UI03RECK) {
				my $lookupres= findinarray($uq, @UI03RECK);
				$multiusercriteria{3}{leatherworking}{$uq} = $lookupres;
			}

			($multiuserquests{3}{profinfo}{cooking}{rank}, my @UI03RECL) = BNet::Utils::percharrecipesmining ($userinfo03);
			foreach my $uq (@UI03RECL) {
				my $lookupres= findinarray($uq, @UI03RECL);
				$multiusercriteria{3}{mining}{$uq} = $lookupres;
			}

			($multiuserquests{3}{profinfo}{cooking}{rank}, my @UI03RECM) = BNet::Utils::percharrecipesskinning ($userinfo03);
			foreach my $uq (@UI03RECM) {
				my $lookupres= findinarray($uq, @UI03RECM);
				$multiusercriteria{3}{skinning}{$uq} = $lookupres;
			}

			($multiuserquests{3}{profinfo}{cooking}{rank}, my @UI03RECN) = BNet::Utils::percharrecipestailoring ($userinfo03);
			foreach my $uq (@UI03RECN) {
				my $lookupres= findinarray($uq, @UI03RECN);
				$multiusercriteria{3}{tailoring}{$uq} = $lookupres;
			}
		}
	}
	if (4 < $count) {
		if ($module eq "quests") {
			my @UI04 = BNet::Utils::percharquests ($userinfo04);
			my @UI04A = BNet::Utils::percharachievementscriteria ($userinfo04);
			my @UI04B = BNet::Utils::percharachievementscriteriaquantity ($userinfo04);
			foreach my $uq (@UI04) {
				my $lookupres= findinarray($uq, @UI04);
				$multiuserquests{4}{$uq} = $lookupres;
			}
			foreach my $uq (@UI04A) {
				my $lookupres= findinarray($uq, @UI04A);
				$multiusercriteria{4}{$uq} = $lookupres;
			}
		}
		if ($module eq "professions") {
			($multiuserquests{4}{profinfo}{cooking}{rank}, my @UI04RECA) = BNet::Utils::percharrecipesalchemy ($userinfo04);
			foreach my $uq (@UI04RECA) {
				my $lookupres= findinarray($uq, @UI04RECA);
				$multiusercriteria{4}{alchemy}{$uq} = $lookupres;
			}

			($multiuserquests{4}{profinfo}{cooking}{rank}, my @UI04RECB) = BNet::Utils::percharrecipesarchaeology ($userinfo04);
			foreach my $uq (@UI04RECB) {
				my $lookupres= findinarray($uq, @UI04RECB);
				$multiusercriteria{4}{archaeology}{$uq} = $lookupres;
			}

			($multiuserquests{4}{profinfo}{cooking}{rank}, my @UI04RECC) = BNet::Utils::percharrecipesblacksmithing ($userinfo04);
			foreach my $uq (@UI04RECC) {
				my $lookupres= findinarray($uq, @UI04RECC);
				$multiusercriteria{4}{blacksmithing}{$uq} = $lookupres;
			}

			($multiuserquests{4}{profinfo}{cooking}{rank}, my @UI04RECD) = BNet::Utils::percharrecipescooking ($userinfo04);
			foreach my $uq (@UI04RECD) {
				my $lookupres= findinarray($uq, @UI04RECD);
				$multiusercriteria{4}{cooking}{$uq} = $lookupres;
			}

			($multiuserquests{4}{profinfo}{cooking}{rank}, my @UI04RECE) = BNet::Utils::percharrecipesenchanting ($userinfo04);
			foreach my $uq (@UI04RECE) {
				my $lookupres= findinarray($uq, @UI04RECE);
				$multiusercriteria{4}{enchanting}{$uq} = $lookupres;
			}

			($multiuserquests{4}{profinfo}{cooking}{rank}, my @UI04RECF) = BNet::Utils::percharrecipesengineering ($userinfo04);
			foreach my $uq (@UI04RECF) {
				my $lookupres= findinarray($uq, @UI04RECF);
				$multiusercriteria{4}{engineering}{$uq} = $lookupres;
			}

			($multiuserquests{4}{profinfo}{cooking}{rank}, my @UI04RECG) = BNet::Utils::percharrecipesfishing ($userinfo04);
			foreach my $uq (@UI04RECG) {
				my $lookupres= findinarray($uq, @UI04RECG);
				$multiusercriteria{4}{fishing}{$uq} = $lookupres;
			}

			($multiuserquests{4}{profinfo}{cooking}{rank}, my @UI04RECH) = BNet::Utils::percharrecipesherbalism ($userinfo04);
			foreach my $uq (@UI04RECH) {
				my $lookupres= findinarray($uq, @UI04RECH);
				$multiusercriteria{4}{herbalism}{$uq} = $lookupres;
			}

			($multiuserquests{4}{profinfo}{cooking}{rank}, my @UI04RECI) = BNet::Utils::percharrecipesinscription ($userinfo04);
			foreach my $uq (@UI04RECI) {
				my $lookupres= findinarray($uq, @UI04RECI);
				$multiusercriteria{4}{inscription}{$uq} = $lookupres;
			}

			($multiuserquests{4}{profinfo}{cooking}{rank}, my @UI04RECJ) = BNet::Utils::percharrecipesjewelcrafting ($userinfo04);
			foreach my $uq (@UI04RECJ) {
				my $lookupres= findinarray($uq, @UI04RECJ);
				$multiusercriteria{4}{jewelcrafting}{$uq} = $lookupres;
			}

			($multiuserquests{4}{profinfo}{cooking}{rank}, my @UI04RECK) = BNet::Utils::percharrecipesleatherworking ($userinfo04);
			foreach my $uq (@UI04RECK) {
				my $lookupres= findinarray($uq, @UI04RECK);
				$multiusercriteria{4}{leatherworking}{$uq} = $lookupres;
			}

			($multiuserquests{4}{profinfo}{cooking}{rank}, my @UI04RECL) = BNet::Utils::percharrecipesmining ($userinfo04);
			foreach my $uq (@UI04RECL) {
				my $lookupres= findinarray($uq, @UI04RECL);
				$multiusercriteria{4}{mining}{$uq} = $lookupres;
			}

			($multiuserquests{4}{profinfo}{cooking}{rank}, my @UI04RECM) = BNet::Utils::percharrecipesskinning ($userinfo04);
			foreach my $uq (@UI04RECM) {
				my $lookupres= findinarray($uq, @UI04RECM);
				$multiusercriteria{4}{skinning}{$uq} = $lookupres;
			}

			($multiuserquests{4}{profinfo}{cooking}{rank}, my @UI04RECN) = BNet::Utils::percharrecipestailoring ($userinfo04);
			foreach my $uq (@UI04RECN) {
				my $lookupres= findinarray($uq, @UI04RECN);
				$multiusercriteria{4}{tailoring}{$uq} = $lookupres;
			}
		}
	}
	if (5 < $count) {
		if ($module eq "quests") {
			my @UI05 = BNet::Utils::percharquests ($userinfo05);
			my @UI05A = BNet::Utils::percharachievementscriteria ($userinfo05);
			my @UI05B = BNet::Utils::percharachievementscriteriaquantity ($userinfo05);
			foreach my $uq (@UI05) {
				my $lookupres= findinarray($uq, @UI05);
				$multiuserquests{5}{$uq} = $lookupres;
			}
			foreach my $uq (@UI05A) {
				my $lookupres= findinarray($uq, @UI05A);
				$multiusercriteria{5}{$uq} = $lookupres;
			}
		}
		if ($module eq "professions") {
			($multiuserquests{5}{profinfo}{cooking}{rank}, my @UI05RECA) = BNet::Utils::percharrecipesalchemy ($userinfo05);
			foreach my $uq (@UI05RECA) {
				my $lookupres= findinarray($uq, @UI05RECA);
				$multiusercriteria{5}{alchemy}{$uq} = $lookupres;
			}

			($multiuserquests{5}{profinfo}{cooking}{rank}, my @UI05RECB) = BNet::Utils::percharrecipesarchaeology ($userinfo05);
			foreach my $uq (@UI05RECB) {
				my $lookupres= findinarray($uq, @UI05RECB);
				$multiusercriteria{5}{archaeology}{$uq} = $lookupres;
			}

			($multiuserquests{5}{profinfo}{cooking}{rank}, my @UI05RECC) = BNet::Utils::percharrecipesblacksmithing ($userinfo05);
			foreach my $uq (@UI05RECC) {
				my $lookupres= findinarray($uq, @UI05RECC);
				$multiusercriteria{5}{blacksmithing}{$uq} = $lookupres;
			}

			($multiuserquests{5}{profinfo}{cooking}{rank}, my @UI05RECD) = BNet::Utils::percharrecipescooking ($userinfo05);
			foreach my $uq (@UI05RECD) {
				my $lookupres= findinarray($uq, @UI05RECD);
				$multiusercriteria{5}{cooking}{$uq} = $lookupres;
			}

			($multiuserquests{5}{profinfo}{cooking}{rank}, my @UI05RECE) = BNet::Utils::percharrecipesenchanting ($userinfo05);
			foreach my $uq (@UI05RECE) {
				my $lookupres= findinarray($uq, @UI05RECE);
				$multiusercriteria{5}{enchanting}{$uq} = $lookupres;
			}

			($multiuserquests{5}{profinfo}{cooking}{rank}, my @UI05RECF) = BNet::Utils::percharrecipesengineering ($userinfo05);
			foreach my $uq (@UI05RECF) {
				my $lookupres= findinarray($uq, @UI05RECF);
				$multiusercriteria{5}{engineering}{$uq} = $lookupres;
			}

			($multiuserquests{5}{profinfo}{cooking}{rank}, my @UI05RECG) = BNet::Utils::percharrecipesfishing ($userinfo05);
			foreach my $uq (@UI05RECG) {
				my $lookupres= findinarray($uq, @UI05RECG);
				$multiusercriteria{5}{fishing}{$uq} = $lookupres;
			}

			($multiuserquests{5}{profinfo}{cooking}{rank}, my @UI05RECH) = BNet::Utils::percharrecipesherbalism ($userinfo05);
			foreach my $uq (@UI05RECH) {
				my $lookupres= findinarray($uq, @UI05RECH);
				$multiusercriteria{5}{herbalism}{$uq} = $lookupres;
			}

			($multiuserquests{5}{profinfo}{cooking}{rank}, my @UI05RECI) = BNet::Utils::percharrecipesinscription ($userinfo05);
			foreach my $uq (@UI05RECI) {
				my $lookupres= findinarray($uq, @UI05RECI);
				$multiusercriteria{5}{inscription}{$uq} = $lookupres;
			}

			($multiuserquests{5}{profinfo}{cooking}{rank}, my @UI05RECJ) = BNet::Utils::percharrecipesjewelcrafting ($userinfo05);
			foreach my $uq (@UI05RECJ) {
				my $lookupres= findinarray($uq, @UI05RECJ);
				$multiusercriteria{5}{jewelcrafting}{$uq} = $lookupres;
			}

			($multiuserquests{5}{profinfo}{cooking}{rank}, my @UI05RECK) = BNet::Utils::percharrecipesleatherworking ($userinfo05);
			foreach my $uq (@UI05RECK) {
				my $lookupres= findinarray($uq, @UI05RECK);
				$multiusercriteria{5}{leatherworking}{$uq} = $lookupres;
			}

			($multiuserquests{5}{profinfo}{cooking}{rank}, my @UI05RECL) = BNet::Utils::percharrecipesmining ($userinfo05);
			foreach my $uq (@UI05RECL) {
				my $lookupres= findinarray($uq, @UI05RECL);
				$multiusercriteria{5}{mining}{$uq} = $lookupres;
			}

			($multiuserquests{5}{profinfo}{cooking}{rank}, my @UI05RECM) = BNet::Utils::percharrecipesskinning ($userinfo05);
			foreach my $uq (@UI05RECM) {
				my $lookupres= findinarray($uq, @UI05RECM);
				$multiusercriteria{5}{skinning}{$uq} = $lookupres;
			}

			($multiuserquests{5}{profinfo}{cooking}{rank}, my @UI05RECN) = BNet::Utils::percharrecipestailoring ($userinfo05);
			foreach my $uq (@UI05RECN) {
				my $lookupres= findinarray($uq, @UI05RECN);
				$multiusercriteria{5}{tailoring}{$uq} = $lookupres;
			}
		}
	}
	if (6 < $count) {
		if ($module eq "quests") {
			my @UI06 = BNet::Utils::percharquests ($userinfo06);
			my @UI06A = BNet::Utils::percharachievementscriteria ($userinfo06);
			my @UI06B = BNet::Utils::percharachievementscriteriaquantity ($userinfo06);
			foreach my $uq (@UI06) {
				my $lookupres= findinarray($uq, @UI06);
				$multiuserquests{6}{$uq} = $lookupres;
			}
			foreach my $uq (@UI06A) {
				my $lookupres= findinarray($uq, @UI06A);
				$multiusercriteria{6}{$uq} = $lookupres;
			}
		}
		if ($module eq "professions") {
			($multiuserquests{6}{profinfo}{cooking}{rank}, my @UI06RECA) = BNet::Utils::percharrecipesalchemy ($userinfo06);
			foreach my $uq (@UI06RECA) {
				my $lookupres= findinarray($uq, @UI06RECA);
				$multiusercriteria{6}{alchemy}{$uq} = $lookupres;
			}

			($multiuserquests{6}{profinfo}{cooking}{rank}, my @UI06RECB) = BNet::Utils::percharrecipesarchaeology ($userinfo06);
			foreach my $uq (@UI06RECB) {
				my $lookupres= findinarray($uq, @UI06RECB);
				$multiusercriteria{6}{archaeology}{$uq} = $lookupres;
			}

			($multiuserquests{6}{profinfo}{cooking}{rank}, my @UI06RECC) = BNet::Utils::percharrecipesblacksmithing ($userinfo06);
			foreach my $uq (@UI06RECC) {
				my $lookupres= findinarray($uq, @UI06RECC);
				$multiusercriteria{6}{blacksmithing}{$uq} = $lookupres;
			}

			($multiuserquests{6}{profinfo}{cooking}{rank}, my @UI06RECD) = BNet::Utils::percharrecipescooking ($userinfo06);
			foreach my $uq (@UI06RECD) {
				my $lookupres= findinarray($uq, @UI06RECD);
				$multiusercriteria{6}{cooking}{$uq} = $lookupres;
			}

			($multiuserquests{6}{profinfo}{cooking}{rank}, my @UI06RECE) = BNet::Utils::percharrecipesenchanting ($userinfo06);
			foreach my $uq (@UI06RECE) {
				my $lookupres= findinarray($uq, @UI06RECE);
				$multiusercriteria{6}{enchanting}{$uq} = $lookupres;
			}

			($multiuserquests{6}{profinfo}{cooking}{rank}, my @UI06RECF) = BNet::Utils::percharrecipesengineering ($userinfo06);
			foreach my $uq (@UI06RECF) {
				my $lookupres= findinarray($uq, @UI06RECF);
				$multiusercriteria{6}{engineering}{$uq} = $lookupres;
			}

			($multiuserquests{6}{profinfo}{cooking}{rank}, my @UI06RECG) = BNet::Utils::percharrecipesfishing ($userinfo06);
			foreach my $uq (@UI06RECG) {
				my $lookupres= findinarray($uq, @UI06RECG);
				$multiusercriteria{6}{fishing}{$uq} = $lookupres;
			}

			($multiuserquests{6}{profinfo}{cooking}{rank}, my @UI06RECH) = BNet::Utils::percharrecipesherbalism ($userinfo06);
			foreach my $uq (@UI06RECH) {
				my $lookupres= findinarray($uq, @UI06RECH);
				$multiusercriteria{6}{herbalism}{$uq} = $lookupres;
			}

			($multiuserquests{6}{profinfo}{cooking}{rank}, my @UI06RECI) = BNet::Utils::percharrecipesinscription ($userinfo06);
			foreach my $uq (@UI06RECI) {
				my $lookupres= findinarray($uq, @UI06RECI);
				$multiusercriteria{6}{inscription}{$uq} = $lookupres;
			}

			($multiuserquests{6}{profinfo}{cooking}{rank}, my @UI06RECJ) = BNet::Utils::percharrecipesjewelcrafting ($userinfo06);
			foreach my $uq (@UI06RECJ) {
				my $lookupres= findinarray($uq, @UI06RECJ);
				$multiusercriteria{6}{jewelcrafting}{$uq} = $lookupres;
			}

			($multiuserquests{6}{profinfo}{cooking}{rank}, my @UI06RECK) = BNet::Utils::percharrecipesleatherworking ($userinfo06);
			foreach my $uq (@UI06RECK) {
				my $lookupres= findinarray($uq, @UI06RECK);
				$multiusercriteria{6}{leatherworking}{$uq} = $lookupres;
			}

			($multiuserquests{6}{profinfo}{cooking}{rank}, my @UI06RECL) = BNet::Utils::percharrecipesmining ($userinfo06);
			foreach my $uq (@UI06RECL) {
				my $lookupres= findinarray($uq, @UI06RECL);
				$multiusercriteria{6}{mining}{$uq} = $lookupres;
			}

			($multiuserquests{6}{profinfo}{cooking}{rank}, my @UI06RECM) = BNet::Utils::percharrecipesskinning ($userinfo06);
			foreach my $uq (@UI06RECM) {
				my $lookupres= findinarray($uq, @UI06RECM);
				$multiusercriteria{6}{skinning}{$uq} = $lookupres;
			}

			($multiuserquests{6}{profinfo}{cooking}{rank}, my @UI06RECN) = BNet::Utils::percharrecipestailoring ($userinfo06);
			foreach my $uq (@UI06RECN) {
				my $lookupres= findinarray($uq, @UI06RECN);
				$multiusercriteria{6}{tailoring}{$uq} = $lookupres;
			}
		}
	}
	if (7 < $count) {
		if ($module eq "quests") {
			my @UI07 = BNet::Utils::percharquests ($userinfo07);
			my @UI07A = BNet::Utils::percharachievementscriteria ($userinfo07);
			my @UI07B = BNet::Utils::percharachievementscriteriaquantity ($userinfo07);
			foreach my $uq (@UI07) {
				my $lookupres= findinarray($uq, @UI07);
				$multiuserquests{7}{$uq} = $lookupres;
			}
			foreach my $uq (@UI07A) {
				my $lookupres= findinarray($uq, @UI07A);
				$multiusercriteria{7}{$uq} = $lookupres;
			}
		}
		if ($module eq "professions") {
			($multiuserquests{7}{profinfo}{cooking}{rank}, my @UI07RECA) = BNet::Utils::percharrecipesalchemy ($userinfo07);
			foreach my $uq (@UI07RECA) {
				my $lookupres= findinarray($uq, @UI07RECA);
				$multiusercriteria{7}{alchemy}{$uq} = $lookupres;
			}

			($multiuserquests{7}{profinfo}{cooking}{rank}, my @UI07RECB) = BNet::Utils::percharrecipesarchaeology ($userinfo07);
			foreach my $uq (@UI07RECB) {
				my $lookupres= findinarray($uq, @UI07RECB);
				$multiusercriteria{7}{archaeology}{$uq} = $lookupres;
			}

			($multiuserquests{7}{profinfo}{cooking}{rank}, my @UI07RECC) = BNet::Utils::percharrecipesblacksmithing ($userinfo07);
			foreach my $uq (@UI07RECC) {
				my $lookupres= findinarray($uq, @UI07RECC);
				$multiusercriteria{7}{blacksmithing}{$uq} = $lookupres;
			}

			($multiuserquests{7}{profinfo}{cooking}{rank}, my @UI07RECD) = BNet::Utils::percharrecipescooking ($userinfo07);
			foreach my $uq (@UI07RECD) {
				my $lookupres= findinarray($uq, @UI07RECD);
				$multiusercriteria{7}{cooking}{$uq} = $lookupres;
			}

			($multiuserquests{7}{profinfo}{cooking}{rank}, my @UI07RECE) = BNet::Utils::percharrecipesenchanting ($userinfo07);
			foreach my $uq (@UI07RECE) {
				my $lookupres= findinarray($uq, @UI07RECE);
				$multiusercriteria{7}{enchanting}{$uq} = $lookupres;
			}

			($multiuserquests{7}{profinfo}{cooking}{rank}, my @UI07RECF) = BNet::Utils::percharrecipesengineering ($userinfo07);
			foreach my $uq (@UI07RECF) {
				my $lookupres= findinarray($uq, @UI07RECF);
				$multiusercriteria{7}{engineering}{$uq} = $lookupres;
			}

			($multiuserquests{7}{profinfo}{cooking}{rank}, my @UI07RECG) = BNet::Utils::percharrecipesfishing ($userinfo07);
			foreach my $uq (@UI07RECG) {
				my $lookupres= findinarray($uq, @UI07RECG);
				$multiusercriteria{7}{fishing}{$uq} = $lookupres;
			}

			($multiuserquests{7}{profinfo}{cooking}{rank}, my @UI07RECH) = BNet::Utils::percharrecipesherbalism ($userinfo07);
			foreach my $uq (@UI07RECH) {
				my $lookupres= findinarray($uq, @UI07RECH);
				$multiusercriteria{7}{herbalism}{$uq} = $lookupres;
			}

			($multiuserquests{7}{profinfo}{cooking}{rank}, my @UI07RECI) = BNet::Utils::percharrecipesinscription ($userinfo07);
			foreach my $uq (@UI07RECI) {
				my $lookupres= findinarray($uq, @UI07RECI);
				$multiusercriteria{7}{inscription}{$uq} = $lookupres;
			}

			($multiuserquests{7}{profinfo}{cooking}{rank}, my @UI07RECJ) = BNet::Utils::percharrecipesjewelcrafting ($userinfo07);
			foreach my $uq (@UI07RECJ) {
				my $lookupres= findinarray($uq, @UI07RECJ);
				$multiusercriteria{7}{jewelcrafting}{$uq} = $lookupres;
			}

			($multiuserquests{7}{profinfo}{cooking}{rank}, my @UI07RECK) = BNet::Utils::percharrecipesleatherworking ($userinfo07);
			foreach my $uq (@UI07RECK) {
				my $lookupres= findinarray($uq, @UI07RECK);
				$multiusercriteria{7}{leatherworking}{$uq} = $lookupres;
			}

			($multiuserquests{7}{profinfo}{cooking}{rank}, my @UI07RECL) = BNet::Utils::percharrecipesmining ($userinfo07);
			foreach my $uq (@UI07RECL) {
				my $lookupres= findinarray($uq, @UI07RECL);
				$multiusercriteria{7}{mining}{$uq} = $lookupres;
			}

			($multiuserquests{7}{profinfo}{cooking}{rank}, my @UI07RECM) = BNet::Utils::percharrecipesskinning ($userinfo07);
			foreach my $uq (@UI07RECM) {
				my $lookupres= findinarray($uq, @UI07RECM);
				$multiusercriteria{7}{skinning}{$uq} = $lookupres;
			}

			($multiuserquests{7}{profinfo}{cooking}{rank}, my @UI07RECN) = BNet::Utils::percharrecipestailoring ($userinfo07);
			foreach my $uq (@UI07RECN) {
				my $lookupres= findinarray($uq, @UI07RECN);
				$multiusercriteria{7}{tailoring}{$uq} = $lookupres;
			}
		}
	}
	if (8 < $count) {
		if ($module eq "quests") {
			my @UI08 = BNet::Utils::percharquests ($userinfo08);
			my @UI08A = BNet::Utils::percharachievementscriteria ($userinfo08);
			my @UI08B = BNet::Utils::percharachievementscriteriaquantity ($userinfo08);
			foreach my $uq (@UI08) {
				my $lookupres= findinarray($uq, @UI08);
				$multiuserquests{8}{$uq} = $lookupres;
			}
			foreach my $uq (@UI08A) {
				my $lookupres= findinarray($uq, @UI08A);
				$multiusercriteria{8}{$uq} = $lookupres;
			}
		}
		if ($module eq "professions") {
			($multiuserquests{8}{profinfo}{cooking}{rank}, my @UI08RECA) = BNet::Utils::percharrecipesalchemy ($userinfo08);
			foreach my $uq (@UI08RECA) {
				my $lookupres= findinarray($uq, @UI08RECA);
				$multiusercriteria{8}{alchemy}{$uq} = $lookupres;
			}

			($multiuserquests{8}{profinfo}{cooking}{rank}, my @UI08RECB) = BNet::Utils::percharrecipesarchaeology ($userinfo08);
			foreach my $uq (@UI08RECB) {
				my $lookupres= findinarray($uq, @UI08RECB);
				$multiusercriteria{8}{archaeology}{$uq} = $lookupres;
			}

			($multiuserquests{8}{profinfo}{cooking}{rank}, my @UI08RECC) = BNet::Utils::percharrecipesblacksmithing ($userinfo08);
			foreach my $uq (@UI08RECC) {
				my $lookupres= findinarray($uq, @UI08RECC);
				$multiusercriteria{8}{blacksmithing}{$uq} = $lookupres;
			}

			($multiuserquests{8}{profinfo}{cooking}{rank}, my @UI08RECD) = BNet::Utils::percharrecipescooking ($userinfo08);
			foreach my $uq (@UI08RECD) {
				my $lookupres= findinarray($uq, @UI08RECD);
				$multiusercriteria{8}{cooking}{$uq} = $lookupres;
			}

			($multiuserquests{8}{profinfo}{cooking}{rank}, my @UI08RECE) = BNet::Utils::percharrecipesenchanting ($userinfo08);
			foreach my $uq (@UI08RECE) {
				my $lookupres= findinarray($uq, @UI08RECE);
				$multiusercriteria{8}{enchanting}{$uq} = $lookupres;
			}

			($multiuserquests{8}{profinfo}{cooking}{rank}, my @UI08RECF) = BNet::Utils::percharrecipesengineering ($userinfo08);
			foreach my $uq (@UI08RECF) {
				my $lookupres= findinarray($uq, @UI08RECF);
				$multiusercriteria{8}{engineering}{$uq} = $lookupres;
			}

			($multiuserquests{8}{profinfo}{cooking}{rank}, my @UI08RECG) = BNet::Utils::percharrecipesfishing ($userinfo08);
			foreach my $uq (@UI08RECG) {
				my $lookupres= findinarray($uq, @UI08RECG);
				$multiusercriteria{8}{fishing}{$uq} = $lookupres;
			}

			($multiuserquests{8}{profinfo}{cooking}{rank}, my @UI08RECH) = BNet::Utils::percharrecipesherbalism ($userinfo08);
			foreach my $uq (@UI08RECH) {
				my $lookupres= findinarray($uq, @UI08RECH);
				$multiusercriteria{8}{herbalism}{$uq} = $lookupres;
			}

			($multiuserquests{8}{profinfo}{cooking}{rank}, my @UI08RECI) = BNet::Utils::percharrecipesinscription ($userinfo08);
			foreach my $uq (@UI08RECI) {
				my $lookupres= findinarray($uq, @UI08RECI);
				$multiusercriteria{8}{inscription}{$uq} = $lookupres;
			}

			($multiuserquests{8}{profinfo}{cooking}{rank}, my @UI08RECJ) = BNet::Utils::percharrecipesjewelcrafting ($userinfo08);
			foreach my $uq (@UI08RECJ) {
				my $lookupres= findinarray($uq, @UI08RECJ);
				$multiusercriteria{8}{jewelcrafting}{$uq} = $lookupres;
			}

			($multiuserquests{8}{profinfo}{cooking}{rank}, my @UI08RECK) = BNet::Utils::percharrecipesleatherworking ($userinfo08);
			foreach my $uq (@UI08RECK) {
				my $lookupres= findinarray($uq, @UI08RECK);
				$multiusercriteria{8}{leatherworking}{$uq} = $lookupres;
			}

			($multiuserquests{8}{profinfo}{cooking}{rank}, my @UI08RECL) = BNet::Utils::percharrecipesmining ($userinfo08);
			foreach my $uq (@UI08RECL) {
				my $lookupres= findinarray($uq, @UI08RECL);
				$multiusercriteria{8}{mining}{$uq} = $lookupres;
			}

			($multiuserquests{8}{profinfo}{cooking}{rank}, my @UI08RECM) = BNet::Utils::percharrecipesskinning ($userinfo08);
			foreach my $uq (@UI08RECM) {
				my $lookupres= findinarray($uq, @UI08RECM);
				$multiusercriteria{8}{skinning}{$uq} = $lookupres;
			}

			($multiuserquests{8}{profinfo}{cooking}{rank}, my @UI08RECN) = BNet::Utils::percharrecipestailoring ($userinfo08);
			foreach my $uq (@UI08RECN) {
				my $lookupres= findinarray($uq, @UI08RECN);
				$multiusercriteria{8}{tailoring}{$uq} = $lookupres;
			}
		}
	}
	if (9 < $count) {
		if ($module eq "quests") {
			my @UI09 = BNet::Utils::percharquests ($userinfo09);
			my @UI09A = BNet::Utils::percharachievementscriteria ($userinfo09);
			my @UI09B = BNet::Utils::percharachievementscriteriaquantity ($userinfo09);
			foreach my $uq (@UI09) {
				my $lookupres= findinarray($uq, @UI09);
				$multiuserquests{9}{$uq} = $lookupres;
			}
			foreach my $uq (@UI09A) {
				my $lookupres= findinarray($uq, @UI09A);
				$multiusercriteria{9}{$uq} = $lookupres;
			}
		}
		if ($module eq "professions") {
			($multiuserquests{9}{profinfo}{cooking}{rank}, my @UI09RECA) = BNet::Utils::percharrecipesalchemy ($userinfo09);
			foreach my $uq (@UI09RECA) {
				my $lookupres= findinarray($uq, @UI09RECA);
				$multiusercriteria{9}{alchemy}{$uq} = $lookupres;
			}

			($multiuserquests{9}{profinfo}{cooking}{rank}, my @UI09RECB) = BNet::Utils::percharrecipesarchaeology ($userinfo09);
			foreach my $uq (@UI09RECB) {
				my $lookupres= findinarray($uq, @UI09RECB);
				$multiusercriteria{9}{archaeology}{$uq} = $lookupres;
			}

			($multiuserquests{9}{profinfo}{cooking}{rank}, my @UI09RECC) = BNet::Utils::percharrecipesblacksmithing ($userinfo09);
			foreach my $uq (@UI09RECC) {
				my $lookupres= findinarray($uq, @UI09RECC);
				$multiusercriteria{9}{blacksmithing}{$uq} = $lookupres;
			}

			($multiuserquests{9}{profinfo}{cooking}{rank}, my @UI09RECD) = BNet::Utils::percharrecipescooking ($userinfo09);
			foreach my $uq (@UI09RECD) {
				my $lookupres= findinarray($uq, @UI09RECD);
				$multiusercriteria{9}{cooking}{$uq} = $lookupres;
			}

			($multiuserquests{9}{profinfo}{cooking}{rank}, my @UI09RECE) = BNet::Utils::percharrecipesenchanting ($userinfo09);
			foreach my $uq (@UI09RECE) {
				my $lookupres= findinarray($uq, @UI09RECE);
				$multiusercriteria{9}{enchanting}{$uq} = $lookupres;
			}

			($multiuserquests{9}{profinfo}{cooking}{rank}, my @UI09RECF) = BNet::Utils::percharrecipesengineering ($userinfo09);
			foreach my $uq (@UI09RECF) {
				my $lookupres= findinarray($uq, @UI09RECF);
				$multiusercriteria{9}{engineering}{$uq} = $lookupres;
			}

			($multiuserquests{9}{profinfo}{cooking}{rank}, my @UI09RECG) = BNet::Utils::percharrecipesfishing ($userinfo09);
			foreach my $uq (@UI09RECG) {
				my $lookupres= findinarray($uq, @UI09RECG);
				$multiusercriteria{9}{fishing}{$uq} = $lookupres;
			}

			($multiuserquests{9}{profinfo}{cooking}{rank}, my @UI09RECH) = BNet::Utils::percharrecipesherbalism ($userinfo09);
			foreach my $uq (@UI09RECH) {
				my $lookupres= findinarray($uq, @UI09RECH);
				$multiusercriteria{9}{herbalism}{$uq} = $lookupres;
			}

			($multiuserquests{9}{profinfo}{cooking}{rank}, my @UI09RECI) = BNet::Utils::percharrecipesinscription ($userinfo09);
			foreach my $uq (@UI09RECI) {
				my $lookupres= findinarray($uq, @UI09RECI);
				$multiusercriteria{9}{inscription}{$uq} = $lookupres;
			}

			($multiuserquests{9}{profinfo}{cooking}{rank}, my @UI09RECJ) = BNet::Utils::percharrecipesjewelcrafting ($userinfo09);
			foreach my $uq (@UI09RECJ) {
				my $lookupres= findinarray($uq, @UI09RECJ);
				$multiusercriteria{9}{jewelcrafting}{$uq} = $lookupres;
			}

			($multiuserquests{9}{profinfo}{cooking}{rank}, my @UI09RECK) = BNet::Utils::percharrecipesleatherworking ($userinfo09);
			foreach my $uq (@UI09RECK) {
				my $lookupres= findinarray($uq, @UI09RECK);
				$multiusercriteria{9}{leatherworking}{$uq} = $lookupres;
			}

			($multiuserquests{9}{profinfo}{cooking}{rank}, my @UI09RECL) = BNet::Utils::percharrecipesmining ($userinfo09);
			foreach my $uq (@UI09RECL) {
				my $lookupres= findinarray($uq, @UI09RECL);
				$multiusercriteria{9}{mining}{$uq} = $lookupres;
			}

			($multiuserquests{9}{profinfo}{cooking}{rank}, my @UI09RECM) = BNet::Utils::percharrecipesskinning ($userinfo09);
			foreach my $uq (@UI09RECM) {
				my $lookupres= findinarray($uq, @UI09RECM);
				$multiusercriteria{9}{skinning}{$uq} = $lookupres;
			}

			($multiuserquests{9}{profinfo}{cooking}{rank}, my @UI09RECN) = BNet::Utils::percharrecipestailoring ($userinfo09);
			foreach my $uq (@UI09RECN) {
				my $lookupres= findinarray($uq, @UI09RECN);
				$multiusercriteria{9}{tailoring}{$uq} = $lookupres;
			}

			($multiuserquests{10}{profinfo}{cooking}{rank}, my @UI10RECA) = BNet::Utils::percharrecipesalchemy ($userinfo10);
			foreach my $uq (@UI10RECA) {
				my $lookupres= findinarray($uq, @UI10RECA);
				$multiusercriteria{10}{alchemy}{$uq} = $lookupres;
			}
		}
	}
	if (10 < $count) {
		if ($module eq "quests") {
			my @UI10 = BNet::Utils::percharquests ($userinfo10);
			my @UI10A = BNet::Utils::percharachievementscriteria ($userinfo10);
			my @UI10B = BNet::Utils::percharachievementscriteriaquantity ($userinfo10);
			foreach my $uq (@UI10) {
				my $lookupres= findinarray($uq, @UI10);
				$multiuserquests{10}{$uq} = $lookupres;
			}
			foreach my $uq (@UI10A) {
				my $lookupres= findinarray($uq, @UI10A);
				$multiusercriteria{10}{$uq} = $lookupres;
			}
		}
		if ($module eq "professions") {
			($multiuserquests{10}{profinfo}{cooking}{rank}, my @UI10RECB) = BNet::Utils::percharrecipesarchaeology ($userinfo10);
			foreach my $uq (@UI10RECB) {
				my $lookupres= findinarray($uq, @UI10RECB);
				$multiusercriteria{10}{archaeology}{$uq} = $lookupres;
			}

			($multiuserquests{10}{profinfo}{cooking}{rank}, my @UI10RECC) = BNet::Utils::percharrecipesblacksmithing ($userinfo10);
			foreach my $uq (@UI10RECC) {
				my $lookupres= findinarray($uq, @UI10RECC);
				$multiusercriteria{10}{blacksmithing}{$uq} = $lookupres;
			}

			($multiuserquests{10}{profinfo}{cooking}{rank}, my @UI10RECD) = BNet::Utils::percharrecipescooking ($userinfo10);
			foreach my $uq (@UI10RECD) {
				my $lookupres= findinarray($uq, @UI10RECD);
				$multiusercriteria{10}{cooking}{$uq} = $lookupres;
			}

			($multiuserquests{10}{profinfo}{cooking}{rank}, my @UI10RECE) = BNet::Utils::percharrecipesenchanting ($userinfo10);
			foreach my $uq (@UI10RECE) {
				my $lookupres= findinarray($uq, @UI10RECE);
				$multiusercriteria{10}{enchanting}{$uq} = $lookupres;
			}

			($multiuserquests{10}{profinfo}{cooking}{rank}, my @UI10RECF) = BNet::Utils::percharrecipesengineering ($userinfo10);
			foreach my $uq (@UI10RECF) {
				my $lookupres= findinarray($uq, @UI10RECF);
				$multiusercriteria{10}{engineering}{$uq} = $lookupres;
			}

			($multiuserquests{10}{profinfo}{cooking}{rank}, my @UI10RECG) = BNet::Utils::percharrecipesfishing ($userinfo10);
			foreach my $uq (@UI10RECG) {
				my $lookupres= findinarray($uq, @UI10RECG);
				$multiusercriteria{10}{fishing}{$uq} = $lookupres;
			}

			($multiuserquests{10}{profinfo}{cooking}{rank}, my @UI10RECH) = BNet::Utils::percharrecipesherbalism ($userinfo10);
			foreach my $uq (@UI10RECH) {
				my $lookupres= findinarray($uq, @UI10RECH);
				$multiusercriteria{10}{herbalism}{$uq} = $lookupres;
			}

			($multiuserquests{10}{profinfo}{cooking}{rank}, my @UI10RECI) = BNet::Utils::percharrecipesinscription ($userinfo10);
			foreach my $uq (@UI10RECI) {
				my $lookupres= findinarray($uq, @UI10RECI);
				$multiusercriteria{10}{inscription}{$uq} = $lookupres;
			}

			($multiuserquests{10}{profinfo}{cooking}{rank}, my @UI10RECJ) = BNet::Utils::percharrecipesjewelcrafting ($userinfo10);
			foreach my $uq (@UI10RECJ) {
				my $lookupres= findinarray($uq, @UI10RECJ);
				$multiusercriteria{10}{jewelcrafting}{$uq} = $lookupres;
			}

			($multiuserquests{10}{profinfo}{cooking}{rank}, my @UI10RECK) = BNet::Utils::percharrecipesleatherworking ($userinfo10);
			foreach my $uq (@UI10RECK) {
				my $lookupres= findinarray($uq, @UI10RECK);
				$multiusercriteria{10}{leatherworking}{$uq} = $lookupres;
			}

			($multiuserquests{10}{profinfo}{cooking}{rank}, my @UI10RECL) = BNet::Utils::percharrecipesmining ($userinfo10);
			foreach my $uq (@UI10RECL) {
				my $lookupres= findinarray($uq, @UI10RECL);
				$multiusercriteria{10}{mining}{$uq} = $lookupres;
			}

			($multiuserquests{10}{profinfo}{cooking}{rank}, my @UI10RECM) = BNet::Utils::percharrecipesskinning ($userinfo10);
			foreach my $uq (@UI10RECM) {
				my $lookupres= findinarray($uq, @UI10RECM);
				$multiusercriteria{10}{skinning}{$uq} = $lookupres;
			}

			($multiuserquests{10}{profinfo}{cooking}{rank}, my @UI10RECN) = BNet::Utils::percharrecipestailoring ($userinfo10);
			foreach my $uq (@UI10RECN) {
				my $lookupres= findinarray($uq, @UI10RECN);
				$multiusercriteria{10}{tailoring}{$uq} = $lookupres;
			}
		}
	}
	if (11 < $count) {
		if ($module eq "quests") {
			my @UI11 = BNet::Utils::percharquests ($userinfo11);
			my @UI11A = BNet::Utils::percharachievementscriteria ($userinfo11);
			my @UI11B = BNet::Utils::percharachievementscriteriaquantity ($userinfo11);
			foreach my $uq (@UI11) {
				my $lookupres= findinarray($uq, @UI11);
				$multiuserquests{11}{$uq} = $lookupres;
			}
			foreach my $uq (@UI11A) {
				my $lookupres= findinarray($uq, @UI11A);
				$multiusercriteria{11}{$uq} = $lookupres;
			}
		}
		if ($module eq "professions") {
			($multiuserquests{11}{profinfo}{cooking}{rank}, my @UI11RECA) = BNet::Utils::percharrecipesalchemy ($userinfo11);
			foreach my $uq (@UI11RECA) {
				my $lookupres= findinarray($uq, @UI11RECA);
				$multiusercriteria{11}{alchemy}{$uq} = $lookupres;
			}

			($multiuserquests{11}{profinfo}{cooking}{rank}, my @UI11RECB) = BNet::Utils::percharrecipesarchaeology ($userinfo11);
			foreach my $uq (@UI11RECB) {
				my $lookupres= findinarray($uq, @UI11RECB);
				$multiusercriteria{11}{archaeology}{$uq} = $lookupres;
			}

			($multiuserquests{11}{profinfo}{cooking}{rank}, my @UI11RECC) = BNet::Utils::percharrecipesblacksmithing ($userinfo11);
			foreach my $uq (@UI11RECC) {
				my $lookupres= findinarray($uq, @UI11RECC);
				$multiusercriteria{11}{blacksmithing}{$uq} = $lookupres;
			}

			($multiuserquests{11}{profinfo}{cooking}{rank}, my @UI11RECD) = BNet::Utils::percharrecipescooking ($userinfo11);
			foreach my $uq (@UI11RECD) {
				my $lookupres= findinarray($uq, @UI11RECD);
				$multiusercriteria{11}{cooking}{$uq} = $lookupres;
			}

			($multiuserquests{11}{profinfo}{cooking}{rank}, my @UI11RECE) = BNet::Utils::percharrecipesenchanting ($userinfo11);
			foreach my $uq (@UI11RECE) {
				my $lookupres= findinarray($uq, @UI11RECE);
				$multiusercriteria{11}{enchanting}{$uq} = $lookupres;
			}

			($multiuserquests{11}{profinfo}{cooking}{rank}, my @UI11RECF) = BNet::Utils::percharrecipesengineering ($userinfo11);
			foreach my $uq (@UI11RECF) {
				my $lookupres= findinarray($uq, @UI11RECF);
				$multiusercriteria{11}{engineering}{$uq} = $lookupres;
			}

			($multiuserquests{11}{profinfo}{cooking}{rank}, my @UI11RECG) = BNet::Utils::percharrecipesfishing ($userinfo11);
			foreach my $uq (@UI11RECG) {
				my $lookupres= findinarray($uq, @UI11RECG);
				$multiusercriteria{11}{fishing}{$uq} = $lookupres;
			}

			($multiuserquests{11}{profinfo}{cooking}{rank}, my @UI11RECH) = BNet::Utils::percharrecipesherbalism ($userinfo11);
			foreach my $uq (@UI11RECH) {
				my $lookupres= findinarray($uq, @UI11RECH);
				$multiusercriteria{11}{herbalism}{$uq} = $lookupres;
			}

			($multiuserquests{11}{profinfo}{cooking}{rank}, my @UI11RECI) = BNet::Utils::percharrecipesinscription ($userinfo11);
			foreach my $uq (@UI11RECI) {
				my $lookupres= findinarray($uq, @UI11RECI);
				$multiusercriteria{11}{inscription}{$uq} = $lookupres;
			}

			($multiuserquests{11}{profinfo}{cooking}{rank}, my @UI11RECJ) = BNet::Utils::percharrecipesjewelcrafting ($userinfo11);
			foreach my $uq (@UI11RECJ) {
				my $lookupres= findinarray($uq, @UI11RECJ);
				$multiusercriteria{11}{jewelcrafting}{$uq} = $lookupres;
			}

			($multiuserquests{11}{profinfo}{cooking}{rank}, my @UI11RECK) = BNet::Utils::percharrecipesleatherworking ($userinfo11);
			foreach my $uq (@UI11RECK) {
				my $lookupres= findinarray($uq, @UI11RECK);
				$multiusercriteria{11}{leatherworking}{$uq} = $lookupres;
			}

			($multiuserquests{11}{profinfo}{cooking}{rank}, my @UI11RECL) = BNet::Utils::percharrecipesmining ($userinfo11);
			foreach my $uq (@UI11RECL) {
				my $lookupres= findinarray($uq, @UI11RECL);
				$multiusercriteria{11}{mining}{$uq} = $lookupres;
			}

			($multiuserquests{11}{profinfo}{cooking}{rank}, my @UI11RECM) = BNet::Utils::percharrecipesskinning ($userinfo11);
			foreach my $uq (@UI11RECM) {
				my $lookupres= findinarray($uq, @UI11RECM);
				$multiusercriteria{11}{skinning}{$uq} = $lookupres;
			}

			($multiuserquests{11}{profinfo}{cooking}{rank}, my @UI11RECN) = BNet::Utils::percharrecipestailoring ($userinfo11);
			foreach my $uq (@UI11RECN) {
				my $lookupres= findinarray($uq, @UI11RECN);
				$multiusercriteria{11}{tailoring}{$uq} = $lookupres;
			}
		}
	}
	if (12 < $count) {
		if ($module eq "quests") {
			my @UI12 = BNet::Utils::percharquests ($userinfo12);
			my @UI12A = BNet::Utils::percharachievementscriteria ($userinfo12);
			my @UI12B = BNet::Utils::percharachievementscriteriaquantity ($userinfo12);
			foreach my $uq (@UI12) {
				my $lookupres= findinarray($uq, @UI12);
				$multiuserquests{12}{$uq} = $lookupres;
			}
			foreach my $uq (@UI12A) {
				my $lookupres= findinarray($uq, @UI12A);
				$multiusercriteria{12}{$uq} = $lookupres;
			}
		}
		if ($module eq "professions") {
			($multiuserquests{12}{profinfo}{cooking}{rank}, my @UI12RECA) = BNet::Utils::percharrecipesalchemy ($userinfo12);
			foreach my $uq (@UI12RECA) {
				my $lookupres= findinarray($uq, @UI12RECA);
				$multiusercriteria{12}{alchemy}{$uq} = $lookupres;
			}

			($multiuserquests{12}{profinfo}{cooking}{rank}, my @UI12RECB) = BNet::Utils::percharrecipesarchaeology ($userinfo12);
			foreach my $uq (@UI12RECB) {
				my $lookupres= findinarray($uq, @UI12RECB);
				$multiusercriteria{12}{archaeology}{$uq} = $lookupres;
			}

			($multiuserquests{12}{profinfo}{cooking}{rank}, my @UI12RECC) = BNet::Utils::percharrecipesblacksmithing ($userinfo12);
			foreach my $uq (@UI12RECC) {
				my $lookupres= findinarray($uq, @UI12RECC);
				$multiusercriteria{12}{blacksmithing}{$uq} = $lookupres;
			}

			($multiuserquests{12}{profinfo}{cooking}{rank}, my @UI12RECD) = BNet::Utils::percharrecipescooking ($userinfo12);
			foreach my $uq (@UI12RECD) {
				my $lookupres= findinarray($uq, @UI12RECD);
				$multiusercriteria{12}{cooking}{$uq} = $lookupres;
			}

			($multiuserquests{12}{profinfo}{cooking}{rank}, my @UI12RECE) = BNet::Utils::percharrecipesenchanting ($userinfo12);
			foreach my $uq (@UI12RECE) {
				my $lookupres= findinarray($uq, @UI12RECE);
				$multiusercriteria{12}{enchanting}{$uq} = $lookupres;
			}

			($multiuserquests{12}{profinfo}{cooking}{rank}, my @UI12RECF) = BNet::Utils::percharrecipesengineering ($userinfo12);
			foreach my $uq (@UI12RECF) {
				my $lookupres= findinarray($uq, @UI12RECF);
				$multiusercriteria{12}{engineering}{$uq} = $lookupres;
			}

			($multiuserquests{12}{profinfo}{cooking}{rank}, my @UI12RECG) = BNet::Utils::percharrecipesfishing ($userinfo12);
			foreach my $uq (@UI12RECG) {
				my $lookupres= findinarray($uq, @UI12RECG);
				$multiusercriteria{12}{fishing}{$uq} = $lookupres;
			}

			($multiuserquests{12}{profinfo}{cooking}{rank}, my @UI12RECH) = BNet::Utils::percharrecipesherbalism ($userinfo12);
			foreach my $uq (@UI12RECH) {
				my $lookupres= findinarray($uq, @UI12RECH);
				$multiusercriteria{12}{herbalism}{$uq} = $lookupres;
			}

			($multiuserquests{12}{profinfo}{cooking}{rank}, my @UI12RECI) = BNet::Utils::percharrecipesinscription ($userinfo12);
			foreach my $uq (@UI12RECI) {
				my $lookupres= findinarray($uq, @UI12RECI);
				$multiusercriteria{12}{inscription}{$uq} = $lookupres;
			}

			($multiuserquests{12}{profinfo}{cooking}{rank}, my @UI12RECJ) = BNet::Utils::percharrecipesjewelcrafting ($userinfo12);
			foreach my $uq (@UI12RECJ) {
				my $lookupres= findinarray($uq, @UI12RECJ);
				$multiusercriteria{12}{jewelcrafting}{$uq} = $lookupres;
			}

			($multiuserquests{12}{profinfo}{cooking}{rank}, my @UI12RECK) = BNet::Utils::percharrecipesleatherworking ($userinfo12);
			foreach my $uq (@UI12RECK) {
				my $lookupres= findinarray($uq, @UI12RECK);
				$multiusercriteria{12}{leatherworking}{$uq} = $lookupres;
			}

			($multiuserquests{12}{profinfo}{cooking}{rank}, my @UI12RECL) = BNet::Utils::percharrecipesmining ($userinfo12);
			foreach my $uq (@UI12RECL) {
				my $lookupres= findinarray($uq, @UI12RECL);
				$multiusercriteria{12}{mining}{$uq} = $lookupres;
			}

			($multiuserquests{12}{profinfo}{cooking}{rank}, my @UI12RECM) = BNet::Utils::percharrecipesskinning ($userinfo12);
			foreach my $uq (@UI12RECM) {
				my $lookupres= findinarray($uq, @UI12RECM);
				$multiusercriteria{12}{skinning}{$uq} = $lookupres;
			}

			($multiuserquests{12}{profinfo}{cooking}{rank}, my @UI12RECN) = BNet::Utils::percharrecipestailoring ($userinfo12);
			foreach my $uq (@UI12RECN) {
				my $lookupres= findinarray($uq, @UI12RECN);
				$multiusercriteria{12}{tailoring}{$uq} = $lookupres;
			}
		}
	}
	if (13 < $count) {
		if ($module eq "quests") {
			my @UI13 = BNet::Utils::percharquests ($userinfo13);
			my @UI13A = BNet::Utils::percharachievementscriteria ($userinfo13);
			my @UI13B = BNet::Utils::percharachievementscriteriaquantity ($userinfo13);
			foreach my $uq (@UI13) {
				my $lookupres= findinarray($uq, @UI13);
				$multiuserquests{13}{$uq} = $lookupres;
			}
			foreach my $uq (@UI13A) {
				my $lookupres= findinarray($uq, @UI13A);
				$multiusercriteria{13}{$uq} = $lookupres;
			}
		}
		if ($module eq "professions") {
			($multiuserquests{13}{profinfo}{cooking}{rank}, my @UI13RECA) = BNet::Utils::percharrecipesalchemy ($userinfo13);
			foreach my $uq (@UI13RECA) {
				my $lookupres= findinarray($uq, @UI13RECA);
				$multiusercriteria{13}{alchemy}{$uq} = $lookupres;
			}

			($multiuserquests{13}{profinfo}{cooking}{rank}, my @UI13RECB) = BNet::Utils::percharrecipesarchaeology ($userinfo13);
			foreach my $uq (@UI13RECB) {
				my $lookupres= findinarray($uq, @UI13RECB);
				$multiusercriteria{13}{archaeology}{$uq} = $lookupres;
			}

			($multiuserquests{13}{profinfo}{cooking}{rank}, my @UI13RECC) = BNet::Utils::percharrecipesblacksmithing ($userinfo13);
			foreach my $uq (@UI13RECC) {
				my $lookupres= findinarray($uq, @UI13RECC);
				$multiusercriteria{13}{blacksmithing}{$uq} = $lookupres;
			}

			($multiuserquests{13}{profinfo}{cooking}{rank}, my @UI13RECD) = BNet::Utils::percharrecipescooking ($userinfo13);
			foreach my $uq (@UI13RECD) {
				my $lookupres= findinarray($uq, @UI13RECD);
				$multiusercriteria{13}{cooking}{$uq} = $lookupres;
			}

			($multiuserquests{13}{profinfo}{cooking}{rank}, my @UI13RECE) = BNet::Utils::percharrecipesenchanting ($userinfo13);
			foreach my $uq (@UI13RECE) {
				my $lookupres= findinarray($uq, @UI13RECE);
				$multiusercriteria{13}{enchanting}{$uq} = $lookupres;
			}

			($multiuserquests{13}{profinfo}{cooking}{rank}, my @UI13RECF) = BNet::Utils::percharrecipesengineering ($userinfo13);
			foreach my $uq (@UI13RECF) {
				my $lookupres= findinarray($uq, @UI13RECF);
				$multiusercriteria{13}{engineering}{$uq} = $lookupres;
			}

			($multiuserquests{13}{profinfo}{cooking}{rank}, my @UI13RECG) = BNet::Utils::percharrecipesfishing ($userinfo13);
			foreach my $uq (@UI13RECG) {
				my $lookupres= findinarray($uq, @UI13RECG);
				$multiusercriteria{13}{fishing}{$uq} = $lookupres;
			}

			($multiuserquests{13}{profinfo}{cooking}{rank}, my @UI13RECH) = BNet::Utils::percharrecipesherbalism ($userinfo13);
			foreach my $uq (@UI13RECH) {
				my $lookupres= findinarray($uq, @UI13RECH);
				$multiusercriteria{13}{herbalism}{$uq} = $lookupres;
			}

			($multiuserquests{13}{profinfo}{cooking}{rank}, my @UI13RECI) = BNet::Utils::percharrecipesinscription ($userinfo13);
			foreach my $uq (@UI13RECI) {
				my $lookupres= findinarray($uq, @UI13RECI);
				$multiusercriteria{13}{inscription}{$uq} = $lookupres;
			}

			($multiuserquests{13}{profinfo}{cooking}{rank}, my @UI13RECJ) = BNet::Utils::percharrecipesjewelcrafting ($userinfo13);
			foreach my $uq (@UI13RECJ) {
				my $lookupres= findinarray($uq, @UI13RECJ);
				$multiusercriteria{13}{jewelcrafting}{$uq} = $lookupres;
			}

			($multiuserquests{13}{profinfo}{cooking}{rank}, my @UI13RECK) = BNet::Utils::percharrecipesleatherworking ($userinfo13);
			foreach my $uq (@UI13RECK) {
				my $lookupres= findinarray($uq, @UI13RECK);
				$multiusercriteria{13}{leatherworking}{$uq} = $lookupres;
			}

			($multiuserquests{13}{profinfo}{cooking}{rank}, my @UI13RECL) = BNet::Utils::percharrecipesmining ($userinfo13);
			foreach my $uq (@UI13RECL) {
				my $lookupres= findinarray($uq, @UI13RECL);
				$multiusercriteria{13}{mining}{$uq} = $lookupres;
			}

			($multiuserquests{13}{profinfo}{cooking}{rank}, my @UI13RECM) = BNet::Utils::percharrecipesskinning ($userinfo13);
			foreach my $uq (@UI13RECM) {
				my $lookupres= findinarray($uq, @UI13RECM);
				$multiusercriteria{13}{skinning}{$uq} = $lookupres;
			}

			($multiuserquests{13}{profinfo}{cooking}{rank}, my @UI13RECN) = BNet::Utils::percharrecipestailoring ($userinfo13);
			foreach my $uq (@UI13RECN) {
				my $lookupres= findinarray($uq, @UI13RECN);
				$multiusercriteria{13}{tailoring}{$uq} = $lookupres;
			}
		}
	}
	if (14 < $count) {
		if ($module eq "quests") {
			my @UI14 = BNet::Utils::percharquests ($userinfo14);
			my @UI14A = BNet::Utils::percharachievementscriteria ($userinfo14);
			my @UI14B = BNet::Utils::percharachievementscriteriaquantity ($userinfo14);
			foreach my $uq (@UI14) {
				my $lookupres= findinarray($uq, @UI14);
				$multiuserquests{14}{$uq} = $lookupres;
			}
			foreach my $uq (@UI14A) {
				my $lookupres= findinarray($uq, @UI14A);
				$multiusercriteria{14}{$uq} = $lookupres;
			}
		}
		if ($module eq "professions") {
			($multiuserquests{14}{profinfo}{cooking}{rank}, my @UI14RECA) = BNet::Utils::percharrecipesalchemy ($userinfo14);
			foreach my $uq (@UI14RECA) {
				my $lookupres= findinarray($uq, @UI14RECA);
				$multiusercriteria{14}{alchemy}{$uq} = $lookupres;
			}

			($multiuserquests{14}{profinfo}{cooking}{rank}, my @UI14RECB) = BNet::Utils::percharrecipesarchaeology ($userinfo14);
			foreach my $uq (@UI14RECB) {
				my $lookupres= findinarray($uq, @UI14RECB);
				$multiusercriteria{14}{archaeology}{$uq} = $lookupres;
			}

			($multiuserquests{14}{profinfo}{cooking}{rank}, my @UI14RECC) = BNet::Utils::percharrecipesblacksmithing ($userinfo14);
			foreach my $uq (@UI14RECC) {
				my $lookupres= findinarray($uq, @UI14RECC);
				$multiusercriteria{14}{blacksmithing}{$uq} = $lookupres;
			}

			($multiuserquests{14}{profinfo}{cooking}{rank}, my @UI14RECD) = BNet::Utils::percharrecipescooking ($userinfo14);
			foreach my $uq (@UI14RECD) {
				my $lookupres= findinarray($uq, @UI14RECD);
				$multiusercriteria{14}{cooking}{$uq} = $lookupres;
			}

			($multiuserquests{14}{profinfo}{cooking}{rank}, my @UI14RECE) = BNet::Utils::percharrecipesenchanting ($userinfo14);
			foreach my $uq (@UI14RECE) {
				my $lookupres= findinarray($uq, @UI14RECE);
				$multiusercriteria{14}{enchanting}{$uq} = $lookupres;
			}

			($multiuserquests{14}{profinfo}{cooking}{rank}, my @UI14RECF) = BNet::Utils::percharrecipesengineering ($userinfo14);
			foreach my $uq (@UI14RECF) {
				my $lookupres= findinarray($uq, @UI14RECF);
				$multiusercriteria{14}{engineering}{$uq} = $lookupres;
			}

			($multiuserquests{14}{profinfo}{cooking}{rank}, my @UI14RECG) = BNet::Utils::percharrecipesfishing ($userinfo14);
			foreach my $uq (@UI14RECG) {
				my $lookupres= findinarray($uq, @UI14RECG);
				$multiusercriteria{14}{fishing}{$uq} = $lookupres;
			}

			($multiuserquests{14}{profinfo}{cooking}{rank}, my @UI14RECH) = BNet::Utils::percharrecipesherbalism ($userinfo14);
			foreach my $uq (@UI14RECH) {
				my $lookupres= findinarray($uq, @UI14RECH);
				$multiusercriteria{14}{herbalism}{$uq} = $lookupres;
			}

			($multiuserquests{14}{profinfo}{cooking}{rank}, my @UI14RECI) = BNet::Utils::percharrecipesinscription ($userinfo14);
			foreach my $uq (@UI14RECI) {
				my $lookupres= findinarray($uq, @UI14RECI);
				$multiusercriteria{14}{inscription}{$uq} = $lookupres;
			}

			($multiuserquests{14}{profinfo}{cooking}{rank}, my @UI14RECJ) = BNet::Utils::percharrecipesjewelcrafting ($userinfo14);
			foreach my $uq (@UI14RECJ) {
				my $lookupres= findinarray($uq, @UI14RECJ);
				$multiusercriteria{14}{jewelcrafting}{$uq} = $lookupres;
			}

			($multiuserquests{14}{profinfo}{cooking}{rank}, my @UI14RECK) = BNet::Utils::percharrecipesleatherworking ($userinfo14);
			foreach my $uq (@UI14RECK) {
				my $lookupres= findinarray($uq, @UI14RECK);
				$multiusercriteria{14}{leatherworking}{$uq} = $lookupres;
			}

			($multiuserquests{14}{profinfo}{cooking}{rank}, my @UI14RECL) = BNet::Utils::percharrecipesmining ($userinfo14);
			foreach my $uq (@UI14RECL) {
				my $lookupres= findinarray($uq, @UI14RECL);
				$multiusercriteria{14}{mining}{$uq} = $lookupres;
			}

			($multiuserquests{14}{profinfo}{cooking}{rank}, my @UI14RECM) = BNet::Utils::percharrecipesskinning ($userinfo14);
			foreach my $uq (@UI14RECM) {
				my $lookupres= findinarray($uq, @UI14RECM);
				$multiusercriteria{14}{skinning}{$uq} = $lookupres;
			}

			($multiuserquests{14}{profinfo}{cooking}{rank}, my @UI14RECN) = BNet::Utils::percharrecipestailoring ($userinfo14);
			foreach my $uq (@UI14RECN) {
				my $lookupres= findinarray($uq, @UI14RECN);
				$multiusercriteria{14}{tailoring}{$uq} = $lookupres;
			}
		}
	}
	if (15 < $count) {
		if ($module eq "quests") {
			my @UI15 = BNet::Utils::percharquests ($userinfo15);
			my @UI15A = BNet::Utils::percharachievementscriteria ($userinfo15);
			my @UI15B = BNet::Utils::percharachievementscriteriaquantity ($userinfo15);
			foreach my $uq (@UI15) {
				my $lookupres= findinarray($uq, @UI15);
				$multiuserquests{15}{$uq} = $lookupres;
			}
			foreach my $uq (@UI15A) {
				my $lookupres= findinarray($uq, @UI15A);
				$multiusercriteria{15}{$uq} = $lookupres;
			}
		}
		if ($module eq "professions") {
			($multiuserquests{15}{profinfo}{cooking}{rank}, my @UI15RECA) = BNet::Utils::percharrecipesalchemy ($userinfo15);
			foreach my $uq (@UI15RECA) {
				my $lookupres= findinarray($uq, @UI15RECA);
				$multiusercriteria{15}{alchemy}{$uq} = $lookupres;
			}

			($multiuserquests{15}{profinfo}{cooking}{rank}, my @UI15RECB) = BNet::Utils::percharrecipesarchaeology ($userinfo15);
			foreach my $uq (@UI15RECB) {
				my $lookupres= findinarray($uq, @UI15RECB);
				$multiusercriteria{15}{archaeology}{$uq} = $lookupres;
			}

			($multiuserquests{15}{profinfo}{cooking}{rank}, my @UI15RECC) = BNet::Utils::percharrecipesblacksmithing ($userinfo15);
			foreach my $uq (@UI15RECC) {
				my $lookupres= findinarray($uq, @UI15RECC);
				$multiusercriteria{15}{blacksmithing}{$uq} = $lookupres;
			}

			($multiuserquests{15}{profinfo}{cooking}{rank}, my @UI15RECD) = BNet::Utils::percharrecipescooking ($userinfo15);
			foreach my $uq (@UI15RECD) {
				my $lookupres= findinarray($uq, @UI15RECD);
				$multiusercriteria{15}{cooking}{$uq} = $lookupres;
			}

			($multiuserquests{15}{profinfo}{cooking}{rank}, my @UI15RECE) = BNet::Utils::percharrecipesenchanting ($userinfo15);
			foreach my $uq (@UI15RECE) {
				my $lookupres= findinarray($uq, @UI15RECE);
				$multiusercriteria{15}{enchanting}{$uq} = $lookupres;
			}

			($multiuserquests{15}{profinfo}{cooking}{rank}, my @UI15RECF) = BNet::Utils::percharrecipesengineering ($userinfo15);
			foreach my $uq (@UI15RECF) {
				my $lookupres= findinarray($uq, @UI15RECF);
				$multiusercriteria{15}{engineering}{$uq} = $lookupres;
			}

			($multiuserquests{15}{profinfo}{cooking}{rank}, my @UI15RECG) = BNet::Utils::percharrecipesfishing ($userinfo15);
			foreach my $uq (@UI15RECG) {
				my $lookupres= findinarray($uq, @UI15RECG);
				$multiusercriteria{15}{fishing}{$uq} = $lookupres;
			}

			($multiuserquests{15}{profinfo}{cooking}{rank}, my @UI15RECH) = BNet::Utils::percharrecipesherbalism ($userinfo15);
			foreach my $uq (@UI15RECH) {
				my $lookupres= findinarray($uq, @UI15RECH);
				$multiusercriteria{15}{herbalism}{$uq} = $lookupres;
			}

			($multiuserquests{15}{profinfo}{cooking}{rank}, my @UI15RECI) = BNet::Utils::percharrecipesinscription ($userinfo15);
			foreach my $uq (@UI15RECI) {
				my $lookupres= findinarray($uq, @UI15RECI);
				$multiusercriteria{15}{inscription}{$uq} = $lookupres;
			}

			($multiuserquests{15}{profinfo}{cooking}{rank}, my @UI15RECJ) = BNet::Utils::percharrecipesjewelcrafting ($userinfo15);
			foreach my $uq (@UI15RECJ) {
				my $lookupres= findinarray($uq, @UI15RECJ);
				$multiusercriteria{15}{jewelcrafting}{$uq} = $lookupres;
			}

			($multiuserquests{15}{profinfo}{cooking}{rank}, my @UI15RECK) = BNet::Utils::percharrecipesleatherworking ($userinfo15);
			foreach my $uq (@UI15RECK) {
				my $lookupres= findinarray($uq, @UI15RECK);
				$multiusercriteria{15}{leatherworking}{$uq} = $lookupres;
			}

			($multiuserquests{15}{profinfo}{cooking}{rank}, my @UI15RECL) = BNet::Utils::percharrecipesmining ($userinfo15);
			foreach my $uq (@UI15RECL) {
				my $lookupres= findinarray($uq, @UI15RECL);
				$multiusercriteria{15}{mining}{$uq} = $lookupres;
			}

			($multiuserquests{15}{profinfo}{cooking}{rank}, my @UI15RECM) = BNet::Utils::percharrecipesskinning ($userinfo15);
			foreach my $uq (@UI15RECM) {
				my $lookupres= findinarray($uq, @UI15RECM);
				$multiusercriteria{15}{skinning}{$uq} = $lookupres;
			}

			($multiuserquests{15}{profinfo}{cooking}{rank}, my @UI15RECN) = BNet::Utils::percharrecipestailoring ($userinfo15);
			foreach my $uq (@UI15RECN) {
				my $lookupres= findinarray($uq, @UI15RECN);
				$multiusercriteria{15}{tailoring}{$uq} = $lookupres;
			}
		}
	}

	if ($module eq "quests") {

		BEGIN {
			require 'BNet/Quests_KD.pm';
			require 'BNet/Quests_EK.pm';
			require 'BNet/Quests_BC.pm';
			require 'BNet/Quests_Wrath.pm';
			require 'BNet/Quests_Cata.pm';
			require 'BNet/Quests_Mists.pm';
			require 'BNet/Quests_Warlords.pm';
			require 'BNet/Quests_Legendaries.pm';
			require 'BNet/Quests_Legion.pm';
			require 'BNet/Quests_Misc.pm';
			require 'BNet/Quests_BFA.pm';
		}


		#Starting Zones
			BNet::Quests_EK::sz_01_20_Dun_Morogh ($count, %multiuserquests);
			BNet::Quests_EK::sz_01_20_Elwynn_Forest ($count, %multiuserquests);
			BNet::Quests_EK::sz_01_20_Eversong_Woods ($count, %multiuserquests);
			BNet::Quests_EK::sz_01_20_Tirisfal_Glades ($count, %multiuserquests);
			BNet::Quests_KD::sz_01_20_Azuremyst_Isle ($count, %multiuserquests);
			BNet::Quests_KD::sz_01_20_Durotar ($count, %multiuserquests);
			BNet::Quests_KD::sz_01_20_Mulgore ($count, %multiuserquests);
			BNet::Quests_KD::sz_01_20_Teldrassil ($count, %multiuserquests);
			BNet::Quests_Wrath::sz_55_58_Scarlet_Enclave ($count, %multiuserquests);
			BNet::Quests_Cata::sz_01_20_Gilneas ($count, %multiuserquests);
			BNet::Quests_Cata::sz_01_20_Gilneas ($count, %multiuserquests);
			BNet::Quests_Cata::sz_10_60_Ruins_of_Gilneas ($count, %multiuserquests);
			BNet::Quests_Cata::sz_01_05_Kezan ($count, %multiuserquests);
			BNet::Quests_Cata::sz_01_10_Lost_Isles ($count, %multiuserquests);
			BNet::Quests_Mists::sz_01_10_Wandering_Isle ($count, %multiuserquests);

		##Eastern Kingdoms
			BNet::Quests_EK::z_10_60_Ghostlands ($count, %multiuserquests);
			BNet::Quests_EK::z_10_60_Loch_Modan ($count, %multiuserquests);
			BNet::Quests_EK::z_10_60_Silverpine_Forest ($count, %multiuserquests);
			BNet::Quests_EK::z_10_60_Westfall ($count, %multiuserquests);
			BNet::Quests_EK::z_15_60_Redridge_Mountains ($count, %multiuserquests);
			BNet::Quests_EK::z_15_60_Hillsbrad_Foothills ($count, %multiuserquests);
			BNet::Quests_EK::z_20_60_Duskwood ($count, %multiuserquests);
			BNet::Quests_EK::z_20_60_Wetlands ($count, %multiuserquests);
			BNet::Quests_EK::z_25_60_Arathi_Highlands ($count, %multiuserquests);
			BNet::Quests_EK::z_25_60_Northern_Stranglethorn ($count, %multiuserquests);
			BNet::Quests_EK::z_30_60_Cape_of_Stranglethorn ($count, %multiuserquests);
			BNet::Quests_EK::z_30_60_Hinterlands ($count, %multiuserquests);
			BNet::Quests_EK::z_35_60_Western_Plaguelands ($count, %multiuserquests);
			BNet::Quests_EK::z_40_60_Eastern_Plaguelands ($count, %multiuserquests);
			BNet::Quests_EK::z_40_60_Badlands ($count, %multiuserquests);
			BNet::Quests_EK::z_40_60_Searing_Gorge ($count, %multiuserquests);
			BNet::Quests_EK::z_40_60_Burning_Steppes ($count, %multiuserquests);
			BNet::Quests_EK::z_40_60_Swamp_of_Sorrows ($count, %multiuserquests);
			BNet::Quests_EK::z_40_60_Blasted_Lands ($count, %multiuserquests);

		##Kalimdor
			BNet::Quests_KD::z_10_60_Azshara ($count, %multiuserquests);
			BNet::Quests_KD::z_10_60_Darkshore ($count, %multiuserquests);
			BNet::Quests_KD::z_10_60_Northern_Barrens ($count, %multiuserquests);
			BNet::Quests_KD::z_10_60_Bloodmyst_Isle ($count, %multiuserquests);
			BNet::Quests_KD::z_15_60_Ashenvale ($count, %multiuserquests);
			BNet::Quests_KD::z_20_60_Stonetalon_Mountains ($count, %multiuserquests);
			BNet::Quests_KD::z_30_60_Desolace ($count, %multiuserquests);
			BNet::Quests_KD::z_25_60_Southern_Barrens ($count, %multiuserquests);
			BNet::Quests_KD::z_35_60_Dustwallow_Marsh ($count, %multiuserquests);
			BNet::Quests_KD::z_35_60_Feralas ($count, %multiuserquests);
			BNet::Quests_KD::z_40_60_Thousand_Needles ($count, %multiuserquests);
			BNet::Quests_KD::z_40_60_Felwood ($count, %multiuserquests);
			BNet::Quests_KD::z_40_60_Tanaris ($count, %multiuserquests);
			BNet::Quests_KD::z_40_60_UnGoro_Crater ($count, %multiuserquests);
			BNet::Quests_KD::z_40_60_Winterspring ($count, %multiuserquests);
			BNet::Quests_KD::z_40_60_Silithus ($count, %multiuserquests);
			BNet::Quests_KD::z_55_56_Deadwind_Pass ($count, %multiuserquests);

		##Outland
			BNet::Quests_BC::z_58_80_Hellfire_Peninsula ($count, %multiuserquests);
			BNet::Quests_BC::z_60_80_Zangarmarsh ($count, %multiuserquests);
			BNet::Quests_BC::z_62_80_Terokkar_Forest ($count, %multiuserquests);
			BNet::Quests_BC::z_64_80_Nagrand ($count, %multiuserquests);
			BNet::Quests_BC::z_65_80_Blades_Edge_Mountains ($count, %multiuserquests);
			BNet::Quests_BC::z_67_80_Netherstorm ($count, %multiuserquests);
			BNet::Quests_BC::z_67_80_Shadowmoon_Valley ($count, %multiuserquests);
			BNet::Quests_BC::z_70_Isle_Of_Queldanas ($count, %multiuserquests);

		##Northrend
			BNet::Quests_Wrath::z_58_80_Borean_Tundra ($count, %multiuserquests);
			BNet::Quests_Wrath::z_58_80_Howling_Fjord ($count, %multiuserquests);
			BNet::Quests_Wrath::z_61_80_Dragonblight ($count, %multiuserquests);
			BNet::Quests_Wrath::z_63_80_Grizzly_Hills ($count, %multiuserquests);
			BNet::Quests_Wrath::z_64_80_ZulDrak ($count, %multiuserquests);
			BNet::Quests_Wrath::z_66_80_Sholazar_Basin ($count, %multiuserquests);
			BNet::Quests_Wrath::z_67_80_Storm_Peaks ($count, %multiuserquests);
			BNet::Quests_Wrath::z_67_80_Icecrown ($count, %multiuserquests);

		##Cataclysm
			BNet::Quests_Cata::z_80_90_Mount_Hyjal ($count, %multiuserquests);
			BNet::Quests_Cata::z_80_90_Vashjir ($count, %multiuserquests);
			BNet::Quests_Cata::z_82_90_Deepholm ($count, %multiuserquests);
			BNet::Quests_Cata::z_83_90_Uldum ($count, %multiuserquests);
			BNet::Quests_Cata::z_84_90_Twilight_Highlands ($count, %multiuserquests);
			BNet::Quests_Cata::z_85_Molten_Front ($count, %multiuserquests);

		##Pandaria
			BNet::Quests_Mists::z_80_90_Jade_Forest ($count, %multiuserquests);
			BNet::Quests_Mists::z_81_90_Valley_of_the_Four_Winds ($count, %multiuserquests);
			BNet::Quests_Mists::z_81_90_Krasarang_Wilds ($count, %multiuserquests);
			BNet::Quests_Mists::z_82_90_KunLai_Summit ($count, %multiuserquests);
			BNet::Quests_Mists::z_83_90_Townlong_Steppes ($count, %multiuserquests);
			BNet::Quests_Mists::z_84_90_Dread_Wastes ($count, %multiuserquests);
			BNet::Quests_Mists::z_85_90_Vale_of_Eternal_Blossoms ($count, %multiuserquests);
			BNet::Quests_Mists::z_85_90_Isle_of_Thunder ($count, %multiuserquests);
			BNet::Quests_Mists::z_85_90_Isle_of_Giants ($count, %multiuserquests);
			BNet::Quests_Mists::z_85_90_Timeless_Isle ($count, %multiuserquests);

		##Draenor
			BNet::Quests_Warlords::z_90_Blasted_Lands_Intro ($count, %multiuserquests);
			BNet::Quests_Warlords::z_90_Assault_The_Dark_Portal ($count, %multiuserquests);
			BNet::Quests_Warlords::z_90_100_Frostfire_Ridge ($count, %multiuserquests);
			BNet::Quests_Warlords::z_90_100_Shadowmoon_Valley ($count, %multiuserquests);
			BNet::Quests_Warlords::z_92_100_Gorgrond ($count, %multiuserquests);
			BNet::Quests_Warlords::z_94_100_Talador ($count, %multiuserquests);
			BNet::Quests_Warlords::z_96_100_Spires_of_Arak ($count, %multiuserquests);
			BNet::Quests_Warlords::z_98_100_Nagrand ($count, %multiuserquests);
			BNet::Quests_Warlords::z_100_Tanaan_Jungle ($count, %multiuserquests);

		###Legion
			BNet::Quests_Legion::z_98_legion_intro ($count, %multiuserquests);
			BNet::Quests_Legion::z_100_azsuna ($count, %multiuserquests);
			BNet::Quests_Legion::z_100_valsharah ($count, %multiuserquests);
			BNet::Quests_Legion::z_100_highmountain ($count, %multiuserquests);
			BNet::Quests_Legion::z_100_stormheim ($count, %multiuserquests);
			BNet::Quests_Legion::z_110_suramar ($count, %multiuserquests);
			BNet::Quests_Legion::z_110_legion_fall ($count, %multiuserquests);
			BNet::Quests_Legion::z_110_Argus ($count, %multiuserquests);

		#BFA
			BNet::Quests_BFA::z_110_120_Alliance_Drustvar ($count, %multiuserquests);
			BNet::Quests_BFA::z_110_120_Alliance_Stormsong_Valley ($count, %multiuserquests);
			BNet::Quests_BFA::z_110_120_Alliance_Tiragarde_Sound ($count, %multiuserquests);
			BNet::Quests_BFA::z_110_120_Horde_Nazmir ($count, %multiuserquests);
			BNet::Quests_BFA::z_110_120_Horde_Voldun ($count, %multiuserquests);
			BNet::Quests_BFA::z_110_120_Horde_Zuldazar ($count, %multiuserquests);

		##Artifact Base Hidden Appearances
		#####	BNet::Misc::artifact_non_hidden ($count, %multiusercriteria, %multiuserquests);
			BNet::Misc::artifact_non_hidden ($count, %multiusercriteria);
			BNet::Misc::artifact_hidden_base ($count, %multiusercriteria);
			BNet::Quests_Legion::artifact_improvingonhistory ($count, %multiuserquests);
			BNet::Quests_Legion::empoweredartifacts ($count, %multiuserquests);
			BNet::Misc::class_hall_set ($count, %multiusercriteria);
			BNet::Misc::pvp_prestige ($count, %multiusercriteria);
			BNet::Quests_Misc::dungeons ($count, %multiuserquests);
			BNet::Quests_Misc::raid_60_aq10 ($count, %multiuserquests);
			BNet::Quests_Misc::raid_100_brf ($count, %multiuserquests);
			BNet::Quests_Misc::raid_100_hfc ($count, %multiuserquests);
			BNet::Quests_Misc::raid_110_en ($count, %multiuserquests);
			BNet::Quests_Misc::raid_110_nh ($count, %multiuserquests);
			BNet::Quests_Misc::raid_110_tos ($count, %multiuserquests);
			BNet::Achievements::p32_argent_tournament ($count, %multiuserquests);

		#Class Specific
			BNet::Quests_Misc::class_quests ($count, %multiuserquests);
		#	BNet::Quests_Misc::warlock_green_fire ($count, %multiuserquests);

		#Raids
			BNet::Achievements::raid_30_os ($count, %multiusercriteria);
			BNet::Achievements::dungeon_7_legion  ($count, %multiusercriteria);
			BNet::Achievements::raid_7_legion  ($count, %multiusercriteria);
		##Dungeon/Raids
		##	BNet::Achievements::raid_dungeon_bosses ($count, %multiusercriteria);
		##	BNet::Achievements::glory_of ($count, %multiusercriteria);
		#
		#
		##Legendaries
		##	BNet::Quests_Legendaries::legendary_thunderfury ($count, %multiuserquests);
		##	BNet::Quests_Legendaries::legendary_valanyr ($count, %multiuserquests);
		##	BNet::Quests_Legendaries::legendary_shadowmourne ($count, %multiuserquests);
		##	BNet::Quests_Legendaries::legendary_dragonwrath ($count, %multiuserquests);
		##	BNet::Quests_Legendaries::legendary_rogue_daggers ($count, %multiuserquests);
		##	BNet::Quests_Legendaries::legendary_cloak ($count, %multiuserquests);
		##	BNet::Quests_Legendaries::legendary_ring ($count, %multiuserquests);
		#
		##Various Achievements
		##	BNet::Achievements::p20_bloody_rare ($count, %multiusercriteria);
		##	BNet::Achievements::p30_frostbitten ($count, %multiusercriteria);
			BNet::Achievements::p30_higher_learning ($count, %multiusercriteria);
			BNet::Achievements::p50_glorious ($count, %multiusercriteria);
			BNet::Achievements::p52_champions_of_lei_shen ($count, %multiusercriteria);
			BNet::Achievements::p54_timeless_champion ($count, %multiusercriteria);
			BNet::Achievements::p54_bigger_bag ($count, %multiusercriteria);
			BNet::Achievements::p60_heralds_of_the_legion ($count, %multiusercriteria);
			BNet::Achievements::p60_fight_the_power ($count, %multiusercriteria);
			BNet::Achievements::p60_ancient_no_more ($count, %multiusercriteria);
			BNet::Achievements::p60_gorgrond_monster_hunter ($count, %multiusercriteria);
			BNet::Achievements::p62_jungle_stalker ($count, %multiusercriteria);
			BNet::Achievements::p70_adventurer_of_azsuna ($count, %multiusercriteria);
			BNet::Achievements::p70_adventurer_of_valsharah ($count, %multiusercriteria);
			BNet::Achievements::p70_adventurer_of_highmountain ($count, %multiusercriteria);
			BNet::Achievements::p70_adventurer_of_stormheim ($count, %multiusercriteria);
			BNet::Achievements::p70_adventurer_of_suramar ($count, %multiusercriteria);
			BNet::Achievements::p73_adventurer_of_argus ($count, %multiusercriteria);
			BNet::Achievements::p73_invasion_lesser ($count, %multiusercriteria);
			BNet::Achievements::p73_invasion_greater ($count, %multiusercriteria);
		#	BNet::Achievements::p70_archy_a_keen_eye ($count, %multiusercriteria);
		#	BNet::Achievements::p70_archy_legion_curator ($count, %multiusercriteria);
		#
		##	BNet::Achievements::p60_grand_treasure_hunter ($count, %multiusercriteria);
		##	BNet::Achievements::p62_jungle_treasure_hunter ($count, %multiusercriteria);
		##	BNet::Achievements::p70_treasures_of_azsuna ($count, %multiusercriteria);
		##	BNet::Achievements::p70_treasures_of_valsharah ($count, %multiusercriteria);
		##	BNet::Achievements::p70_treasures_of_highmountain ($count, %multiusercriteria);
		##	BNet::Achievements::p70_treasures_of_stormheim ($count, %multiusercriteria);
		##	BNet::Achievements::p70_treasures_of_suramar ($count, %multiusercriteria);
			BNet::Achievements::p70_shoot_first_loot_later ($count, %multiusercriteria);
			BNet::Achievements::feats_of_strength ($count, %multiusercriteria);

	}
	if ($module eq "professions") {
		
		BEGIN {
			require 'BNet/Utils.pm';
		}
		BNet::Professions::alchemy ($count, %multiusercriteria);
		BNet::Professions::blacksmithing ($count, %multiusercriteria);
		BNet::Professions::enchanting ($count, %multiusercriteria);
		BNet::Professions::engineering ($count, %multiusercriteria);
		BNet::Professions::inscription ($count, %multiusercriteria);
		BNet::Professions::jewelcrafting ($count, %multiusercriteria);
		BNet::Professions::leatherworking ($count, %multiusercriteria);
		BNet::Professions::tailoring ($count, %multiusercriteria);

		BNet::Professions::herbalism ($count, %multiusercriteria);
		BNet::Professions::mining ($count, %multiusercriteria);
		BNet::Professions::skinning ($count, %multiusercriteria);

		BNet::Professions::cooking ($count, %multiusercriteria);
		BNet::Professions::archaeology ($count, %multiusercriteria);
		BNet::Professions::fishing ($count, %multiusercriteria);
		
		
	}
	if ($module eq "reputation") {
		
		BEGIN {
			require 'BNet/Utils.pm';
			require 'BNet/Reputation.pm';
		}
		
		my %rep;
		
		if (0 < $count) {
			$rep{'fake'}{0} = { BNet::Utils::reputationtohash ($userinfo00) };
		}
		if (1 < $count) {
			$rep{'fake'}{1} = { BNet::Utils::reputationtohash ($userinfo01) };
		}
		if (2 < $count) {
			$rep{'fake'}{2} = { BNet::Utils::reputationtohash ($userinfo02) };
		}
		if (3 < $count) {
			$rep{'fake'}{3} = { BNet::Utils::reputationtohash ($userinfo03) };
		}
		if (4 < $count) {
			$rep{'fake'}{4} = { BNet::Utils::reputationtohash ($userinfo04) };
		}
		if (5 < $count) {
			$rep{'fake'}{5} = { BNet::Utils::reputationtohash ($userinfo05) };
		}
		if (6 < $count) {
			$rep{'fake'}{6} = { BNet::Utils::reputationtohash ($userinfo06) };
		}
		if (7 < $count) {
			$rep{'fake'}{7} = { BNet::Utils::reputationtohash ($userinfo07) };
		}
		if (8 < $count) {
			$rep{'fake'}{8} = { BNet::Utils::reputationtohash ($userinfo08) };
		}
		if (9 < $count) {
			$rep{'fake'}{9} = { BNet::Utils::reputationtohash ($userinfo09) };
		}
		if (10 < $count) {
			$rep{'fake'}{10} = { BNet::Utils::reputationtohash ($userinfo10) };
		}
		if (11 < $count) {
			$rep{'fake'}{11} = { BNet::Utils::reputationtohash ($userinfo11) };
		}
		if (12 < $count) {
			$rep{'fake'}{12} = { BNet::Utils::reputationtohash ($userinfo12) };
		}
		if (13 < $count) {
			$rep{'fake'}{13} = { BNet::Utils::reputationtohash ($userinfo13) };
		}
		if (14 < $count) {
			$rep{'fake'}{14} = { BNet::Utils::reputationtohash ($userinfo14) };
		}
		if (15 < $count) {
			$rep{'fake'}{15} = { BNet::Utils::reputationtohash ($userinfo15) };
		}
#		print Dumper (%rep);
		BNet::Reputations::reputation ($count, %rep);
	}
}

__main__();