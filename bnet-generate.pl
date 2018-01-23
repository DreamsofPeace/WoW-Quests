use strict;
use warnings;
use JSON;
use LWP::Simple;
use Getopt::Long;
use List::Util 1.33 'any';
use Data::Dumper;

BEGIN {
	require 'BNet/Utils.pm';
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
		my @UI00 = BNet::Utils::percharquests ($userinfo00);
		($multiuserquests{0}{profinfo}{cooking}{rank}, my @UI00REC) = BNet::Utils::percharrecipescooking ($userinfo00);
	#	$multiuserquests{0}{profinfo}{cooking}{rank}, $multiuserquests{0}{profinfo}{cooking}{skill}, my @UI01REC = BNet::Utils::percharrecipescooking ($userinfo00);
	#	my @UI00REC = BNet::Utils::percharrecipescooking ($userinfo00);
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
		foreach my $uq (@UI00REC) {
			my $lookupres= findinarray($uq, @UI00REC);
			$multiusercriteria{0}{cooking}{$uq} = $lookupres;
		}
	}
	if (1 < $count) {
		my @UI01 = BNet::Utils::percharquests ($userinfo01);
		($multiuserquests{1}{profinfo}{cooking}{rank}, my @UI01REC) = BNet::Utils::percharrecipescooking ($userinfo01);
#		$multiuserquests{1}{profinfo}{cooking}{rank}, $multiuserquests{1}{profinfo}{cooking}{skill}, my @UI01REC = BNet::Utils::percharrecipescooking ($userinfo01);
#		my @UI01REC = BNet::Utils::percharrecipescooking ($userinfo01);
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
		foreach my $uq (@UI01REC) {
			my $lookupres= findinarray($uq, @UI01REC);
			$multiusercriteria{1}{cooking}{$uq} = $lookupres;
		}
	}
	if (2 < $count) {
		my @UI02 = BNet::Utils::percharquests ($userinfo02);
		($multiuserquests{2}{profinfo}{cooking}{rank}, my @UI02REC) = BNet::Utils::percharrecipescooking ($userinfo02);

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
		foreach my $uq (@UI02REC) {
			my $lookupres= findinarray($uq, @UI02REC);
			$multiusercriteria{2}{cooking}{$uq} = $lookupres;
		}
	}
	if (3 < $count) {
		my @UI03 = BNet::Utils::percharquests ($userinfo03);
		($multiuserquests{3}{profinfo}{cooking}{rank}, my @UI03REC) = BNet::Utils::percharrecipescooking ($userinfo03);
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
		foreach my $uq (@UI03REC) {
			my $lookupres= findinarray($uq, @UI03REC);
			$multiusercriteria{3}{cooking}{$uq} = $lookupres;
		}
	}
	if (4 < $count) {
		my @UI04 = BNet::Utils::percharquests ($userinfo04);
		($multiuserquests{4}{profinfo}{cooking}{rank}, my @UI04REC) = BNet::Utils::percharrecipescooking ($userinfo04);
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
		foreach my $uq (@UI04REC) {
			my $lookupres= findinarray($uq, @UI04REC);
			$multiusercriteria{4}{cooking}{$uq} = $lookupres;
		}
	}
	if (5 < $count) {
		my @UI05 = BNet::Utils::percharquests ($userinfo05);
		($multiuserquests{5}{profinfo}{cooking}{rank}, my @UI05REC) = BNet::Utils::percharrecipescooking ($userinfo05);
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
		foreach my $uq (@UI05REC) {
			my $lookupres= findinarray($uq, @UI05REC);
			$multiusercriteria{5}{cooking}{$uq} = $lookupres;
		}
	}
	if (6 < $count) {
		my @UI06 = BNet::Utils::percharquests ($userinfo06);
		($multiuserquests{6}{profinfo}{cooking}{rank}, my @UI06REC) = BNet::Utils::percharrecipescooking ($userinfo06);
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
		foreach my $uq (@UI06REC) {
			my $lookupres= findinarray($uq, @UI06REC);
			$multiusercriteria{6}{cooking}{$uq} = $lookupres;
		}
	}
	if (7 < $count) {
		my @UI07 = BNet::Utils::percharquests ($userinfo07);
		($multiuserquests{7}{profinfo}{cooking}{rank}, my @UI07REC) = BNet::Utils::percharrecipescooking ($userinfo07);
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
		foreach my $uq (@UI07REC) {
			my $lookupres= findinarray($uq, @UI07REC);
			$multiusercriteria{7}{cooking}{$uq} = $lookupres;
		}
	}
	if (8 < $count) {
		my @UI08 = BNet::Utils::percharquests ($userinfo08);
		($multiuserquests{8}{profinfo}{cooking}{rank}, my @UI08REC) = BNet::Utils::percharrecipescooking ($userinfo08);
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
		foreach my $uq (@UI08REC) {
			my $lookupres= findinarray($uq, @UI08REC);
			$multiusercriteria{8}{cooking}{$uq} = $lookupres;
		}
	}
	if (9 < $count) {
		my @UI09 = BNet::Utils::percharquests ($userinfo09);
		($multiuserquests{9}{profinfo}{cooking}{rank}, my @UI09REC) = BNet::Utils::percharrecipescooking ($userinfo09);
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
		foreach my $uq (@UI09REC) {
			my $lookupres= findinarray($uq, @UI09REC);
			$multiusercriteria{9}{cooking}{$uq} = $lookupres;
		}
	}
	if (10 < $count) {
		my @UI10 = BNet::Utils::percharquests ($userinfo10);
		($multiuserquests{10}{profinfo}{cooking}{rank}, my @UI10REC) = BNet::Utils::percharrecipescooking ($userinfo10);
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
		foreach my $uq (@UI10REC) {
			my $lookupres= findinarray($uq, @UI10REC);
			$multiusercriteria{10}{cooking}{$uq} = $lookupres;
		}
	}
	if (11 < $count) {
		my @UI11 = BNet::Utils::percharquests ($userinfo11);
		($multiuserquests{11}{profinfo}{cooking}{rank}, my @UI11REC) = BNet::Utils::percharrecipescooking ($userinfo11);
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
		foreach my $uq (@UI11REC) {
			my $lookupres= findinarray($uq, @UI11REC);
			$multiusercriteria{11}{cooking}{$uq} = $lookupres;
		}
	}
	if (12 < $count) {
		my @UI12 = BNet::Utils::percharquests ($userinfo12);
		($multiuserquests{12}{profinfo}{cooking}{rank}, my @UI12REC) = BNet::Utils::percharrecipescooking ($userinfo12);
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
		foreach my $uq (@UI12REC) {
			my $lookupres= findinarray($uq, @UI12REC);
			$multiusercriteria{12}{cooking}{$uq} = $lookupres;
		}
	}
	if (13 < $count) {
		my @UI13 = BNet::Utils::percharquests ($userinfo13);
		($multiuserquests{13}{profinfo}{cooking}{rank}, my @UI13REC) = BNet::Utils::percharrecipescooking ($userinfo13);
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
		foreach my $uq (@UI13REC) {
			my $lookupres= findinarray($uq, @UI13REC);
			$multiusercriteria{13}{cooking}{$uq} = $lookupres;
		}
	}
	if (14 < $count) {
		my @UI14 = BNet::Utils::percharquests ($userinfo14);
		($multiuserquests{14}{profinfo}{cooking}{rank}, my @UI14REC) = BNet::Utils::percharrecipescooking ($userinfo14);
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
		foreach my $uq (@UI14REC) {
			my $lookupres= findinarray($uq, @UI14REC);
			$multiusercriteria{14}{cooking}{$uq} = $lookupres;
		}
	}
	if (15 < $count) {
		my @UI15 = BNet::Utils::percharquests ($userinfo15);
		($multiuserquests{15}{profinfo}{cooking}{rank}, my @UI15REC) = BNet::Utils::percharrecipescooking ($userinfo15);
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
		foreach my $uq (@UI15REC) {
			my $lookupres= findinarray($uq, @UI15REC);
			$multiusercriteria{15}{cooking}{$uq} = $lookupres;
		}
	}

