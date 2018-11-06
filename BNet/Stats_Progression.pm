package BNet::Stats_Progression;

use strict;
use warnings;

sub bossdungeonandraid ($) {
	my ($decoded) = @_;
	my %bosses;
	my @raids = @{ $decoded->{'statistics'}{'subCategories'} };

	foreach my $f ( @raids ) {
		if ($f->{"id"} == 14807) {
			my $count=0;
			while ( $count <= 24 ) {
				my $id = $f->{'subCategories'}[0]{'statistics'}[$count]{'id'};
				my $name = $f->{'subCategories'}[0]{'statistics'}[$count]{'name'};
				my $kills = $f->{'subCategories'}[0]{'statistics'}[$count]{'quantity'};
				my $last = $f->{'subCategories'}[0]{'statistics'}[$count]{'lastUpdated'};
				if ( $id=='6135' ) {
					$bosses{'Ragefire'}->{'LavaGuardGordoth'}->{'kills'} = $kills;
					$bosses{'Ragefire'}->{'LavaGuardGordoth'}->{'lastkill'} = $last;
				} elsif ($id == '6136' ) {
					$bosses{'Wailing'}->{'Mutanus'}->{'kills'} = $kills;
					$bosses{'Wailing'}->{'Mutanus'}->{'lastkill'} = $last;
				} elsif ($id == '6137' ) {
					$bosses{'Blackfathom'}->{'Akumai'}->{'kills'} = $kills;
					$bosses{'Blackfathom'}->{'Akumai'}->{'lastkill'} = $last;
				} elsif ($id == '6138' ) {
					$bosses{'Stockades'}->{'Hogger'}->{'kills'} = $kills;
					$bosses{'Stockades'}->{'Hogger'}->{'lastkill'} = $last;
				} elsif ($id == '6139' ) {
					$bosses{'RazorfenKraul'}->{'Charlga'}->{'kills'} = $kills;
					$bosses{'RazorfenKraul'}->{'Charlga'}->{'lastkill'} = $last;
				} elsif ($id == '6140' ) {
					$bosses{'Gnomeregan'}->{'Thermaplugg'}->{'kills'} = $kills;
					$bosses{'Gnomeregan'}->{'Thermaplugg'}->{'lastkill'} = $last;
				} elsif ($id == '6141' ) {
					$bosses{'RazorfenDowns'}->{'Amnennar'}->{'kills'} = $kills;
					$bosses{'RazorfenDowns'}->{'Amnennar'}->{'lastkill'} = $last;
				} elsif ($id == '6142' ) {
					$bosses{'Uldaman'}->{'Archaedas'}->{'kills'} = $kills;
					$bosses{'Uldaman'}->{'Archaedas'}->{'lastkill'} = $last;
				} elsif ($id == '6143' ) {
					$bosses{'Maraudon'}->{'Theradras'}->{'kills'} = $kills;
					$bosses{'Maraudon'}->{'Theradras'}->{'lastkill'} = $last;
				} elsif ($id == '6144' ) {
					$bosses{'SunkenTemple'}->{'Eranikus'}->{'kills'} = $kills;
					$bosses{'SunkenTemple'}->{'Eranikus'}->{'lastkill'} = $last;
				} elsif ($id == '6145' ) {
					$bosses{'LBRS'}->{'Wyrmthalak'}->{'kills'} = $kills;
					$bosses{'LBRS'}->{'Wyrmthalak'}->{'lastkill'} = $last;
				} elsif ($id == '6146' ) {
					$bosses{'DireMaul'}->{'Gordok'}->{'kills'} = $kills;
					$bosses{'DireMaul'}->{'Gordok'}->{'lastkill'} = $last;
				} elsif ($id == '6337' ) {
					$bosses{'AQ10'}->{'Ossirian'}->{'kills'} = $kills;
					$bosses{'AQ10'}->{'Ossirian'}->{'lastkill'} = $last;
				} elsif ($id == '6786' ) {
					$bosses{'ScarletHalls'}->{'Koegler'}->{'kills'} = $kills;
					$bosses{'ScarletHalls'}->{'Koegler'}->{'lastkill'} = $last;
				} elsif ($id == '1091' ) {
					$bosses{'Deadmines'}->{'CaptainCookie'}->{'kills'} = $kills;
					$bosses{'Deadmines'}->{'CaptainCookie'}->{'lastkill'} = $last;
				} elsif ($id == '1092' ) {
					$bosses{'Shadowfang'}->{'LordGodfrey'}->{'kills'} = $kills;
					$bosses{'Shadowfang'}->{'LordGodfrey'}->{'lastkill'} = $last;
				} elsif ($id == '1093' ) {
					$bosses{'Monastery'}->{'Whitemane'}->{'kills'} = $kills;
					$bosses{'Monastery'}->{'Whitemane'}->{'lastkill'} = $last;
				} elsif ($id == '1094' ) {
					$bosses{'ZulFarrak'}->{'Sandscalp'}->{'kills'} = $kills;
					$bosses{'ZulFarrak'}->{'Sandscalp'}->{'lastkill'} = $last;
				} elsif ($id == '1095' ) {
					$bosses{'BRD'}->{'Thaurissan'}->{'kills'} = $kills;
					$bosses{'BRD'}->{'Thaurissan'}->{'lastkill'} = $last;
				} elsif ($id == '1096' ) {
					$bosses{'UBRS'}->{'Drakkisath'}->{'kills'} = $kills;
					$bosses{'UBRS'}->{'Drakkisath'}->{'lastkill'} = $last;
				} elsif ($id == '1097' ) {
					$bosses{'Stratholme'}->{'Rivendare'}->{'kills'} = $kills;
					$bosses{'Stratholme'}->{'Rivendare'}->{'lastkill'} = $last;
				} elsif ($id == '1098' ) {
					$bosses{'Onyxia'}->{'Onyxia'}->{'kills'} = $kills;
					$bosses{'Onyxia'}->{'Onyxia'}->{'lastkill'} = $last;
				} elsif ($id == '1099' ) {
					$bosses{'MC'}->{'Ragnaros'}->{'kills'} = $kills;
					$bosses{'MC'}->{'Ragnaros'}->{'lastkill'} = $last;
				} elsif ($id == '1100' ) {
					$bosses{'BWL'}->{'Nefarian'}->{'kills'} = $kills;
					$bosses{'BWL'}->{'Nefarian'}->{'lastkill'} = $last;
				} elsif ($id == '1101' ) {
					$bosses{'AQ40'}->{'CThun'}->{'kills'} = $kills;
					$bosses{'AQ40'}->{'CThun'}->{'lastkill'} = $last;
				}
			$count++;
			}
		}
	}
	return %bosses;
}

sub bossdungeonandraid2 (%) {
	my %bosses = @_;
	
	#Print Ragefire
	print 
	
}

1;