#Starting
	BNet::Quests_EK::sz_1_10_belf_eversong ($count, %multiuserquests);
##	sz_1_10_goblin_kezan_and_lost_isles ($count, %multiuserquests);
##	sz_1_10_troll_orc_durotar ($count, %multiuserquests);
##	sz_1_10_tauren_mulgore ($count, %multiuserquests);
##	sz_1_10_draenei_azuremyst_isle ($count, %multiuserquests);
##	sz_1_10_nelf_teldrassil ($count, %multiuserquests);
##	sz_1_10_worgen_gilneas ($count, %multiuserquests);
##	sz_1_10_human_elwynn_forest ($count, %multiuserquests);
##	sz_1_10_gnome_dwarf_dun morogh ($count, %multiuserquests);
##	sz_1_10_undead_tirisfal_glades ($count, %multiuserquests);
##	sz_1_10_pandaren_wandering_isle ($count, %multiuserquests);
##	sz_55_58_death_knight_plaguelands_scarlet_eEnclave ($count, %multiuserquests);
#
#
##	BNet::Quests_EK::z_10_20_Loch_Modan ($count, %multiuserquests);
##	BNet::Quests_EK::z_10_20_Westfall_Redridge_Mountains ($count, %multiuserquests);
##	BNet::Quests_EK::z_20_25_Duskwood ($count, %multiuserquests);
##	BNet::Quests_EK::z_20_25_Wetlands ($count, %multiuserquests);
##	BNet::Quests_EK::z_25_30_Northern_Stranglethorn ($count, %multiuserquests);
##	BNet::Quests_EK::z_30_35_Cape_of_Stranglethorn ($count, %multiuserquests);
#
##Eastern Kingdoms
	BNet::Quests_EK::z_10_20_ghostlands ($count, %multiuserquests);
	BNet::Quests_EK::z_10_20_Silverpine_Forest ($count, %multiuserquests);
	BNet::Quests_EK::z_20_25_Hillsbrad_Foothills ($count, %multiuserquests);
	BNet::Quests_EK::z_25_30_Arathi_Highlands ($count, %multiuserquests);
	BNet::Quests_EK::z_30_35_Hinterlands ($count, %multiuserquests);
##	BNet::Quests_EK::z_35_40_Western_Plaguelands ($count, %multiuserquests);
##	BNet::Quests_EK::z_40_45_Eastern_Plaguelands ($count, %multiuserquests);
##	BNet::Quests_EK::z_45_50_Badlands_Searing_Gorge ($count, %multiuserquests);
##	BNet::Quests_EK::z_50_55_Burning_Steppes_Swamp_of_Sorrows ($count, %multiuserquests);
#
##Kalimdor
#	BNet::Quests_KD::z_10_20_Azshara ($count, %multiuserquests);
##	BNet::Quests_KD::z_10_20_Bloodmyst_Isle ($count, %multiuserquests);
##	BNet::Quests_KD::z_10_20_Darkshore ($count, %multiuserquests);
##	BNet::Quests_KD::z_10_20_Northern_Barrens ($count, %multiuserquests);
##	BNet::Quests_KD::z_20_25_Ashenvale ($count, %multiuserquests);
##	BNet::Quests_KD::z_25_30_Stonetalon_Mountains ($count, %multiuserquests);
##	BNet::Quests_KD::z_30_35_Desolace ($count, %multiuserquests);
##	BNet::Quests_KD::z_30_35_Southern_Barrens ($count, %multiuserquests);
##	BNet::Quests_KD::z_35_40_Dustwallow_Marsh ($count, %multiuserquests);
##	BNet::Quests_KD::z_35_40_Feralas ($count, %multiuserquests);
##	BNet::Quests_KD::z_40_45_Thousand_Needles ($count, %multiuserquests);
##	BNet::Quests_KD::z_45_50_Tanaris ($count, %multiuserquests);
##	BNet::Quests_KD::z_45_50_Felwood ($count, %multiuserquests);
##	BNet::Quests_KD::z_50_55_UnGoro_Crater ($count, %multiuserquests);
##	BNet::Quests_KD::z_50_55_Winterspring ($count, %multiuserquests);
##	BNet::Quests_KD::z_55_60_Blasted_Lands ($count, %multiuserquests);
#	BNet::Quests_KD::z_55_60_Silithus ($count, %multiuserquests);
#
##Outland
#	BNet::Quests_BC::z_58_63_hellfire_peninsula ($count, %multiuserquests);
#	BNet::Quests_BC::z_60_64_zangarmarsh ($count, %multiuserquests);
#	BNet::Quests_BC::z_62_65_terokkar_forest ($count, %multiuserquests);
#	BNet::Quests_BC::z_64_67_nagrand ($count, %multiuserquests);
##	BNet::Quests_BC::z_65_68_Blades_Edge_Mountains ($count, %multiuserquests);
##	BNet::Quests_BC::z_67_70_netherstorm ($count, %multiuserquests);
##	BNet::Quests_BC::z_67_70_shadowmoon_valley ($count, %multiuserquests);
#	BNet::Quests_BC::z_70_isle_of_queldanas ($count, %multiuserquests);
#
##Northrend
#	BNet::Quests_Wrath::z_68_72_borean_tundra ($count, %multiuserquests);
##	BNet::Quests_Wrath::z_68_71_Howling_Fjord ($count, %multiuserquests);
##	BNet::Quests_Wrath::z_71_74_Dragonblight ($count, %multiuserquests);
##	BNet::Quests_Wrath::z_73_75_Grizzly_Hills ($count, %multiuserquests);
##	BNet::Quests_Wrath::z_74_77_ZulDrak ($count, %multiuserquests);
##	BNet::Quests_Wrath::z_76_78_Sholazar_Basin ($count, %multiuserquests);
##	BNet::Quests_Wrath::z_77_80_Icecrown ($count, %multiuserquests);
##	BNet::Quests_Wrath::z_77_80_Storm_Peaks ($count, %multiuserquests);
#
##Cataclysm
##	BNet::Quests_Cata::z_80_82_Vashjir_Kelpthar_Forest ($count, %multiuserquests);
##	BNet::Quests_Cata::z_80_82_Vashjir_Shimmering_Expanse ($count, %multiuserquests);
##	BNet::Quests_Cata::z_80_82_Vashjir_Abyssal_Depths ($count, %multiuserquests);
#	BNet::Quests_Cata::z_80_82_mount_hyjal ($count, %multiuserquests);
#	BNet::Quests_Cata::z_82_83_deepholm ($count, %multiuserquests);
#	BNet::Quests_Cata::z_83_84_uldum ($count, %multiuserquests);
#	BNet::Quests_Cata::z_84_twilight_highlands ($count, %multiuserquests);
#
##Pandaria
##	BNet::Quests_Mists::z_85_86_Jade_Forest ($count, %multiuserquests);
##	BNet::Quests_Mists::z_86_87_Valley_of_the_Four_Winds ($count, %multiuserquests);
##	BNet::Quests_Mists::z_86_87_Krasarang_Wilds ($count, %multiuserquests);
##	BNet::Quests_Mists::z_87_88_Kun_Lai_Summit ($count, %multiuserquests);
##	BNet::Quests_Mists::z_88_89_Townlong_Steppes ($count, %multiuserquests);
##	BNet::Quests_Mists::z_89_90_Dread_Wastes ($count, %multiuserquests);
##	BNet::Quests_Mists::z_90_Isle_of_Thunder ($count, %multiuserquests);
#
##Draenor
#	BNet::Quests_Warlords::z_90_blasted_lands_intro ($count, %multiuserquests);
##	BNet::Quests_Warlords::z_90_92_frostfire_ridge ($count, %multiuserquests);
##	BNet::Quests_Warlords::z_90_92_shadowmoon_valley ($count, %multiuserquests);
##	BNet::Quests_Warlords::z_92_94_gorgrond ($count, %multiuserquests);
##	BNet::Quests_Warlords::z_94_96_talador ($count, %multiuserquests);
##	BNet::Quests_Warlords::z_96_98_spires_of_arak ($count, %multiuserquests);
##	BNet::Quests_Warlords::z_98_100_nagrand ($count, %multiuserquests);
##	BNet::Quests_Warlords::z_100_tanaan_jungle ($count, %multiuserquests);

###Legion
##	BNet::Quests_Legion::z_98_legion_intro ($count, %multiuserquests);
#	BNet::Quests_Legion::z_100_azsuna ($count, %multiuserquests);
#	BNet::Quests_Legion::z_100_valsharah ($count, %multiuserquests);
#	BNet::Quests_Legion::z_100_highmountain ($count, %multiuserquests);
#	BNet::Quests_Legion::z_100_stormheim ($count, %multiuserquests);
#	BNet::Quests_Legion::z_110_suramar ($count, %multiuserquests);
##	BNet::Quests_Legion::z_110_legion_fall ($count, %multiuserquests);
#	BNet::Quests_Legion::z_110_Argus ($count, %multiuserquests);
##
##Artifact Base Hidden Appearances
#####	BNet::Misc::artifact_non_hidden ($count, %multiusercriteria, %multiuserquests);
	BNet::Misc::artifact_non_hidden ($count, %multiusercriteria);
	BNet::Misc::artifact_hidden_base ($count, %multiusercriteria);
	BNet::Quests_Legion::artifact_improvingonhistory ($count, %multiuserquests);
	BNet::Quests_Legion::empoweredartifacts ($count, %multiuserquests);
##	BNet::Misc::class_hall_set ($count, %multiusercriteria);
##	BNet::Misc::pvp_prestige ($count, %multiusercriteria);
##	BNet::Quests_Misc::dungeons ($count, %multiuserquests);
##	BNet::Quests_Misc::raid_60_aq10 ($count, %multiuserquests);
##	BNet::Quests_Misc::raid_100_brf ($count, %multiuserquests);
##	BNet::Quests_Misc::raid_100_hfc ($count, %multiuserquests);
##	BNet::Quests_Misc::raid_110_en ($count, %multiuserquests);
##	BNet::Quests_Misc::raid_110_nh ($count, %multiuserquests);
##	BNet::Quests_Misc::raid_110_tos ($count, %multiuserquests);
#
##Class Specific
#	BNet::Quests_Misc::class_quests ($count, %multiuserquests);
##	BNet::Quests_Misc::warlock_green_fire ($count, %multiuserquests);
#
##Raids
##	BNet::Achievements::raid_30_os ($count, %multiusercriteria);
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
##	BNet::Achievements::p30_higher_learning ($count, %multiusercriteria);
##	BNet::Achievements::p50_glorious ($count, %multiusercriteria);
##	BNet::Achievements::p52_champions_of_lei_shen ($count, %multiusercriteria);
##	BNet::Achievements::p54_timeless_champion ($count, %multiusercriteria);
##	BNet::Achievements::p54_bigger_bag ($count, %multiusercriteria);
##	BNet::Achievements::p60_heralds_of_the_legion ($count, %multiusercriteria);
##	BNet::Achievements::p60_fight_the_power ($count, %multiusercriteria);
##	BNet::Achievements::p60_ancient_no_more ($count, %multiusercriteria);
##	BNet::Achievements::p60_gorgrond_monster_hunter ($count, %multiusercriteria);
##	BNet::Achievements::p62_jungle_stalker ($count, %multiusercriteria);
##	BNet::Achievements::p70_adventurer_of_azsuna ($count, %multiusercriteria);
##	BNet::Achievements::p70_adventurer_of_valsharah ($count, %multiusercriteria);
##	BNet::Achievements::p70_adventurer_of_highmountain ($count, %multiusercriteria);
##	BNet::Achievements::p70_adventurer_of_stormheim ($count, %multiusercriteria);
##	BNet::Achievements::p70_adventurer_of_suramar ($count, %multiusercriteria);
##	BNet::Achievements::p73_adventurer_of_argus ($count, %multiusercriteria);
	BNet::Achievements::p73_invasion_lesser ($count, %multiusercriteria);
	BNet::Achievements::p73_invasion_greater ($count, %multiusercriteria);
##	BNet::Achievements::p70_archy_a_keen_eye ($count, %multiusercriteria);
##	BNet::Achievements::p70_archy_legion_curator ($count, %multiusercriteria);
#
##	BNet::Achievements::p60_grand_treasure_hunter ($count, %multiusercriteria);
##	BNet::Achievements::p62_jungle_treasure_hunter ($count, %multiusercriteria);
##	BNet::Achievements::p70_treasures_of_azsuna ($count, %multiusercriteria);
##	BNet::Achievements::p70_treasures_of_valsharah ($count, %multiusercriteria);
##	BNet::Achievements::p70_treasures_of_highmountain ($count, %multiusercriteria);
##	BNet::Achievements::p70_treasures_of_stormheim ($count, %multiusercriteria);
##	BNet::Achievements::p70_treasures_of_suramar ($count, %multiusercriteria);
	BNet::Achievements::p70_shoot_first_loot_later ($count, %multiusercriteria);
#	BNet::Professions::cooking ($count, %multiusercriteria);

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
