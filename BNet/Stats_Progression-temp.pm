
			$count = 0;
			while ( $count <= 24 ) {
				my $id = $f->{'subCategories'}[1]{'statistics'}[$count]{'id'};
				my $name = $f->{'subCategories'}[1]{'statistics'}[$count]{'name'};
				my $kills = $f->{'subCategories'}[1]{'statistics'}[$count]{'quantity'};
				my $last = $f->{'subCategories'}[1]{'statistics'}[$count]{'lastUpdated'};
				if ( $id=='6147' ) {
					$bosses{'HellfireRamparts'}->{'OmortheUnscarred'}->{'kills'} = $kills;
					$bosses{'HellfireRamparts'}->{'OmortheUnscarred'}->{'lastkill'} = $last;
				} elsif ($id == '1068' ) {
					$bosses{'TheBloodFurnace'}->{'KelidantheBreaker'}->{'kills'} = $kills;
					$bosses{'TheBloodFurnace'}->{'KelidantheBreaker'}->{'lastkill'} = $last;
				} elsif ($id == '1069' ) {
					$bosses{'ManaTombs'}->{'Nexus-PrinceShaffar'}->{'kills'} = $kills;
					$bosses{'ManaTombs'}->{'Nexus-PrinceShaffar'}->{'lastkill'} = $last;
				} elsif ($id == '1070' ) {
					$bosses{'TheEscapeFromDurnholde'}->{'EpochHunter'}->{'kills'} = $kills;
					$bosses{'TheEscapeFromDurnholde'}->{'EpochHunter'}->{'lastkill'} = $last;
				} elsif ($id == '1071' ) {
					$bosses{'SlavePens'}->{'Quagmirran'}->{'kills'} = $kills;
					$bosses{'SlavePens'}->{'Quagmirran'}->{'lastkill'} = $last;
				} elsif ($id == '1072' ) {
					$bosses{'Underbog'}->{'BlackStalker'}->{'kills'} = $kills;
					$bosses{'Underbog'}->{'BlackStalker'}->{'lastkill'} = $last;
				} elsif ($id == '1073' ) {
					$bosses{'AuchenaiCrypts'}->{'ExarchMaladaar'}->{'kills'} = $kills;
					$bosses{'AuchenaiCrypts'}->{'ExarchMaladaar'}->{'lastkill'} = $last;
				} elsif ($id == '1074' ) {
					$bosses{'SethekkHalls'}->{'TalonKingIkiss'}->{'kills'} = $kills;
					$bosses{'SethekkHalls'}->{'TalonKingIkiss'}->{'lastkill'} = $last;
				} elsif ($id == '1075' ) {
					$bosses{'ShadowLabyrinth'}->{'Murmur'}->{'kills'} = $kills;
					$bosses{'ShadowLabyrinth'}->{'Murmur'}->{'lastkill'} = $last;
				} elsif ($id == '1076' ) {
					$bosses{'OpeningoftheDarkPortal'}->{'Aeonus'}->{'kills'} = $kills;
					$bosses{'OpeningoftheDarkPortal'}->{'Aeonus'}->{'lastkill'} = $last;
				} elsif ($id == '1077' ) {
					$bosses{'TheSteamvault'}->{'WarlordKalithresh'}->{'kills'} = $kills;
					$bosses{'TheSteamvault'}->{'WarlordKalithresh'}->{'lastkill'} = $last;
				} elsif ($id == '1078' ) {
					$bosses{'TheShatteredHalls'}->{'WarchiefKargathBladefist'}->{'kills'} = $kills;
					$bosses{'TheShatteredHalls'}->{'WarchiefKargathBladefist'}->{'lastkill'} = $last;
				} elsif ($id == '1079' ) {
					$bosses{'TheMechanar'}->{'PathaleontheCalculator'}->{'kills'} = $kills;
					$bosses{'TheMechanar'}->{'PathaleontheCalculator'}->{'lastkill'} = $last;
				} elsif ($id == '1080' ) {
					$bosses{'TheBotanica'}->{'WarpSplinter'}->{'kills'} = $kills;
					$bosses{'TheBotanica'}->{'WarpSplinter'}->{'lastkill'} = $last;
				} elsif ($id == '1081' ) {
					$bosses{'TheArcatraz'}->{'HarbingerSkyriss'}->{'kills'} = $kills;
					$bosses{'TheArcatraz'}->{'HarbingerSkyriss'}->{'lastkill'} = $last;
				} elsif ($id == '1082' ) {
					$bosses{'MagistersTerrace'}->{'KaelthasSunstrider'}->{'kills'} = $kills;
					$bosses{'MagistersTerrace'}->{'KaelthasSunstrider'}->{'lastkill'} = $last;
				} elsif ($id == '1083' ) {
					$bosses{'Karazhan'}->{'PrinceMalchezaar'}->{'kills'} = $kills;
					$bosses{'Karazhan'}->{'PrinceMalchezaar'}->{'lastkill'} = $last;
				} elsif ($id == '1084' ) {
					$bosses{'ZulAman'}->{'Zuljin'}->{'kills'} = $kills;
					$bosses{'ZulAman'}->{'Zuljin'}->{'lastkill'} = $last;
				} elsif ($id == '1085' ) {
					$bosses{'GruulsLair'}->{'Gruul'}->{'kills'} = $kills;
					$bosses{'GruulsLair'}->{'Gruul'}->{'lastkill'} = $last;
				} elsif ($id == '1086' ) {
					$bosses{'MagtheridonsLair'}->{'Magtheridon'}->{'kills'} = $kills;
					$bosses{'MagtheridonsLair'}->{'Magtheridon'}->{'lastkill'} = $last;
				} elsif ($id == '1087' ) {
					$bosses{'SerpentshrineCavern'}->{'LadyVashj'}->{'kills'} = $kills;
					$bosses{'SerpentshrineCavern'}->{'LadyVashj'}->{'lastkill'} = $last;
				} elsif ($id == '1088' ) {
					$bosses{'TempestKeep'}->{'KaelthasSunstrider'}->{'kills'} = $kills;
					$bosses{'TempestKeep'}->{'KaelthasSunstrider'}->{'lastkill'} = $last;
				} elsif ($id == '6148' ) {
					$bosses{'BattleforMountHyjal'}->{'Archimonde'}->{'kills'} = $kills;
					$bosses{'BattleforMountHyjal'}->{'Archimonde'}->{'lastkill'} = $last;
				} elsif ($id == '1089' ) {
					$bosses{'TheBlackTemple'}->{'IllidanStormrage'}->{'kills'} = $kills;
					$bosses{'TheBlackTemple'}->{'IllidanStormrage'}->{'lastkill'} = $last;
				} elsif ($id == '1090' ) {
					$bosses{'SunwellPlateau'}->{'Kiljaeden'}->{'kills'} = $kills;
					$bosses{'SunwellPlateau'}->{'Kiljaeden'}->{'lastkill'} = $last;
				}
			$count++;
			}
			$count = 0;
			while ( $count <= 218 ) {
				my $id = $f->{'subCategories'}[2]{'statistics'}[$count]{'id'};
				my $name = $f->{'subCategories'}[2]{'statistics'}[$count]{'name'};
				my $kills = $f->{'subCategories'}[2]{'statistics'}[$count]{'quantity'};
				my $last = $f->{'subCategories'}[2]{'statistics'}[$count]{'lastUpdated'};
				if ( $id=='1242' ) {
					$bosses{'UtgardeKeep'}->{'IngvarthePlunderer'}->{'N'}->{'kills'} = $kills;
					$bosses{'UtgardeKeep'}->{'IngvarthePlunderer'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '1504' ) {
					$bosses{'UtgardeKeep'}->{'IngvarthePlunderer'}->{'H'}->{'kills'} = $kills;
					$bosses{'UtgardeKeep'}->{'IngvarthePlunderer'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '1231' ) {
					$bosses{'TheNexus'}->{'Keristrasza'}->{'N'}->{'kills'} = $kills;
					$bosses{'TheNexus'}->{'Keristrasza'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '1505' ) {
					$bosses{'TheNexus'}->{'Keristrasza'}->{'H'}->{'kills'} = $kills;
					$bosses{'TheNexus'}->{'Keristrasza'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '1232' ) {
					$bosses{'Azjol-Nerub'}->{'Anubarak'}->{'N'}->{'kills'} = $kills;
					$bosses{'Azjol-Nerub'}->{'Anubarak'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '1506' ) {
					$bosses{'Azjol-Nerub'}->{'Anubarak'}->{'H'}->{'kills'} = $kills;
					$bosses{'Azjol-Nerub'}->{'Anubarak'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '1233' ) {
					$bosses{'AhnkahetTheOldKingdom'}->{'HeraldVolazj'}->{'N'}->{'kills'} = $kills;
					$bosses{'AhnkahetTheOldKingdom'}->{'HeraldVolazj'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '1507' ) {
					$bosses{'AhnkahetTheOldKingdom'}->{'HeraldVolazj'}->{'H'}->{'kills'} = $kills;
					$bosses{'AhnkahetTheOldKingdom'}->{'HeraldVolazj'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '1234' ) {
					$bosses{'DrakTharonKeep'}->{'TheProphetTharonja'}->{'N'}->{'kills'} = $kills;
					$bosses{'DrakTharonKeep'}->{'TheProphetTharonja'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '1508' ) {
					$bosses{'DrakTharonKeep'}->{'TheProphetTharonja'}->{'H'}->{'kills'} = $kills;
					$bosses{'DrakTharonKeep'}->{'TheProphetTharonja'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '1235' ) {
					$bosses{'TheVioletHold'}->{'Cyanigosa'}->{'N'}->{'kills'} = $kills;
					$bosses{'TheVioletHold'}->{'Cyanigosa'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '1509' ) {
					$bosses{'TheVioletHold'}->{'Cyanigosa'}->{'H'}->{'kills'} = $kills;
					$bosses{'TheVioletHold'}->{'Cyanigosa'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '1236' ) {
					$bosses{'Gundrak'}->{'Galdarah'}->{'N'}->{'kills'} = $kills;
					$bosses{'Gundrak'}->{'Galdarah'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '1510' ) {
					$bosses{'Gundrak'}->{'Galdarah'}->{'H'}->{'kills'} = $kills;
					$bosses{'Gundrak'}->{'Galdarah'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '1237' ) {
					$bosses{'HallsofStone'}->{'SjonnirtheIronshaper'}->{'N'}->{'kills'} = $kills;
					$bosses{'HallsofStone'}->{'SjonnirtheIronshaper'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '1511' ) {
					$bosses{'HallsofStone'}->{'SjonnirtheIronshaper'}->{'H'}->{'kills'} = $kills;
					$bosses{'HallsofStone'}->{'SjonnirtheIronshaper'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '1238' ) {
					$bosses{'HallsofLightning'}->{'Loken'}->{'N'}->{'kills'} = $kills;
					$bosses{'HallsofLightning'}->{'Loken'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '1512' ) {
					$bosses{'HallsofLightning'}->{'Loken'}->{'H'}->{'kills'} = $kills;
					$bosses{'HallsofLightning'}->{'Loken'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '1239' ) {
					$bosses{'TheOculus'}->{'LeyGuardianEregos'}->{'N'}->{'kills'} = $kills;
					$bosses{'TheOculus'}->{'LeyGuardianEregos'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '1513' ) {
					$bosses{'TheOculus'}->{'LeyGuardianEregos'}->{'H'}->{'kills'} = $kills;
					$bosses{'TheOculus'}->{'LeyGuardianEregos'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '1240' ) {
					$bosses{'UtgardePinnacle'}->{'KingYmiron'}->{'N'}->{'kills'} = $kills;
					$bosses{'UtgardePinnacle'}->{'KingYmiron'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '1514' ) {
					$bosses{'UtgardePinnacle'}->{'KingYmiron'}->{'H'}->{'kills'} = $kills;
					$bosses{'UtgardePinnacle'}->{'KingYmiron'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '1241' ) {
					$bosses{'CoTStratholme'}->{'MalGanisdefeated'}->{'N'}->{'kills'} = $kills;
					$bosses{'CoTStratholme'}->{'MalGanisdefeated'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '1515' ) {
					$bosses{'CoTStratholme'}->{'MalGanisdefeated'}->{'H'}->{'kills'} = $kills;
					$bosses{'CoTStratholme'}->{'MalGanisdefeated'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '4018' ) {
					$bosses{'HunterChampion'}->{'TrialoftheChampion'}->{'N'}->{'kills'} = $kills;
					$bosses{'HunterChampion'}->{'TrialoftheChampion'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '4019' ) {
					$bosses{'TrialoftheChampion'}->{'HunterChampion'}->{'H'}->{'kills'} = $kills;
					$bosses{'TrialoftheChampion'}->{'HunterChampion'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '4048' ) {
					$bosses{'TrialoftheChampion'}->{'MageChampion'}->{'N'}->{'kills'} = $kills;
					$bosses{'TrialoftheChampion'}->{'MageChampion'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '4049' ) {
					$bosses{'TrialoftheChampion'}->{'MageChampion'}->{'H'}->{'kills'} = $kills;
					$bosses{'TrialoftheChampion'}->{'MageChampion'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '4050' ) {
					$bosses{'TrialoftheChampion'}->{'RogueChampion'}->{'N'}->{'kills'} = $kills;
					$bosses{'TrialoftheChampion'}->{'RogueChampion'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '4051' ) {
					$bosses{'TrialoftheChampion'}->{'RogueChampion'}->{'H'}->{'kills'} = $kills;
					$bosses{'TrialoftheChampion'}->{'RogueChampion'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '4052' ) {
					$bosses{'TrialoftheChampion'}->{'ShamanChampion'}->{'N'}->{'kills'} = $kills;
					$bosses{'TrialoftheChampion'}->{'ShamanChampion'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '4053' ) {
					$bosses{'TrialoftheChampion'}->{'ShamanChampion'}->{'H'}->{'kills'} = $kills;
					$bosses{'TrialoftheChampion'}->{'ShamanChampion'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '4054' ) {
					$bosses{'TrialoftheChampion'}->{'WarriorChampion'}->{'N'}->{'kills'} = $kills;
					$bosses{'TrialoftheChampion'}->{'WarriorChampion'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '4055' ) {
					$bosses{'TrialoftheChampion'}->{'WarriorChampion'}->{'H'}->{'kills'} = $kills;
					$bosses{'TrialoftheChampion'}->{'WarriorChampion'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '4022' ) {
					$bosses{'TrialoftheChampion'}->{'ArgentConfessorPaletress'}->{'N'}->{'kills'} = $kills;
					$bosses{'TrialoftheChampion'}->{'ArgentConfessorPaletress'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '4023' ) {
					$bosses{'TrialoftheChampion'}->{'ArgentConfessorPaletress'}->{'H'}->{'kills'} = $kills;
					$bosses{'TrialoftheChampion'}->{'ArgentConfessorPaletress'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '4024' ) {
					$bosses{'TrialoftheChampion'}->{'EadricthePure'}->{'N'}->{'kills'} = $kills;
					$bosses{'TrialoftheChampion'}->{'EadricthePure'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '4025' ) {
					$bosses{'TrialoftheChampion'}->{'EadricthePure'}->{'H'}->{'kills'} = $kills;
					$bosses{'TrialoftheChampion'}->{'EadricthePure'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '4026' ) {
					$bosses{'TrialoftheChampion'}->{'TheBlackKnight'}->{'N'}->{'kills'} = $kills;
					$bosses{'TrialoftheChampion'}->{'TheBlackKnight'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '4027' ) {
					$bosses{'TrialoftheChampion'}->{'TheBlackKnight'}->{'H'}->{'kills'} = $kills;
					$bosses{'TrialoftheChampion'}->{'TheBlackKnight'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '4713' ) {
					$bosses{'ForgeofSouls'}->{'Bronjahm'}->{'N'}->{'kills'} = $kills;
					$bosses{'ForgeofSouls'}->{'Bronjahm'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '4714' ) {
					$bosses{'ForgeofSouls'}->{'Bronjahm'}->{'H'}->{'kills'} = $kills;
					$bosses{'ForgeofSouls'}->{'Bronjahm'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '4715' ) {
					$bosses{'ForgeofSouls'}->{'DevourerofSouls'}->{'N'}->{'kills'} = $kills;
					$bosses{'ForgeofSouls'}->{'DevourerofSouls'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '4716' ) {
					$bosses{'ForgeofSouls'}->{'DevourerofSouls'}->{'H'}->{'kills'} = $kills;
					$bosses{'ForgeofSouls'}->{'DevourerofSouls'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '4717' ) {
					$bosses{'PitofSaron'}->{'ForgemasterGarfrost'}->{'N'}->{'kills'} = $kills;
					$bosses{'PitofSaron'}->{'ForgemasterGarfrost'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '4728' ) {
					$bosses{'PitofSaron'}->{'ForgemasterGarfrost'}->{'H'}->{'kills'} = $kills;
					$bosses{'PitofSaron'}->{'ForgemasterGarfrost'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '4718' ) {
					$bosses{'PitofSaron'}->{'IckandKrick'}->{'N'}->{'kills'} = $kills;
					$bosses{'PitofSaron'}->{'IckandKrick'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '4719' ) {
					$bosses{'PitofSaron'}->{'IckandKrick'}->{'H'}->{'kills'} = $kills;
					$bosses{'PitofSaron'}->{'IckandKrick'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '4720' ) {
					$bosses{'PitofSaron'}->{'ScourgelordTyrannus'}->{'N'}->{'kills'} = $kills;
					$bosses{'PitofSaron'}->{'ScourgelordTyrannus'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '4721' ) {
					$bosses{'PitofSaron'}->{'ScourgelordTyrannus'}->{'H'}->{'kills'} = $kills;
					$bosses{'PitofSaron'}->{'ScourgelordTyrannus'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '4722' ) {
					$bosses{'HallsofReflection'}->{'Falric'}->{'N'}->{'kills'} = $kills;
					$bosses{'HallsofReflection'}->{'Falric'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '4723' ) {
					$bosses{'HallsofReflection'}->{'Falric'}->{'H'}->{'kills'} = $kills;
					$bosses{'HallsofReflection'}->{'Falric'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '4724' ) {
					$bosses{'HallsofReflection'}->{'Marwyn'}->{'N'}->{'kills'} = $kills;
					$bosses{'HallsofReflection'}->{'Marwyn'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '4725' ) {
					$bosses{'HallsofReflection'}->{'Marwyn'}->{'H'}->{'kills'} = $kills;
					$bosses{'HallsofReflection'}->{'Marwyn'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '4726' ) {
					$bosses{'HallsofReflection'}->{'LichKingescapes'}->{'N'}->{'kills'} = $kills;
					$bosses{'HallsofReflection'}->{'LichKingescapes'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '4727' ) {
					$bosses{'HallsofReflection'}->{'LichKingescapes'}->{'H'}->{'kills'} = $kills;
					$bosses{'HallsofReflection'}->{'LichKingescapes'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '1753' ) {
					$bosses{'ArchavontheStoneWatcher'}->{'Wintergrasp'}->{'10'}->{'kills'} = $kills;
					$bosses{'ArchavontheStoneWatcher'}->{'Wintergrasp'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1754' ) {
					$bosses{'ArchavontheStoneWatcher'}->{'Wintergrasp'}->{'25'}->{'kills'} = $kills;
					$bosses{'ArchavontheStoneWatcher'}->{'Wintergrasp'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '2870' ) {
					$bosses{'EmalontheStormWatcher'}->{'Wintergrasp'}->{'10'}->{'kills'} = $kills;
					$bosses{'EmalontheStormWatcher'}->{'Wintergrasp'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '3236' ) {
					$bosses{'EmalontheStormWatcher'}->{'Wintergrasp'}->{'25'}->{'kills'} = $kills;
					$bosses{'EmalontheStormWatcher'}->{'Wintergrasp'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '4074' ) {
					$bosses{'KoralontheFlameWatcher'}->{'Wintergrasp'}->{'10'}->{'kills'} = $kills;
					$bosses{'KoralontheFlameWatcher'}->{'Wintergrasp'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '4075' ) {
					$bosses{'KoralontheFlameWatcher'}->{'Wintergrasp'}->{'25'}->{'kills'} = $kills;
					$bosses{'KoralontheFlameWatcher'}->{'Wintergrasp'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '4657' ) {
					$bosses{'ToravontheIceWatcher'}->{'Wintergrasp'}->{'10'}->{'kills'} = $kills;
					$bosses{'ToravontheIceWatcher'}->{'Wintergrasp'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '4658' ) {
					$bosses{'ToravontheIceWatcher'}->{'Wintergrasp'}->{'25'}->{'kills'} = $kills;
					$bosses{'ToravontheIceWatcher'}->{'Wintergrasp'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1361' ) {
					$bosses{'Naxxramas'}->{'AnubRekhan'}->{'10'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'AnubRekhan'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1368' ) {
					$bosses{'Naxxramas'}->{'AnubRekhan'}->{'25'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'AnubRekhan'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1372' ) {
					$bosses{'Naxxramas'}->{'Gluth'}->{'10'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'Gluth'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1378' ) {
					$bosses{'Naxxramas'}->{'Gluth'}->{'25'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'Gluth'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1366' ) {
					$bosses{'Naxxramas'}->{'GothiktheHarvester'}->{'10'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'GothiktheHarvester'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1379' ) {
					$bosses{'Naxxramas'}->{'GothiktheHarvester'}->{'25'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'GothiktheHarvester'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1362' ) {
					$bosses{'Naxxramas'}->{'GrandWidowFaerlina'}->{'10'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'GrandWidowFaerlina'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1380' ) {
					$bosses{'Naxxramas'}->{'GrandWidowFaerlina'}->{'25'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'GrandWidowFaerlina'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1371' ) {
					$bosses{'Naxxramas'}->{'Grobbulus'}->{'10'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'Grobbulus'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1381' ) {
					$bosses{'Naxxramas'}->{'Grobbulus'}->{'25'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'Grobbulus'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1369' ) {
					$bosses{'Naxxramas'}->{'HeigantheUnclean'}->{'10'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'HeigantheUnclean'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1382' ) {
					$bosses{'Naxxramas'}->{'HeigantheUnclean'}->{'25'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'HeigantheUnclean'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1375' ) {
					$bosses{'Naxxramas'}->{'FourHorsemen'}->{'10'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'FourHorsemen'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1383' ) {
					$bosses{'Naxxramas'}->{'FourHorsemen'}->{'25'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'FourHorsemen'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1374' ) {
					$bosses{'Naxxramas'}->{'InstructorRazuvious'}->{'10'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'InstructorRazuvious'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1384' ) {
					$bosses{'Naxxramas'}->{'InstructorRazuvious'}->{'25'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'InstructorRazuvious'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1370' ) {
					$bosses{'Naxxramas'}->{'Loatheb'}->{'10'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'Loatheb'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1385' ) {
					$bosses{'Naxxramas'}->{'Loatheb'}->{'25'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'Loatheb'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1363' ) {
					$bosses{'Naxxramas'}->{'Maexxna'}->{'10'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'Maexxna'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1386' ) {
					$bosses{'Naxxramas'}->{'Maexxna'}->{'25'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'Maexxna'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1365' ) {
					$bosses{'Naxxramas'}->{'NoththePlaguebringer'}->{'10'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'NoththePlaguebringer'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1387' ) {
					$bosses{'Naxxramas'}->{'NoththePlaguebringer'}->{'25'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'NoththePlaguebringer'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1364' ) {
					$bosses{'Naxxramas'}->{'Patchwerk'}->{'10'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'Patchwerk'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1367' ) {
					$bosses{'Naxxramas'}->{'Patchwerk'}->{'25'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'Patchwerk'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1373' ) {
					$bosses{'Naxxramas'}->{'Thaddius'}->{'10'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'Thaddius'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1388' ) {
					$bosses{'Naxxramas'}->{'Thaddius'}->{'25'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'Thaddius'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1376' ) {
					$bosses{'Naxxramas'}->{'Sapphiron'}->{'10'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'Sapphiron'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1389' ) {
					$bosses{'Naxxramas'}->{'Sapphiron'}->{'25'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'Sapphiron'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1390' ) {
					$bosses{'Naxxramas'}->{'KelThuzad'}->{'25'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'KelThuzad'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1377' ) {
					$bosses{'Naxxramas'}->{'KelThuzad'}->{'10'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'KelThuzad'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '2596' ) {
					$bosses{'Naxxramas'}->{'MrBigglesworth'}->{'kills'} = $kills;
					$bosses{'Naxxramas'}->{'MrBigglesworth'}->{'lastkill'} = $last;
				} elsif ($id == '1392' ) {
					$bosses{'ChamberoftheAspects'}->{'Sartharion'}->{'10'}->{'kills'} = $kills;
					$bosses{'ChamberoftheAspects'}->{'Sartharion'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1393' ) {
					$bosses{'ChamberoftheAspects'}->{'Sartharion'}->{'25'}->{'kills'} = $kills;
					$bosses{'ChamberoftheAspects'}->{'Sartharion'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '1391' ) {
					$bosses{'TheEyeofEternity'}->{'Malygos'}->{'10'}->{'kills'} = $kills;
					$bosses{'TheEyeofEternity'}->{'Malygos'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '1394' ) {
					$bosses{'TheEyeofEternity'}->{'Malygos'}->{'25'}->{'kills'} = $kills;
					$bosses{'TheEyeofEternity'}->{'Malygos'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '2856' ) {
					$bosses{'Ulduar'}->{'FlameLeviathan'}->{'10'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'FlameLeviathan'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '2872' ) {
					$bosses{'Ulduar'}->{'FlameLeviathan'}->{'25'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'FlameLeviathan'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '2857' ) {
					$bosses{'Ulduar'}->{'Razorscale'}->{'10'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'Razorscale'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '2873' ) {
					$bosses{'Ulduar'}->{'Razorscale'}->{'25'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'Razorscale'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '2858' ) {
					$bosses{'Ulduar'}->{'IgnistheFurnaceMaster'}->{'10'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'IgnistheFurnaceMaster'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '2874' ) {
					$bosses{'Ulduar'}->{'IgnistheFurnaceMaster'}->{'25'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'IgnistheFurnaceMaster'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '2859' ) {
					$bosses{'Ulduar'}->{'XT002Deconstructor'}->{'10'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'XT002Deconstructor'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '2884' ) {
					$bosses{'Ulduar'}->{'XT002Deconstructor'}->{'25'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'XT002Deconstructor'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '2860' ) {
					$bosses{'Ulduar'}->{'AssemblyofIron'}->{'10'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'AssemblyofIron'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '2885' ) {
					$bosses{'Ulduar'}->{'AssemblyofIron'}->{'25'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'AssemblyofIron'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '2861' ) {
					$bosses{'Ulduar'}->{'Kologarn'}->{'10'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'Kologarn'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '2875' ) {
					$bosses{'Ulduar'}->{'Kologarn'}->{'25'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'Kologarn'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '2868' ) {
					$bosses{'Ulduar'}->{'Auriaya'}->{'10'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'Auriaya'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '2882' ) {
					$bosses{'Ulduar'}->{'Auriaya'}->{'25'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'Auriaya'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '2862' ) {
					$bosses{'Ulduar'}->{'Hodir'}->{'10'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'Hodir'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '3256' ) {
					$bosses{'Ulduar'}->{'Hodir'}->{'25'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'Hodir'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '2863' ) {
					$bosses{'Ulduar'}->{'Thorim'}->{'10'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'Thorim'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '3257' ) {
					$bosses{'Ulduar'}->{'Thorim'}->{'25'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'Thorim'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '2864' ) {
					$bosses{'Ulduar'}->{'Freya'}->{'10'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'Freya'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '3258' ) {
					$bosses{'Ulduar'}->{'Freya'}->{'25'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'Freya'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '2865' ) {
					$bosses{'Ulduar'}->{'Mimiron'}->{'10'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'Mimiron'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '2879' ) {
					$bosses{'Ulduar'}->{'Mimiron'}->{'25'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'Mimiron'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '2866' ) {
					$bosses{'Ulduar'}->{'GeneralVezax'}->{'10'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'GeneralVezax'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '2880' ) {
					$bosses{'Ulduar'}->{'GeneralVezax'}->{'25'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'GeneralVezax'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '2869' ) {
					$bosses{'Ulduar'}->{'Yogg-Saron'}->{'10'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'Yogg-Saron'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '2883' ) {
					$bosses{'Ulduar'}->{'Yogg-Saron'}->{'25'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'Yogg-Saron'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '2867' ) {
					$bosses{'Ulduar'}->{'AlgalontheObserver'}->{'10'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'AlgalontheObserver'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '2881' ) {
					$bosses{'Ulduar'}->{'AlgalontheObserver'}->{'25'}->{'kills'} = $kills;
					$bosses{'Ulduar'}->{'AlgalontheObserver'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '4028' ) {
					$bosses{'TotC'}->{'BeastsofNorthrend'}->{'10'}->{'kills'} = $kills;
					$bosses{'TotC'}->{'BeastsofNorthrend'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '4029' ) {
					$bosses{'TotGC'}->{'BeastsofNorthrend'}->{'25'}->{'kills'} = $kills;
					$bosses{'TotGC'}->{'BeastsofNorthrend'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '4030' ) {
					$bosses{'TotGC'}->{'BeastsofNorthrend'}->{'10'}->{'kills'} = $kills;
					$bosses{'TotGC'}->{'BeastsofNorthrend'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '4031' ) {
					$bosses{'TotC'}->{'BeastsofNorthrend'}->{'25'}->{'kills'} = $kills;
					$bosses{'TotC'}->{'BeastsofNorthrend'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '4032' ) {
					$bosses{'TotC'}->{'LordJaraxxus'}->{'10'}->{'kills'} = $kills;
					$bosses{'TotC'}->{'LordJaraxxus'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '4033' ) {
					$bosses{'TotGC'}->{'LordJaraxxus'}->{'10'}->{'kills'} = $kills;
					$bosses{'TotGC'}->{'LordJaraxxus'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '4034' ) {
					$bosses{'TotC'}->{'LordJaraxxus'}->{'25'}->{'kills'} = $kills;
					$bosses{'TotC'}->{'LordJaraxxus'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '4035' ) {
					$bosses{'TotGC'}->{'LordJaraxxus'}->{'25'}->{'kills'} = $kills;
					$bosses{'TotGC'}->{'LordJaraxxus'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '4036' ) {
					$bosses{'TotC'}->{'FactionChampions'}->{'10'}->{'kills'} = $kills;
					$bosses{'TotC'}->{'FactionChampions'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '4037' ) {
					$bosses{'TotGC'}->{'FactionChampions'}->{'10'}->{'kills'} = $kills;
					$bosses{'TotGC'}->{'FactionChampions'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '4038' ) {
					$bosses{'TotC'}->{'FactionChampions'}->{'25'}->{'kills'} = $kills;
					$bosses{'TotC'}->{'FactionChampions'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '4039' ) {
					$bosses{'TotGC'}->{'FactionChampions'}->{'25'}->{'kills'} = $kills;
					$bosses{'TotGC'}->{'FactionChampions'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '4040' ) {
					$bosses{'TotC'}->{'ValkyrTwins'}->{'10'}->{'kills'} = $kills;
					$bosses{'TotC'}->{'ValkyrTwins'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '4041' ) {
					$bosses{'TotGC'}->{'ValkyrTwins'}->{'10'}->{'kills'} = $kills;
					$bosses{'TotGC'}->{'ValkyrTwins'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '4042' ) {
					$bosses{'TotC'}->{'ValkyrTwins'}->{'25'}->{'kills'} = $kills;
					$bosses{'TotC'}->{'ValkyrTwins'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '4043' ) {
					$bosses{'TotGC'}->{'ValkyrTwins'}->{'25'}->{'kills'} = $kills;
					$bosses{'TotGC'}->{'ValkyrTwins'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '4044' ) {
					$bosses{'TotC'}->{'Completed'}->{'10'}->{'kills'} = $kills;
					$bosses{'TotC'}->{'Completed'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '4045' ) {
					$bosses{'TotGC'}->{'Completed'}->{'10'}->{'kills'} = $kills;
					$bosses{'TotGC'}->{'Completed'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '4046' ) {
					$bosses{'TotC'}->{'Completed'}->{'25'}->{'kills'} = $kills;
					$bosses{'TotC'}->{'Completed'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '4047' ) {
					$bosses{'TotGC'}->{'Completed'}->{'25'}->{'kills'} = $kills;
					$bosses{'TotGC'}->{'Completed'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '4639' ) {
					$bosses{'Icecrown'}->{'LordMarrowgar'}->{'10N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'LordMarrowgar'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '4640' ) {
					$bosses{'Icecrown'}->{'LordMarrowgar'}->{'10H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'LordMarrowgar'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '4641' ) {
					$bosses{'Icecrown'}->{'LordMarrowgar'}->{'25N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'LordMarrowgar'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '4642' ) {
					$bosses{'Icecrown'}->{'LordMarrowgar'}->{'25H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'LordMarrowgar'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '4643' ) {
					$bosses{'Icecrown'}->{'LadyDeathwhisper'}->{'10N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'LadyDeathwhisper'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '4654' ) {
					$bosses{'Icecrown'}->{'LadyDeathwhisper'}->{'10H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'LadyDeathwhisper'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '4655' ) {
					$bosses{'Icecrown'}->{'LadyDeathwhisper'}->{'25N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'LadyDeathwhisper'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '4656' ) {
					$bosses{'Icecrown'}->{'LadyDeathwhisper'}->{'25H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'LadyDeathwhisper'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '4644' ) {
					$bosses{'Icecrown'}->{'GunshipBattle'}->{'10N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'GunshipBattle'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '4659' ) {
					$bosses{'Icecrown'}->{'GunshipBattle'}->{'10H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'GunshipBattle'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '4660' ) {
					$bosses{'Icecrown'}->{'GunshipBattle'}->{'25N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'GunshipBattle'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '4661' ) {
					$bosses{'Icecrown'}->{'GunshipBattle'}->{'25H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'GunshipBattle'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '4645' ) {
					$bosses{'Icecrown'}->{'Deathbringer'}->{'10N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'Deathbringer'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '4662' ) {
					$bosses{'Icecrown'}->{'Deathbringer'}->{'10H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'Deathbringer'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '4663' ) {
					$bosses{'Icecrown'}->{'Deathbringer'}->{'25N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'Deathbringer'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '4664' ) {
					$bosses{'Icecrown'}->{'Deathbringer'}->{'25H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'Deathbringer'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '4646' ) {
					$bosses{'Icecrown'}->{'Festergut'}->{'10N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'Festergut'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '4665' ) {
					$bosses{'Icecrown'}->{'Festergut'}->{'10H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'Festergut'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '4666' ) {
					$bosses{'Icecrown'}->{'Festergut'}->{'25N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'Festergut'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '4667' ) {
					$bosses{'Icecrown'}->{'Festergut'}->{'25H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'Festergut'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '4647' ) {
					$bosses{'Icecrown'}->{'Rotface'}->{'10N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'Rotface'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '4668' ) {
					$bosses{'Icecrown'}->{'Rotface'}->{'10H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'Rotface'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '4669' ) {
					$bosses{'Icecrown'}->{'Rotface'}->{'25N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'Rotface'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '4670' ) {
					$bosses{'Icecrown'}->{'Rotface'}->{'25H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'Rotface'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '4648' ) {
					$bosses{'Icecrown'}->{'BloodPrinceCouncil'}->{'10N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'BloodPrinceCouncil'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '4671' ) {
					$bosses{'Icecrown'}->{'BloodPrinceCouncil'}->{'10H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'BloodPrinceCouncil'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '4672' ) {
					$bosses{'Icecrown'}->{'BloodPrinceCouncil'}->{'25N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'BloodPrinceCouncil'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '4673' ) {
					$bosses{'Icecrown'}->{'BloodPrinceCouncil'}->{'25H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'BloodPrinceCouncil'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '4649' ) {
					$bosses{'Icecrown'}->{'ValithriaDreamwalker'}->{'10N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'ValithriaDreamwalker'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '4674' ) {
					$bosses{'Icecrown'}->{'ValithriaDreamwalker'}->{'10H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'ValithriaDreamwalker'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '4675' ) {
					$bosses{'Icecrown'}->{'ValithriaDreamwalker'}->{'25N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'ValithriaDreamwalker'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '4676' ) {
					$bosses{'Icecrown'}->{'ValithriaDreamwalker'}->{'25H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'ValithriaDreamwalker'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '4650' ) {
					$bosses{'Icecrown'}->{'ProfessorPutricide'}->{'10N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'ProfessorPutricide'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '4677' ) {
					$bosses{'Icecrown'}->{'ProfessorPutricide'}->{'10H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'ProfessorPutricide'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '4678' ) {
					$bosses{'Icecrown'}->{'ProfessorPutricide'}->{'25N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'ProfessorPutricide'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '4679' ) {
					$bosses{'Icecrown'}->{'ProfessorPutricide'}->{'25H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'ProfessorPutricide'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '4651' ) {
					$bosses{'Icecrown'}->{'BloodQueenLanathel'}->{'10N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'BloodQueenLanathel'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '4680' ) {
					$bosses{'Icecrown'}->{'BloodQueenLanathel'}->{'10H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'BloodQueenLanathel'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '4681' ) {
					$bosses{'Icecrown'}->{'BloodQueenLanathel'}->{'25N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'BloodQueenLanathel'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '4682' ) {
					$bosses{'Icecrown'}->{'BloodQueenLanathel'}->{'25H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'BloodQueenLanathel'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '4652' ) {
					$bosses{'Icecrown'}->{'Sindragosa'}->{'10N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'Sindragosa'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '4684' ) {
					$bosses{'Icecrown'}->{'Sindragosa'}->{'10H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'Sindragosa'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '4683' ) {
					$bosses{'Icecrown'}->{'Sindragosa'}->{'25N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'Sindragosa'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '4685' ) {
					$bosses{'Icecrown'}->{'Sindragosa'}->{'25H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'Sindragosa'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '4653' ) {
					$bosses{'Icecrown'}->{'LichKing'}->{'10N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'LichKing'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '4686' ) {
					$bosses{'Icecrown'}->{'LichKing'}->{'10H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'LichKing'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '4687' ) {
					$bosses{'Icecrown'}->{'LichKing'}->{'25N'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'LichKing'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '4688' ) {
					$bosses{'Icecrown'}->{'LichKing'}->{'25H'}->{'kills'} = $kills;
					$bosses{'Icecrown'}->{'LichKing'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '4821' ) {
					$bosses{'RubySanctum'}->{'Halion'}->{'10N'}->{'kills'} = $kills;
					$bosses{'RubySanctum'}->{'Halion'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '4822' ) {
					$bosses{'RubySanctum'}->{'Halion'}->{'10H'}->{'kills'} = $kills;
					$bosses{'RubySanctum'}->{'Halion'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '4820' ) {
					$bosses{'RubySanctum'}->{'Halion'}->{'25N'}->{'kills'} = $kills;
					$bosses{'RubySanctum'}->{'Halion'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '4823' ) {
					$bosses{'RubySanctum'}->{'Halion'}->{'25H'}->{'kills'} = $kills;
					$bosses{'RubySanctum'}->{'Halion'}->{'25H'}->{'lastkill'} = $last;
				}
			$count++;
			}
			$count = 0;
			while ( $count <= 79 ) {
				my $id = $f->{'subCategories'}[3]{'statistics'}[$count]{'id'};
				my $name = $f->{'subCategories'}[3]{'statistics'}[$count]{'name'};
				my $kills = $f->{'subCategories'}[3]{'statistics'}[$count]{'quantity'};
				my $last = $f->{'subCategories'}[3]{'statistics'}[$count]{'lastUpdated'};
				if ( $id=='5724' ) {
					$bosses{'BlackrockCaverns'}->{'AscendantLordObsidius'}->{'N'}->{'kills'} = $kills;
					$bosses{'BlackrockCaverns'}->{'AscendantLordObsidius'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5725' ) {
					$bosses{'BlackrockCaverns'}->{'AscendantLordObsidius'}->{'H'}->{'kills'} = $kills;
					$bosses{'BlackrockCaverns'}->{'AscendantLordObsidius'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5732' ) {
					$bosses{'GrimBatol'}->{'Erudax'}->{'N'}->{'kills'} = $kills;
					$bosses{'GrimBatol'}->{'Erudax'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5733' ) {
					$bosses{'GrimBatol'}->{'Erudax'}->{'H'}->{'kills'} = $kills;
					$bosses{'GrimBatol'}->{'Erudax'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5734' ) {
					$bosses{'HallsofOrigination'}->{'Rajh'}->{'N'}->{'kills'} = $kills;
					$bosses{'HallsofOrigination'}->{'Rajh'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5735' ) {
					$bosses{'HallsofOrigination'}->{'Rajh'}->{'H'}->{'kills'} = $kills;
					$bosses{'HallsofOrigination'}->{'Rajh'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5736' ) {
					$bosses{'LostCityoftheTolvir'}->{'Siamat'}->{'N'}->{'kills'} = $kills;
					$bosses{'LostCityoftheTolvir'}->{'Siamat'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5737' ) {
					$bosses{'LostCityoftheTolvir'}->{'Siamat'}->{'H'}->{'kills'} = $kills;
					$bosses{'LostCityoftheTolvir'}->{'Siamat'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5728' ) {
					$bosses{'Stonecore'}->{'HighPriestessAzil'}->{'N'}->{'kills'} = $kills;
					$bosses{'Stonecore'}->{'HighPriestessAzil'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5729' ) {
					$bosses{'Stonecore'}->{'HighPriestessAzil'}->{'H'}->{'kills'} = $kills;
					$bosses{'Stonecore'}->{'HighPriestessAzil'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5730' ) {
					$bosses{'VortexPinnacle'}->{'Asaad'}->{'N'}->{'kills'} = $kills;
					$bosses{'VortexPinnacle'}->{'Asaad'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5731' ) {
					$bosses{'VortexPinnacle'}->{'Asaad'}->{'H'}->{'kills'} = $kills;
					$bosses{'VortexPinnacle'}->{'Asaad'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5726' ) {
					$bosses{'ThroneoftheTides'}->{'Ozumat'}->{'N'}->{'kills'} = $kills;
					$bosses{'ThroneoftheTides'}->{'Ozumat'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5727' ) {
					$bosses{'ThroneoftheTides'}->{'Ozumat'}->{'H'}->{'kills'} = $kills;
					$bosses{'ThroneoftheTides'}->{'Ozumat'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5738' ) {
					$bosses{'Deadmines'}->{'VanessaVanCleef'}->{'H'}->{'kills'} = $kills;
					$bosses{'Deadmines'}->{'VanessaVanCleef'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5739' ) {
					$bosses{'ShadowfangKeep'}->{'LordGodfrey'}->{'H'}->{'kills'} = $kills;
					$bosses{'ShadowfangKeep'}->{'LordGodfrey'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5773' ) {
					$bosses{'ZulAman'}->{'Daakara'}->{'H'}->{'kills'} = $kills;
					$bosses{'ZulAman'}->{'Daakara'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5774' ) {
					$bosses{'ZulGurub'}->{'Jindo'}->{'H'}->{'kills'} = $kills;
					$bosses{'ZulGurub'}->{'Jindo'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6150' ) {
					$bosses{'EndTime'}->{'Murozond'}->{'H'}->{'kills'} = $kills;
					$bosses{'EndTime'}->{'Murozond'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6151' ) {
					$bosses{'WellofEternity'}->{'Mannorothdefeats'}->{'H'}->{'kills'} = $kills;
					$bosses{'WellofEternity'}->{'Mannorothdefeats'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6152' ) {
					$bosses{'HourofTwilight'}->{'ArchbishopBenedictus'}->{'H'}->{'kills'} = $kills;
					$bosses{'HourofTwilight'}->{'ArchbishopBenedictus'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6170' ) {
					$bosses{'BaradinHold'}->{'Alizabal'}->{'kills'} = $kills;
					$bosses{'BaradinHold'}->{'Alizabal'}->{'lastkill'} = $last;
				} elsif ($id == '5578' ) {
					$bosses{'BaradinHold'}->{'Argaloth'}->{'kills'} = $kills;
					$bosses{'BaradinHold'}->{'Argaloth'}->{'lastkill'} = $last;
				} elsif ($id == '5981' ) {
					$bosses{'BaradinHold'}->{'Occuthar'}->{'kills'} = $kills;
					$bosses{'BaradinHold'}->{'Occuthar'}->{'lastkill'} = $last;
				} elsif ($id == '5570' ) {
					$bosses{'BastionofTwilight'}->{'AscendantCouncil'}->{'H'}->{'kills'} = $kills;
					$bosses{'BastionofTwilight'}->{'AscendantCouncil'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5569' ) {
					$bosses{'BastionofTwilight'}->{'AscendantCouncil'}->{'N'}->{'kills'} = $kills;
					$bosses{'BastionofTwilight'}->{'AscendantCouncil'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5571' ) {
					$bosses{'BastionofTwilight'}->{'Chogall'}->{'H'}->{'kills'} = $kills;
					$bosses{'BastionofTwilight'}->{'Chogall'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5572' ) {
					$bosses{'BastionofTwilight'}->{'Chogall'}->{'N'}->{'kills'} = $kills;
					$bosses{'BastionofTwilight'}->{'Chogall'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5553' ) {
					$bosses{'BastionofTwilight'}->{'HalfusWyrmbreaker'}->{'H'}->{'kills'} = $kills;
					$bosses{'BastionofTwilight'}->{'HalfusWyrmbreaker'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5554' ) {
					$bosses{'BastionofTwilight'}->{'HalfusWyrmbreaker'}->{'N'}->{'kills'} = $kills;
					$bosses{'BastionofTwilight'}->{'HalfusWyrmbreaker'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5573' ) {
					$bosses{'BastionofTwilight'}->{'Sinestra'}->{'H'}->{'kills'} = $kills;
					$bosses{'BastionofTwilight'}->{'Sinestra'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5568' ) {
					$bosses{'BastionofTwilight'}->{'ValionaandTheralion'}->{'H'}->{'kills'} = $kills;
					$bosses{'BastionofTwilight'}->{'ValionaandTheralion'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5567' ) {
					$bosses{'BastionofTwilight'}->{'ValionaandTheralion'}->{'N'}->{'kills'} = $kills;
					$bosses{'BastionofTwilight'}->{'ValionaandTheralion'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5562' ) {
					$bosses{'BlackwingDescent'}->{'Atramedes'}->{'H'}->{'kills'} = $kills;
					$bosses{'BlackwingDescent'}->{'Atramedes'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5561' ) {
					$bosses{'BlackwingDescent'}->{'Atramedes'}->{'N'}->{'kills'} = $kills;
					$bosses{'BlackwingDescent'}->{'Atramedes'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5563' ) {
					$bosses{'BlackwingDescent'}->{'Chimaeron'}->{'H'}->{'kills'} = $kills;
					$bosses{'BlackwingDescent'}->{'Chimaeron'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5564' ) {
					$bosses{'BlackwingDescent'}->{'Chimaeron'}->{'N'}->{'kills'} = $kills;
					$bosses{'BlackwingDescent'}->{'Chimaeron'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5756' ) {
					$bosses{'BlackwingDescent'}->{'Deathstoelevatorboss'}->{'N'}->{'kills'} = $kills;
					$bosses{'BlackwingDescent'}->{'Deathstoelevatorboss'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5556' ) {
					$bosses{'BlackwingDescent'}->{'Magmaw'}->{'H'}->{'kills'} = $kills;
					$bosses{'BlackwingDescent'}->{'Magmaw'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5555' ) {
					$bosses{'BlackwingDescent'}->{'Magmaw'}->{'N'}->{'kills'} = $kills;
					$bosses{'BlackwingDescent'}->{'Magmaw'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5560' ) {
					$bosses{'BlackwingDescent'}->{'Maloriak'}->{'H'}->{'kills'} = $kills;
					$bosses{'BlackwingDescent'}->{'Maloriak'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5559' ) {
					$bosses{'BlackwingDescent'}->{'Maloriak'}->{'N'}->{'kills'} = $kills;
					$bosses{'BlackwingDescent'}->{'Maloriak'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5566' ) {
					$bosses{'BlackwingDescent'}->{'Nefarian'}->{'H'}->{'kills'} = $kills;
					$bosses{'BlackwingDescent'}->{'Nefarian'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5565' ) {
					$bosses{'BlackwingDescent'}->{'Nefarian'}->{'N'}->{'kills'} = $kills;
					$bosses{'BlackwingDescent'}->{'Nefarian'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5558' ) {
					$bosses{'BlackwingDescent'}->{'Omnotron'}->{'H'}->{'kills'} = $kills;
					$bosses{'BlackwingDescent'}->{'Omnotron'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5557' ) {
					$bosses{'BlackwingDescent'}->{'Omnotron'}->{'N'}->{'kills'} = $kills;
					$bosses{'BlackwingDescent'}->{'Omnotron'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '6168' ) {
					$bosses{'DragonSoul'}->{'Deathwing'}->{'H'}->{'kills'} = $kills;
					$bosses{'DragonSoul'}->{'Deathwing'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6167' ) {
					$bosses{'DragonSoul'}->{'Deathwing'}->{'N'}->{'kills'} = $kills;
					$bosses{'DragonSoul'}->{'Deathwing'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '6160' ) {
					$bosses{'DragonSoul'}->{'HagaratheStormbinder'}->{'H'}->{'kills'} = $kills;
					$bosses{'DragonSoul'}->{'HagaratheStormbinder'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6159' ) {
					$bosses{'DragonSoul'}->{'HagaratheStormbinder'}->{'N'}->{'kills'} = $kills;
					$bosses{'DragonSoul'}->{'HagaratheStormbinder'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '6154' ) {
					$bosses{'DragonSoul'}->{'Morchok'}->{'H'}->{'kills'} = $kills;
					$bosses{'DragonSoul'}->{'Morchok'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6153' ) {
					$bosses{'DragonSoul'}->{'Morchok'}->{'N'}->{'kills'} = $kills;
					$bosses{'DragonSoul'}->{'Morchok'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '6165' ) {
					$bosses{'DragonSoul'}->{'SpineofDeathwing'}->{'N'}->{'kills'} = $kills;
					$bosses{'DragonSoul'}->{'SpineofDeathwing'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '6166' ) {
					$bosses{'DragonSoul'}->{'SpineofDeathwing'}->{'H'}->{'kills'} = $kills;
					$bosses{'DragonSoul'}->{'SpineofDeathwing'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6162' ) {
					$bosses{'DragonSoul'}->{'Ultraxion'}->{'H'}->{'kills'} = $kills;
					$bosses{'DragonSoul'}->{'Ultraxion'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6161' ) {
					$bosses{'DragonSoul'}->{'Ultraxion'}->{'N'}->{'kills'} = $kills;
					$bosses{'DragonSoul'}->{'Ultraxion'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '6156' ) {
					$bosses{'DragonSoul'}->{'WarlordZonozz'}->{'H'}->{'kills'} = $kills;
					$bosses{'DragonSoul'}->{'WarlordZonozz'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6155' ) {
					$bosses{'DragonSoul'}->{'WarlordZonozz'}->{'N'}->{'kills'} = $kills;
					$bosses{'DragonSoul'}->{'WarlordZonozz'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '6164' ) {
					$bosses{'DragonSoul'}->{'WarmasterBlackhorn'}->{'H'}->{'kills'} = $kills;
					$bosses{'DragonSoul'}->{'WarmasterBlackhorn'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6163' ) {
					$bosses{'DragonSoul'}->{'WarmasterBlackhorn'}->{'N'}->{'kills'} = $kills;
					$bosses{'DragonSoul'}->{'WarmasterBlackhorn'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '6158' ) {
					$bosses{'DragonSoul'}->{'YorsahjtheUnsleeping'}->{'H'}->{'kills'} = $kills;
					$bosses{'DragonSoul'}->{'YorsahjtheUnsleeping'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6157' ) {
					$bosses{'DragonSoul'}->{'YorsahjtheUnsleeping'}->{'N'}->{'kills'} = $kills;
					$bosses{'DragonSoul'}->{'YorsahjtheUnsleeping'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5971' ) {
					$bosses{'Firelands'}->{'Alysrazor'}->{'H'}->{'kills'} = $kills;
					$bosses{'Firelands'}->{'Alysrazor'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5970' ) {
					$bosses{'Firelands'}->{'Alysrazor'}->{'N'}->{'kills'} = $kills;
					$bosses{'Firelands'}->{'Alysrazor'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5973' ) {
					$bosses{'Firelands'}->{'Baleroc'}->{'H'}->{'kills'} = $kills;
					$bosses{'Firelands'}->{'Baleroc'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5972' ) {
					$bosses{'Firelands'}->{'Baleroc'}->{'N'}->{'kills'} = $kills;
					$bosses{'Firelands'}->{'Baleroc'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5965' ) {
					$bosses{'Firelands'}->{'Bethtilac'}->{'H'}->{'kills'} = $kills;
					$bosses{'Firelands'}->{'Bethtilac'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5964' ) {
					$bosses{'Firelands'}->{'Bethtilac'}->{'N'}->{'kills'} = $kills;
					$bosses{'Firelands'}->{'Bethtilac'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5969' ) {
					$bosses{'Firelands'}->{'Shannox'}->{'H'}->{'kills'} = $kills;
					$bosses{'Firelands'}->{'Shannox'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5968' ) {
					$bosses{'Firelands'}->{'Shannox'}->{'N'}->{'kills'} = $kills;
					$bosses{'Firelands'}->{'Shannox'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5967' ) {
					$bosses{'Firelands'}->{'LordRhyolith'}->{'H'}->{'kills'} = $kills;
					$bosses{'Firelands'}->{'LordRhyolith'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5966' ) {
					$bosses{'Firelands'}->{'LordRhyolith'}->{'N'}->{'kills'} = $kills;
					$bosses{'Firelands'}->{'LordRhyolith'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5975' ) {
					$bosses{'Firelands'}->{'MajordomoFandralStaghelm'}->{'H'}->{'kills'} = $kills;
					$bosses{'Firelands'}->{'MajordomoFandralStaghelm'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5974' ) {
					$bosses{'Firelands'}->{'MajordomoFandralStaghelm'}->{'N'}->{'kills'} = $kills;
					$bosses{'Firelands'}->{'MajordomoFandralStaghelm'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5977' ) {
					$bosses{'Firelands'}->{'Ragnaros'}->{'H'}->{'kills'} = $kills;
					$bosses{'Firelands'}->{'Ragnaros'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5976' ) {
					$bosses{'Firelands'}->{'Ragnaros'}->{'N'}->{'kills'} = $kills;
					$bosses{'Firelands'}->{'Ragnaros'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5577' ) {
					$bosses{'ThroneoftheFourWinds'}->{'AlAkir'}->{'H'}->{'kills'} = $kills;
					$bosses{'ThroneoftheFourWinds'}->{'AlAkir'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5576' ) {
					$bosses{'ThroneoftheFourWinds'}->{'AlAkir'}->{'N'}->{'kills'} = $kills;
					$bosses{'ThroneoftheFourWinds'}->{'AlAkir'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '5574' ) {
					$bosses{'ThroneoftheFourWinds'}->{'ConclaveofWind'}->{'H'}->{'kills'} = $kills;
					$bosses{'ThroneoftheFourWinds'}->{'ConclaveofWind'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '5575' ) {
					$bosses{'ThroneoftheFourWinds'}->{'ConclaveofWind'}->{'N'}->{'kills'} = $kills;
					$bosses{'ThroneoftheFourWinds'}->{'ConclaveofWind'}->{'N'}->{'lastkill'} = $last;
				}
			$count++;
			}
			$count = 0;
			while ( $count < 249 ) {
				my $id = $f->{'subCategories'}[4]{'statistics'}[$count]{'id'};
				my $name = $f->{'subCategories'}[4]{'statistics'}[$count]{'name'};
				my $kills = $f->{'subCategories'}[4]{'statistics'}[$count]{'quantity'};
				my $last = $f->{'subCategories'}[4]{'statistics'}[$count]{'lastUpdated'};
				if ( $id=='6775' ) {
					$bosses{'TempleoftheJadeSerpent'}->{'ShaofDoubt'}->{'N'}->{'kills'} = $kills;
					$bosses{'TempleoftheJadeSerpent'}->{'ShaofDoubt'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '6776' ) {
					$bosses{'TempleoftheJadeSerpent'}->{'ShaofDoubt'}->{'H'}->{'kills'} = $kills;
					$bosses{'TempleoftheJadeSerpent'}->{'ShaofDoubt'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6777' ) {
					$bosses{'StormstoutBrewery'}->{'Yan-ZhutheUncasked'}->{'N'}->{'kills'} = $kills;
					$bosses{'StormstoutBrewery'}->{'Yan-ZhutheUncasked'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '6779' ) {
					$bosses{'StormstoutBrewery'}->{'Yan-ZhutheUncasked'}->{'H'}->{'kills'} = $kills;
					$bosses{'StormstoutBrewery'}->{'Yan-ZhutheUncasked'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6778' ) {
					$bosses{'MogushanPalace'}->{'XintheWeaponmaster'}->{'N'}->{'kills'} = $kills;
					$bosses{'MogushanPalace'}->{'XintheWeaponmaster'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '6780' ) {
					$bosses{'MogushanPalace'}->{'XintheWeaponmaster'}->{'H'}->{'kills'} = $kills;
					$bosses{'MogushanPalace'}->{'XintheWeaponmaster'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6781' ) {
					$bosses{'Shado-PanMonastery'}->{'TaranZhu'}->{'N'}->{'kills'} = $kills;
					$bosses{'Shado-PanMonastery'}->{'TaranZhu'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '6782' ) {
					$bosses{'Shado-PanMonastery'}->{'TaranZhu'}->{'H'}->{'kills'} = $kills;
					$bosses{'Shado-PanMonastery'}->{'TaranZhu'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6783' ) {
					$bosses{'GateoftheSettingSun'}->{'Raigonn'}->{'H'}->{'kills'} = $kills;
					$bosses{'GateoftheSettingSun'}->{'Raigonn'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6784' ) {
					$bosses{'ScarletHalls'}->{'FlameweaverKoegler'}->{'H'}->{'kills'} = $kills;
					$bosses{'ScarletHalls'}->{'FlameweaverKoegler'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6785' ) {
					$bosses{'ScarletMonastery'}->{'HighInquisitorWhitemane'}->{'H'}->{'kills'} = $kills;
					$bosses{'ScarletMonastery'}->{'HighInquisitorWhitemane'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6787' ) {
					$bosses{'Scholomance'}->{'DarkmasterGandling'}->{'H'}->{'kills'} = $kills;
					$bosses{'Scholomance'}->{'DarkmasterGandling'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6788' ) {
					$bosses{'SiegeofNiuzaoTemple'}->{'WingLeaderNeronok'}->{'H'}->{'kills'} = $kills;
					$bosses{'SiegeofNiuzaoTemple'}->{'WingLeaderNeronok'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '6989' ) {
					$bosses{'WorldBosses'}->{'ShaofAnger'}->{'kills'} = $kills;
					$bosses{'WorldBosses'}->{'ShaofAnger'}->{'lastkill'} = $last;
				} elsif ($id == '6990' ) {
					$bosses{'WorldBosses'}->{'SalyissWarband'}->{'kills'} = $kills;
					$bosses{'WorldBosses'}->{'SalyissWarband'}->{'lastkill'} = $last;
				} elsif ($id == '8146' ) {
					$bosses{'WorldBosses'}->{'Nalak'}->{'kills'} = $kills;
					$bosses{'WorldBosses'}->{'Nalak'}->{'lastkill'} = $last;
				} elsif ($id == '8147' ) {
					$bosses{'WorldBosses'}->{'Oondasta'}->{'kills'} = $kills;
					$bosses{'WorldBosses'}->{'Oondasta'}->{'lastkill'} = $last;
				} elsif ($id == '8544' ) {
					$bosses{'WorldBosses'}->{'TrialsofChi-Ji'}->{'kills'} = $kills;
					$bosses{'WorldBosses'}->{'TrialsofChi-Ji'}->{'lastkill'} = $last;
				} elsif ($id == '8545' ) {
					$bosses{'WorldBosses'}->{'TrialsofNiuzao'}->{'kills'} = $kills;
					$bosses{'WorldBosses'}->{'TrialsofNiuzao'}->{'lastkill'} = $last;
				} elsif ($id == '8546' ) {
					$bosses{'WorldBosses'}->{'TrialsofXuen'}->{'kills'} = $kills;
					$bosses{'WorldBosses'}->{'TrialsofXuen'}->{'lastkill'} = $last;
				} elsif ($id == '8547' ) {
					$bosses{'WorldBosses'}->{'TrialsofYulon'}->{'kills'} = $kills;
					$bosses{'WorldBosses'}->{'TrialsofYulon'}->{'lastkill'} = $last;
				} elsif ($id == '8548' ) {
					$bosses{'WorldBosses'}->{'Ordoskills'}->{'kills'} = $kills;
					$bosses{'WorldBosses'}->{'Ordoskills'}->{'lastkill'} = $last;
				} elsif ($id == '6983' ) {
					$bosses{'MV'}->{'StoneGuard'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'MV'}->{'StoneGuard'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '6789' ) {
					$bosses{'MV'}->{'StoneGuard'}->{'N'}->{'10'}->{'kills'} = $kills;
					$bosses{'MV'}->{'StoneGuard'}->{'N'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '7914' ) {
					$bosses{'MV'}->{'StoneGuard'}->{'N'}->{'25'}->{'kills'} = $kills;
					$bosses{'MV'}->{'StoneGuard'}->{'N'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '6790' ) {
					$bosses{'MV'}->{'StoneGuard'}->{'H'}->{'10'}->{'kills'} = $kills;
					$bosses{'MV'}->{'StoneGuard'}->{'H'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '7915' ) {
					$bosses{'MV'}->{'StoneGuard'}->{'H'}->{'25'}->{'kills'} = $kills;
					$bosses{'MV'}->{'StoneGuard'}->{'H'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '6984' ) {
					$bosses{'MV'}->{'FengtheAccursed'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'MV'}->{'FengtheAccursed'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '6791' ) {
					$bosses{'MV'}->{'FengtheAccursed'}->{'N'}->{'10'}->{'kills'} = $kills;
					$bosses{'MV'}->{'FengtheAccursed'}->{'N'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '7917' ) {
					$bosses{'MV'}->{'FengtheAccursed'}->{'N'}->{'25'}->{'kills'} = $kills;
					$bosses{'MV'}->{'FengtheAccursed'}->{'N'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '6792' ) {
					$bosses{'MV'}->{'FengtheAccursed'}->{'H'}->{'10'}->{'kills'} = $kills;
					$bosses{'MV'}->{'FengtheAccursed'}->{'H'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '7918' ) {
					$bosses{'MV'}->{'FengtheAccursed'}->{'H'}->{'25'}->{'kills'} = $kills;
					$bosses{'MV'}->{'FengtheAccursed'}->{'H'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '6985' ) {
					$bosses{'MV'}->{'GarajaltheSpiritbinder'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'MV'}->{'GarajaltheSpiritbinder'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '6793' ) {
					$bosses{'MV'}->{'GarajaltheSpiritbinder'}->{'N'}->{'10'}->{'kills'} = $kills;
					$bosses{'MV'}->{'GarajaltheSpiritbinder'}->{'N'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '7919' ) {
					$bosses{'MV'}->{'GarajaltheSpiritbinder'}->{'N'}->{'25'}->{'kills'} = $kills;
					$bosses{'MV'}->{'GarajaltheSpiritbinder'}->{'N'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '6794' ) {
					$bosses{'MV'}->{'GarajaltheSpiritbinder'}->{'H'}->{'10'}->{'kills'} = $kills;
					$bosses{'MV'}->{'GarajaltheSpiritbinder'}->{'H'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '7920' ) {
					$bosses{'MV'}->{'GarajaltheSpiritbinder'}->{'H'}->{'25'}->{'kills'} = $kills;
					$bosses{'MV'}->{'GarajaltheSpiritbinder'}->{'H'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '6986' ) {
					$bosses{'MV'}->{'FourKings'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'MV'}->{'FourKings'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '6795' ) {
					$bosses{'MV'}->{'FourKings'}->{'N'}->{'10'}->{'kills'} = $kills;
					$bosses{'MV'}->{'FourKings'}->{'N'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '7921' ) {
					$bosses{'MV'}->{'FourKings'}->{'N'}->{'25'}->{'kills'} = $kills;
					$bosses{'MV'}->{'FourKings'}->{'N'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '6796' ) {
					$bosses{'MV'}->{'FourKings'}->{'H'}->{'10'}->{'kills'} = $kills;
					$bosses{'MV'}->{'FourKings'}->{'H'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '7922' ) {
					$bosses{'MV'}->{'FourKings'}->{'H'}->{'25'}->{'kills'} = $kills;
					$bosses{'MV'}->{'FourKings'}->{'H'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '6987' ) {
					$bosses{'MV'}->{'Elegon'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'MV'}->{'Elegon'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '6797' ) {
					$bosses{'MV'}->{'Elegon'}->{'N'}->{'10'}->{'kills'} = $kills;
					$bosses{'MV'}->{'Elegon'}->{'N'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '7923' ) {
					$bosses{'MV'}->{'Elegon'}->{'N'}->{'25'}->{'kills'} = $kills;
					$bosses{'MV'}->{'Elegon'}->{'N'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '6798' ) {
					$bosses{'MV'}->{'Elegon'}->{'H'}->{'10'}->{'kills'} = $kills;
					$bosses{'MV'}->{'Elegon'}->{'H'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '7924' ) {
					$bosses{'MV'}->{'Elegon'}->{'H'}->{'25'}->{'kills'} = $kills;
					$bosses{'MV'}->{'Elegon'}->{'H'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '6988' ) {
					$bosses{'MV'}->{'WilloftheEmperor'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'MV'}->{'WilloftheEmperor'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '6799' ) {
					$bosses{'MV'}->{'WilloftheEmperor'}->{'N'}->{'10'}->{'kills'} = $kills;
					$bosses{'MV'}->{'WilloftheEmperor'}->{'N'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '7926' ) {
					$bosses{'MV'}->{'WilloftheEmperor'}->{'N'}->{'25'}->{'kills'} = $kills;
					$bosses{'MV'}->{'WilloftheEmperor'}->{'N'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '6800' ) {
					$bosses{'MV'}->{'WilloftheEmperor'}->{'H'}->{'10'}->{'kills'} = $kills;
					$bosses{'MV'}->{'WilloftheEmperor'}->{'H'}->{'10'}->{'lastkill'} = $last;
				} elsif ($id == '7927' ) {
					$bosses{'MV'}->{'WilloftheEmperor'}->{'H'}->{'25'}->{'kills'} = $kills;
					$bosses{'MV'}->{'WilloftheEmperor'}->{'H'}->{'25'}->{'lastkill'} = $last;
				} elsif ($id == '6991' ) {
					$bosses{'HoF'}->{'ImperialVizierZorlok'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'ImperialVizierZorlok'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '6801' ) {
					$bosses{'HoF'}->{'ImperialVizierZorlok'}->{'10N'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'ImperialVizierZorlok'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '7951' ) {
					$bosses{'HoF'}->{'ImperialVizierZorlok'}->{'25N'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'ImperialVizierZorlok'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '6802' ) {
					$bosses{'HoF'}->{'ImperialVizierZorlok'}->{'10H'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'ImperialVizierZorlok'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '7953' ) {
					$bosses{'HoF'}->{'ImperialVizierZorlok'}->{'25H'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'ImperialVizierZorlok'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '6992' ) {
					$bosses{'HoF'}->{'BladeLordTayak'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'BladeLordTayak'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '6803' ) {
					$bosses{'HoF'}->{'BladeLordTayak'}->{'10N'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'BladeLordTayak'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '7954' ) {
					$bosses{'HoF'}->{'BladeLordTayak'}->{'25N'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'BladeLordTayak'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '6804' ) {
					$bosses{'HoF'}->{'BladeLordTayak'}->{'10H'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'BladeLordTayak'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '7955' ) {
					$bosses{'HoF'}->{'BladeLordTayak'}->{'25H'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'BladeLordTayak'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '6993' ) {
					$bosses{'HoF'}->{'Garalon'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'Garalon'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '6805' ) {
					$bosses{'HoF'}->{'Garalon'}->{'10N'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'Garalon'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '7956' ) {
					$bosses{'HoF'}->{'Garalon'}->{'25N'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'Garalon'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '6806' ) {
					$bosses{'HoF'}->{'Garalon'}->{'10H'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'Garalon'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '7957' ) {
					$bosses{'HoF'}->{'Garalon'}->{'25H'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'Garalon'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '6994' ) {
					$bosses{'HoF'}->{'WindLordMeljarak'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'WindLordMeljarak'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '6807' ) {
					$bosses{'HoF'}->{'WindLordMeljarak'}->{'10N'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'WindLordMeljarak'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '7958' ) {
					$bosses{'HoF'}->{'WindLordMeljarak'}->{'25N'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'WindLordMeljarak'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '6808' ) {
					$bosses{'HoF'}->{'WindLordMeljarak'}->{'10H'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'WindLordMeljarak'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '7960' ) {
					$bosses{'HoF'}->{'WindLordMeljarak'}->{'25H'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'WindLordMeljarak'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '6995' ) {
					$bosses{'HoF'}->{'AmberShaperUnsok'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'AmberShaperUnsok'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '6809' ) {
					$bosses{'HoF'}->{'AmberShaperUnsok'}->{'10N'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'AmberShaperUnsok'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '7961' ) {
					$bosses{'HoF'}->{'AmberShaperUnsok'}->{'25N'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'AmberShaperUnsok'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '6810' ) {
					$bosses{'HoF'}->{'AmberShaperUnsok'}->{'10H'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'AmberShaperUnsok'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '7962' ) {
					$bosses{'HoF'}->{'AmberShaperUnsok'}->{'25H'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'AmberShaperUnsok'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '6996' ) {
					$bosses{'HoF'}->{'GrandEmpressShekzeer'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'GrandEmpressShekzeer'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '6811' ) {
					$bosses{'HoF'}->{'GrandEmpressShekzeer'}->{'10N'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'GrandEmpressShekzeer'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '7963' ) {
					$bosses{'HoF'}->{'GrandEmpressShekzeer'}->{'25N'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'GrandEmpressShekzeer'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '6812' ) {
					$bosses{'HoF'}->{'GrandEmpressShekzeer'}->{'10H'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'GrandEmpressShekzeer'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '7964' ) {
					$bosses{'HoF'}->{'GrandEmpressShekzeer'}->{'25H'}->{'kills'} = $kills;
					$bosses{'HoF'}->{'GrandEmpressShekzeer'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '6997' ) {
					$bosses{'ToES'}->{'ProtectorsoftheEndless'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'ProtectorsoftheEndless'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '6813' ) {
					$bosses{'ToES'}->{'ProtectorsoftheEndless'}->{'10N'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'ProtectorsoftheEndless'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '7965' ) {
					$bosses{'ToES'}->{'ProtectorsoftheEndless'}->{'25N'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'ProtectorsoftheEndless'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '6814' ) {
					$bosses{'ToES'}->{'ProtectorsoftheEndless'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'ProtectorsoftheEndless'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '7966' ) {
					$bosses{'ToES'}->{'ProtectorsoftheEndless'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'ProtectorsoftheEndless'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '6998' ) {
					$bosses{'ToES'}->{'Tsulong'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'Tsulong'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '6815' ) {
					$bosses{'ToES'}->{'Tsulong'}->{'10N'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'Tsulong'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '7967' ) {
					$bosses{'ToES'}->{'Tsulong'}->{'25N'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'Tsulong'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '6816' ) {
					$bosses{'ToES'}->{'Tsulong'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'Tsulong'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '7968' ) {
					$bosses{'ToES'}->{'Tsulong'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'Tsulong'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '6999' ) {
					$bosses{'ToES'}->{'LeiShi'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'LeiShi'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '6817' ) {
					$bosses{'ToES'}->{'LeiShi'}->{'10N'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'LeiShi'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '7969' ) {
					$bosses{'ToES'}->{'LeiShi'}->{'25N'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'LeiShi'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '6818' ) {
					$bosses{'ToES'}->{'LeiShi'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'LeiShi'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '7970' ) {
					$bosses{'ToES'}->{'LeiShi'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'LeiShi'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '7000' ) {
					$bosses{'ToES'}->{'ShaofFear'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'ShaofFear'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '6819' ) {
					$bosses{'ToES'}->{'ShaofFear'}->{'10N'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'ShaofFear'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '7971' ) {
					$bosses{'ToES'}->{'ShaofFear'}->{'25N'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'ShaofFear'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '6820' ) {
					$bosses{'ToES'}->{'ShaofFear'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'ShaofFear'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '7972' ) {
					$bosses{'ToES'}->{'ShaofFear'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToES'}->{'ShaofFear'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8141' ) {
					$bosses{'ToT'}->{'JinrokhtheBreaker'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'JinrokhtheBreaker'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8142' ) {
					$bosses{'ToT'}->{'JinrokhtheBreaker'}->{'10N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'JinrokhtheBreaker'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8143' ) {
					$bosses{'ToT'}->{'JinrokhtheBreaker'}->{'25N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'JinrokhtheBreaker'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8144' ) {
					$bosses{'ToT'}->{'JinrokhtheBreaker'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'JinrokhtheBreaker'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8145' ) {
					$bosses{'ToT'}->{'JinrokhtheBreaker'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'JinrokhtheBreaker'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8148' ) {
					$bosses{'ToT'}->{'Horridon'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Horridon'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8149' ) {
					$bosses{'ToT'}->{'Horridon'}->{'10N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Horridon'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8150' ) {
					$bosses{'ToT'}->{'Horridon'}->{'25N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Horridon'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8151' ) {
					$bosses{'ToT'}->{'Horridon'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Horridon'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8152' ) {
					$bosses{'ToT'}->{'Horridon'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Horridon'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8153' ) {
					$bosses{'ToT'}->{'CouncilofElders'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'CouncilofElders'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8154' ) {
					$bosses{'ToT'}->{'CouncilofElders'}->{'10N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'CouncilofElders'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8155' ) {
					$bosses{'ToT'}->{'CouncilofElders'}->{'25N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'CouncilofElders'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8156' ) {
					$bosses{'ToT'}->{'CouncilofElders'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'CouncilofElders'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8157' ) {
					$bosses{'ToT'}->{'CouncilofElders'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'CouncilofElders'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8158' ) {
					$bosses{'ToT'}->{'Tortos'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Tortos'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8159' ) {
					$bosses{'ToT'}->{'Tortos'}->{'10N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Tortos'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8160' ) {
					$bosses{'ToT'}->{'Tortos'}->{'25N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Tortos'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8162' ) {
					$bosses{'ToT'}->{'Tortos'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Tortos'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8161' ) {
					$bosses{'ToT'}->{'Tortos'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Tortos'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8163' ) {
					$bosses{'ToT'}->{'Megaera'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Megaera'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8164' ) {
					$bosses{'ToT'}->{'Megaera'}->{'10N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Megaera'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8165' ) {
					$bosses{'ToT'}->{'Megaera'}->{'25N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Megaera'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8166' ) {
					$bosses{'ToT'}->{'Megaera'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Megaera'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8167' ) {
					$bosses{'ToT'}->{'Megaera'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Megaera'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8291' ) {
					$bosses{'ToT'}->{'Gastropodmeals'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Gastropodmeals'}->{'lastkill'} = $last;
				} elsif ($id == '8168' ) {
					$bosses{'ToT'}->{'Ji-Kun'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Ji-Kun'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8169' ) {
					$bosses{'ToT'}->{'Ji-Kun'}->{'10N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Ji-Kun'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8170' ) {
					$bosses{'ToT'}->{'Ji-Kun'}->{'25N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Ji-Kun'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8171' ) {
					$bosses{'ToT'}->{'Ji-Kun'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Ji-Kun'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8172' ) {
					$bosses{'ToT'}->{'Ji-Kun'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Ji-Kun'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8173' ) {
					$bosses{'ToT'}->{'DurumutheForgotten'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'DurumutheForgotten'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8174' ) {
					$bosses{'ToT'}->{'DurumutheForgotten'}->{'10N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'DurumutheForgotten'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8175' ) {
					$bosses{'ToT'}->{'DurumutheForgotten'}->{'25N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'DurumutheForgotten'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8176' ) {
					$bosses{'ToT'}->{'DurumutheForgotten'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'DurumutheForgotten'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8177' ) {
					$bosses{'ToT'}->{'DurumutheForgotten'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'DurumutheForgotten'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8178' ) {
					$bosses{'ToT'}->{'Primordius'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Primordius'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8179' ) {
					$bosses{'ToT'}->{'Primordius'}->{'10N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Primordius'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8182' ) {
					$bosses{'ToT'}->{'Primordius'}->{'25N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Primordius'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8181' ) {
					$bosses{'ToT'}->{'Primordius'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Primordius'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8180' ) {
					$bosses{'ToT'}->{'Primordius'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Primordius'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8183' ) {
					$bosses{'ToT'}->{'DarkAnimus'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'DarkAnimus'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8184' ) {
					$bosses{'ToT'}->{'DarkAnimus'}->{'10N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'DarkAnimus'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8185' ) {
					$bosses{'ToT'}->{'DarkAnimus'}->{'25N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'DarkAnimus'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8186' ) {
					$bosses{'ToT'}->{'DarkAnimus'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'DarkAnimus'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8187' ) {
					$bosses{'ToT'}->{'DarkAnimus'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'DarkAnimus'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8188' ) {
					$bosses{'ToT'}->{'IronQon'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'IronQon'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8189' ) {
					$bosses{'ToT'}->{'IronQon'}->{'10N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'IronQon'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8190' ) {
					$bosses{'ToT'}->{'IronQon'}->{'25N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'IronQon'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8191' ) {
					$bosses{'ToT'}->{'IronQon'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'IronQon'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8192' ) {
					$bosses{'ToT'}->{'IronQon'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'IronQon'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8193' ) {
					$bosses{'ToT'}->{'TwinConsorts'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'TwinConsorts'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8194' ) {
					$bosses{'ToT'}->{'TwinConsorts'}->{'10N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'TwinConsorts'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8195' ) {
					$bosses{'ToT'}->{'TwinConsorts'}->{'25N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'TwinConsorts'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8196' ) {
					$bosses{'ToT'}->{'TwinConsorts'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'TwinConsorts'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8197' ) {
					$bosses{'ToT'}->{'TwinConsorts'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'TwinConsorts'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8198' ) {
					$bosses{'ToT'}->{'LeiShen'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'LeiShen'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8199' ) {
					$bosses{'ToT'}->{'LeiShen'}->{'10N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'LeiShen'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8200' ) {
					$bosses{'ToT'}->{'LeiShen'}->{'25N'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'LeiShen'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8202' ) {
					$bosses{'ToT'}->{'LeiShen'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'LeiShen'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8201' ) {
					$bosses{'ToT'}->{'LeiShen'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'LeiShen'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8203' ) {
					$bosses{'ToT'}->{'Ra-den'}->{'10H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Ra-den'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8256' ) {
					$bosses{'ToT'}->{'Ra-den'}->{'25H'}->{'kills'} = $kills;
					$bosses{'ToT'}->{'Ra-den'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8549' ) {
					$bosses{'SoO'}->{'Immerseus'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Immerseus'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8550' ) {
					$bosses{'SoO'}->{'Immerseus'}->{'Flex'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Immerseus'}->{'Flex'}->{'lastkill'} = $last;
				} elsif ($id == '8551' ) {
					$bosses{'SoO'}->{'Immerseus'}->{'10N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Immerseus'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8552' ) {
					$bosses{'SoO'}->{'Immerseus'}->{'25N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Immerseus'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8553' ) {
					$bosses{'SoO'}->{'Immerseus'}->{'10H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Immerseus'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8554' ) {
					$bosses{'SoO'}->{'Immerseus'}->{'25H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Immerseus'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8555' ) {
					$bosses{'SoO'}->{'FallenProtectors'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'FallenProtectors'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8556' ) {
					$bosses{'SoO'}->{'FallenProtectors'}->{'Flex'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'FallenProtectors'}->{'Flex'}->{'lastkill'} = $last;
				} elsif ($id == '8557' ) {
					$bosses{'SoO'}->{'FallenProtectors'}->{'10N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'FallenProtectors'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8558' ) {
					$bosses{'SoO'}->{'FallenProtectors'}->{'25N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'FallenProtectors'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8559' ) {
					$bosses{'SoO'}->{'FallenProtectors'}->{'10H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'FallenProtectors'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8560' ) {
					$bosses{'SoO'}->{'FallenProtectors'}->{'25H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'FallenProtectors'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8561' ) {
					$bosses{'SoO'}->{'Norushen'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Norushen'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8562' ) {
					$bosses{'SoO'}->{'Norushen'}->{'Flex'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Norushen'}->{'Flex'}->{'lastkill'} = $last;
				} elsif ($id == '8563' ) {
					$bosses{'SoO'}->{'Norushen'}->{'10N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Norushen'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8564' ) {
					$bosses{'SoO'}->{'Norushen'}->{'25N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Norushen'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8565' ) {
					$bosses{'SoO'}->{'Norushen'}->{'10H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Norushen'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8566' ) {
					$bosses{'SoO'}->{'Norushen'}->{'25H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Norushen'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8567' ) {
					$bosses{'SoO'}->{'ShaofPride'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ShaofPride'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8568' ) {
					$bosses{'SoO'}->{'ShaofPride'}->{'Flex'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ShaofPride'}->{'Flex'}->{'lastkill'} = $last;
				} elsif ($id == '8569' ) {
					$bosses{'SoO'}->{'ShaofPride'}->{'10N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ShaofPride'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8570' ) {
					$bosses{'SoO'}->{'ShaofPride'}->{'25N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ShaofPride'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8571' ) {
					$bosses{'SoO'}->{'ShaofPride'}->{'10H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ShaofPride'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8573' ) {
					$bosses{'SoO'}->{'ShaofPride'}->{'25H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ShaofPride'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8574' ) {
					$bosses{'SoO'}->{'Galakras'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Galakras'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8575' ) {
					$bosses{'SoO'}->{'Galakras'}->{'Flex'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Galakras'}->{'Flex'}->{'lastkill'} = $last;
				} elsif ($id == '8576' ) {
					$bosses{'SoO'}->{'Galakras'}->{'10N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Galakras'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8577' ) {
					$bosses{'SoO'}->{'Galakras'}->{'25N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Galakras'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8578' ) {
					$bosses{'SoO'}->{'Galakras'}->{'10H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Galakras'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8579' ) {
					$bosses{'SoO'}->{'Galakras'}->{'25H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Galakras'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8580' ) {
					$bosses{'SoO'}->{'IronJuggernaut'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'IronJuggernaut'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8581' ) {
					$bosses{'SoO'}->{'IronJuggernaut'}->{'Flex'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'IronJuggernaut'}->{'Flex'}->{'lastkill'} = $last;
				} elsif ($id == '8582' ) {
					$bosses{'SoO'}->{'IronJuggernaut'}->{'10N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'IronJuggernaut'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8583' ) {
					$bosses{'SoO'}->{'IronJuggernaut'}->{'25N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'IronJuggernaut'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8584' ) {
					$bosses{'SoO'}->{'IronJuggernaut'}->{'10H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'IronJuggernaut'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8585' ) {
					$bosses{'SoO'}->{'IronJuggernaut'}->{'25H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'IronJuggernaut'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8586' ) {
					$bosses{'SoO'}->{'DarkShaman'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'DarkShaman'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8587' ) {
					$bosses{'SoO'}->{'DarkShaman'}->{'Flex'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'DarkShaman'}->{'Flex'}->{'lastkill'} = $last;
				} elsif ($id == '8588' ) {
					$bosses{'SoO'}->{'DarkShaman'}->{'10N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'DarkShaman'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8589' ) {
					$bosses{'SoO'}->{'DarkShaman'}->{'25N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'DarkShaman'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8590' ) {
					$bosses{'SoO'}->{'DarkShaman'}->{'10H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'DarkShaman'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8591' ) {
					$bosses{'SoO'}->{'DarkShaman'}->{'25H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'DarkShaman'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8593' ) {
					$bosses{'SoO'}->{'GeneralNazgrim'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'GeneralNazgrim'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8594' ) {
					$bosses{'SoO'}->{'GeneralNazgrim'}->{'Flex'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'GeneralNazgrim'}->{'Flex'}->{'lastkill'} = $last;
				} elsif ($id == '8595' ) {
					$bosses{'SoO'}->{'GeneralNazgrim'}->{'10N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'GeneralNazgrim'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8596' ) {
					$bosses{'SoO'}->{'GeneralNazgrim'}->{'25N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'GeneralNazgrim'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8597' ) {
					$bosses{'SoO'}->{'GeneralNazgrim'}->{'10H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'GeneralNazgrim'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8598' ) {
					$bosses{'SoO'}->{'GeneralNazgrim'}->{'25H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'GeneralNazgrim'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8599' ) {
					$bosses{'SoO'}->{'Malkorok'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Malkorok'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8600' ) {
					$bosses{'SoO'}->{'Malkorok'}->{'Flex'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Malkorok'}->{'Flex'}->{'lastkill'} = $last;
				} elsif ($id == '8601' ) {
					$bosses{'SoO'}->{'Malkorok'}->{'10N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Malkorok'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8602' ) {
					$bosses{'SoO'}->{'Malkorok'}->{'25N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Malkorok'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8603' ) {
					$bosses{'SoO'}->{'Malkorok'}->{'10H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Malkorok'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8604' ) {
					$bosses{'SoO'}->{'Malkorok'}->{'25H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'Malkorok'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8605' ) {
					$bosses{'SoO'}->{'SpoilsofPandaria'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'SpoilsofPandaria'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8606' ) {
					$bosses{'SoO'}->{'SpoilsofPandaria'}->{'Flex'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'SpoilsofPandaria'}->{'Flex'}->{'lastkill'} = $last;
				} elsif ($id == '8608' ) {
					$bosses{'SoO'}->{'SpoilsofPandaria'}->{'10N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'SpoilsofPandaria'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8609' ) {
					$bosses{'SoO'}->{'SpoilsofPandaria'}->{'25N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'SpoilsofPandaria'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8610' ) {
					$bosses{'SoO'}->{'SpoilsofPandaria'}->{'10H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'SpoilsofPandaria'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8612' ) {
					$bosses{'SoO'}->{'SpoilsofPandaria'}->{'25H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'SpoilsofPandaria'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8614' ) {
					$bosses{'SoO'}->{'ThoktheBloodthirsty'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ThoktheBloodthirsty'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8615' ) {
					$bosses{'SoO'}->{'ThoktheBloodthirsty'}->{'Flex'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ThoktheBloodthirsty'}->{'Flex'}->{'lastkill'} = $last;
				} elsif ($id == '8616' ) {
					$bosses{'SoO'}->{'ThoktheBloodthirsty'}->{'10N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ThoktheBloodthirsty'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8617' ) {
					$bosses{'SoO'}->{'ThoktheBloodthirsty'}->{'25N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ThoktheBloodthirsty'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8618' ) {
					$bosses{'SoO'}->{'ThoktheBloodthirsty'}->{'10H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ThoktheBloodthirsty'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8619' ) {
					$bosses{'SoO'}->{'ThoktheBloodthirsty'}->{'25H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ThoktheBloodthirsty'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8620' ) {
					$bosses{'SoO'}->{'SiegecrafterBlackfuse'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'SiegecrafterBlackfuse'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8621' ) {
					$bosses{'SoO'}->{'SiegecrafterBlackfuse'}->{'Flex'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'SiegecrafterBlackfuse'}->{'Flex'}->{'lastkill'} = $last;
				} elsif ($id == '8622' ) {
					$bosses{'SoO'}->{'SiegecrafterBlackfuse'}->{'10N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'SiegecrafterBlackfuse'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8623' ) {
					$bosses{'SoO'}->{'SiegecrafterBlackfuse'}->{'25N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'SiegecrafterBlackfuse'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8624' ) {
					$bosses{'SoO'}->{'SiegecrafterBlackfuse'}->{'10H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'SiegecrafterBlackfuse'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8625' ) {
					$bosses{'SoO'}->{'SiegecrafterBlackfuse'}->{'25H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'SiegecrafterBlackfuse'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8626' ) {
					$bosses{'SoO'}->{'ParagonsoftheKlaxxi'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ParagonsoftheKlaxxi'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8627' ) {
					$bosses{'SoO'}->{'ParagonsoftheKlaxxi'}->{'Flex'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ParagonsoftheKlaxxi'}->{'Flex'}->{'lastkill'} = $last;
				} elsif ($id == '8628' ) {
					$bosses{'SoO'}->{'ParagonsoftheKlaxxi'}->{'10N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ParagonsoftheKlaxxi'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8629' ) {
					$bosses{'SoO'}->{'ParagonsoftheKlaxxi'}->{'25N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ParagonsoftheKlaxxi'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8630' ) {
					$bosses{'SoO'}->{'ParagonsoftheKlaxxi'}->{'10H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ParagonsoftheKlaxxi'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8631' ) {
					$bosses{'SoO'}->{'ParagonsoftheKlaxxi'}->{'25H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'ParagonsoftheKlaxxi'}->{'25H'}->{'lastkill'} = $last;
				} elsif ($id == '8632' ) {
					$bosses{'SoO'}->{'GarroshHellscream'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'GarroshHellscream'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '8634' ) {
					$bosses{'SoO'}->{'GarroshHellscream'}->{'Flex'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'GarroshHellscream'}->{'Flex'}->{'lastkill'} = $last;
				} elsif ($id == '8635' ) {
					$bosses{'SoO'}->{'GarroshHellscream'}->{'10N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'GarroshHellscream'}->{'10N'}->{'lastkill'} = $last;
				} elsif ($id == '8636' ) {
					$bosses{'SoO'}->{'GarroshHellscream'}->{'25N'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'GarroshHellscream'}->{'25N'}->{'lastkill'} = $last;
				} elsif ($id == '8637' ) {
					$bosses{'SoO'}->{'GarroshHellscream'}->{'10H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'GarroshHellscream'}->{'10H'}->{'lastkill'} = $last;
				} elsif ($id == '8638' ) {
					$bosses{'SoO'}->{'GarroshHellscream'}->{'25H'}->{'kills'} = $kills;
					$bosses{'SoO'}->{'GarroshHellscream'}->{'25H'}->{'lastkill'} = $last;
				}
			$count++;
			}
			$count = 0;
			while ( $count < 148 ) {
				my $id = $f->{'subCategories'}[5]{'statistics'}[$count]{'id'};
				my $name = $f->{'subCategories'}[5]{'statistics'}[$count]{'name'};
				my $kills = $f->{'subCategories'}[5]{'statistics'}[$count]{'quantity'};
				my $last = $f->{'subCategories'}[5]{'statistics'}[$count]{'lastUpdated'};
				if ( $id=='9258' ) {
					$bosses{'BloodmaulSlagMines'}->{'Gugrokk'}->{'N'}->{'kills'} = $kills;
					$bosses{'BloodmaulSlagMines'}->{'Gugrokk'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9259' ) {
					$bosses{'BloodmaulSlagMines'}->{'Gugrokk'}->{'H'}->{'kills'} = $kills;
					$bosses{'BloodmaulSlagMines'}->{'Gugrokk'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10192' ) {
					$bosses{'BloodmaulSlagMines'}->{'Gugrokk'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'BloodmaulSlagMines'}->{'Gugrokk'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9260' ) {
					$bosses{'IronDocks'}->{'Skulloc'}->{'N'}->{'kills'} = $kills;
					$bosses{'IronDocks'}->{'Skulloc'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9261' ) {
					$bosses{'IronDocks'}->{'Skulloc'}->{'H'}->{'kills'} = $kills;
					$bosses{'IronDocks'}->{'Skulloc'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10193' ) {
					$bosses{'IronDocks'}->{'Skulloc'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'IronDocks'}->{'Skulloc'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9262' ) {
					$bosses{'Auchindoun'}->{'Terongor'}->{'N'}->{'kills'} = $kills;
					$bosses{'Auchindoun'}->{'Terongor'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9263' ) {
					$bosses{'Auchindoun'}->{'Terongor'}->{'H'}->{'kills'} = $kills;
					$bosses{'Auchindoun'}->{'Terongor'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10194' ) {
					$bosses{'Auchindoun'}->{'Terongor'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Auchindoun'}->{'Terongor'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9266' ) {
					$bosses{'Skyreach'}->{'HighSageViryx'}->{'N'}->{'kills'} = $kills;
					$bosses{'Skyreach'}->{'HighSageViryx'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9267' ) {
					$bosses{'Skyreach'}->{'HighSageViryx'}->{'H'}->{'kills'} = $kills;
					$bosses{'Skyreach'}->{'HighSageViryx'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10195' ) {
					$bosses{'Skyreach'}->{'HighSageViryx'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Skyreach'}->{'HighSageViryx'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9268' ) {
					$bosses{'GrimrailDepot'}->{'SkylordTovra'}->{'N'}->{'kills'} = $kills;
					$bosses{'GrimrailDepot'}->{'SkylordTovra'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9269' ) {
					$bosses{'GrimrailDepot'}->{'SkylordTovra'}->{'H'}->{'kills'} = $kills;
					$bosses{'GrimrailDepot'}->{'SkylordTovra'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10196' ) {
					$bosses{'GrimrailDepot'}->{'SkylordTovra'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'GrimrailDepot'}->{'SkylordTovra'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9271' ) {
					$bosses{'TheEverbloom'}->{'Yalnu'}->{'N'}->{'kills'} = $kills;
					$bosses{'TheEverbloom'}->{'Yalnu'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9272' ) {
					$bosses{'TheEverbloom'}->{'Yalnu'}->{'H'}->{'kills'} = $kills;
					$bosses{'TheEverbloom'}->{'Yalnu'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10197' ) {
					$bosses{'TheEverbloom'}->{'Yalnu'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'TheEverbloom'}->{'Yalnu'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9273' ) {
					$bosses{'ShadowmoonBurialGrounds'}->{'Nerzhul'}->{'N'}->{'kills'} = $kills;
					$bosses{'ShadowmoonBurialGrounds'}->{'Nerzhul'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9274' ) {
					$bosses{'ShadowmoonBurialGrounds'}->{'Nerzhul'}->{'H'}->{'kills'} = $kills;
					$bosses{'ShadowmoonBurialGrounds'}->{'Nerzhul'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10198' ) {
					$bosses{'ShadowmoonBurialGrounds'}->{'Nerzhul'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'ShadowmoonBurialGrounds'}->{'Nerzhul'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9275' ) {
					$bosses{'UpperBlackrockSpire'}->{'WarlordZaela'}->{'N'}->{'kills'} = $kills;
					$bosses{'UpperBlackrockSpire'}->{'WarlordZaela'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9276' ) {
					$bosses{'UpperBlackrockSpire'}->{'WarlordZaela'}->{'H'}->{'kills'} = $kills;
					$bosses{'UpperBlackrockSpire'}->{'WarlordZaela'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10199' ) {
					$bosses{'UpperBlackrockSpire'}->{'WarlordZaela'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'UpperBlackrockSpire'}->{'WarlordZaela'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9277' ) {
					$bosses{'WorldBosses'}->{'DrovtheRuiner'}->{'kills'} = $kills;
					$bosses{'WorldBosses'}->{'DrovtheRuiner'}->{'lastkill'} = $last;
				} elsif ($id == '9278' ) {
					$bosses{'WorldBosses'}->{'TarlnatheAgeless'}->{'kills'} = $kills;
					$bosses{'WorldBosses'}->{'TarlnatheAgeless'}->{'lastkill'} = $last;
				} elsif ($id == '9279' ) {
					$bosses{'WorldBosses'}->{'Rukhmar'}->{'kills'} = $kills;
					$bosses{'WorldBosses'}->{'Rukhmar'}->{'lastkill'} = $last;
				} elsif ($id == '10200' ) {
					$bosses{'WorldBosses'}->{'SupremeLordKazzak'}->{'kills'} = $kills;
					$bosses{'WorldBosses'}->{'SupremeLordKazzak'}->{'lastkill'} = $last;
				} elsif ($id == '9280' ) {
					$bosses{'Highmaul'}->{'KargathBladefist'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'KargathBladefist'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9282' ) {
					$bosses{'Highmaul'}->{'KargathBladefist'}->{'N'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'KargathBladefist'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9284' ) {
					$bosses{'Highmaul'}->{'KargathBladefist'}->{'H'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'KargathBladefist'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9285' ) {
					$bosses{'Highmaul'}->{'KargathBladefist'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'KargathBladefist'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9286' ) {
					$bosses{'Highmaul'}->{'TheButcher'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'TheButcher'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9287' ) {
					$bosses{'Highmaul'}->{'TheButcher'}->{'N'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'TheButcher'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9288' ) {
					$bosses{'Highmaul'}->{'TheButcher'}->{'H'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'TheButcher'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9289' ) {
					$bosses{'Highmaul'}->{'TheButcher'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'TheButcher'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9290' ) {
					$bosses{'Highmaul'}->{'Tectus'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'Tectus'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9292' ) {
					$bosses{'Highmaul'}->{'Tectus'}->{'N'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'Tectus'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9293' ) {
					$bosses{'Highmaul'}->{'Tectus'}->{'H'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'Tectus'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9294' ) {
					$bosses{'Highmaul'}->{'Tectus'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'Tectus'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9295' ) {
					$bosses{'Highmaul'}->{'Brackenspore'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'Brackenspore'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9297' ) {
					$bosses{'Highmaul'}->{'Brackenspore'}->{'N'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'Brackenspore'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9298' ) {
					$bosses{'Highmaul'}->{'Brackenspore'}->{'H'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'Brackenspore'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9300' ) {
					$bosses{'Highmaul'}->{'Brackenspore'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'Brackenspore'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9301' ) {
					$bosses{'Highmaul'}->{'TwinOgron'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'TwinOgron'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9302' ) {
					$bosses{'Highmaul'}->{'TwinOgron'}->{'N'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'TwinOgron'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9303' ) {
					$bosses{'Highmaul'}->{'TwinOgron'}->{'H'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'TwinOgron'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9304' ) {
					$bosses{'Highmaul'}->{'TwinOgron'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'TwinOgron'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9306' ) {
					$bosses{'Highmaul'}->{'Koragh'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'Koragh'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9308' ) {
					$bosses{'Highmaul'}->{'Koragh'}->{'N'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'Koragh'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9310' ) {
					$bosses{'Highmaul'}->{'Koragh'}->{'H'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'Koragh'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9311' ) {
					$bosses{'Highmaul'}->{'Koragh'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'Koragh'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9312' ) {
					$bosses{'Highmaul'}->{'ImperatorMargok'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'ImperatorMargok'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9313' ) {
					$bosses{'Highmaul'}->{'ImperatorMargok'}->{'N'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'ImperatorMargok'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9314' ) {
					$bosses{'Highmaul'}->{'ImperatorMargok'}->{'H'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'ImperatorMargok'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9315' ) {
					$bosses{'Highmaul'}->{'ImperatorMargok'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Highmaul'}->{'ImperatorMargok'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9316' ) {
					$bosses{'HFC'}->{'Gruul'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Gruul'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9317' ) {
					$bosses{'HFC'}->{'Gruul'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Gruul'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9318' ) {
					$bosses{'HFC'}->{'Gruul'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Gruul'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9319' ) {
					$bosses{'HFC'}->{'Gruul'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Gruul'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9320' ) {
					$bosses{'HFC'}->{'Oregorger'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Oregorger'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9321' ) {
					$bosses{'HFC'}->{'Oregorger'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Oregorger'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9322' ) {
					$bosses{'HFC'}->{'Oregorger'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Oregorger'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9323' ) {
					$bosses{'HFC'}->{'Oregorger'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Oregorger'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9324' ) {
					$bosses{'HFC'}->{'HansgarandFranzok'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'HansgarandFranzok'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9327' ) {
					$bosses{'HFC'}->{'HansgarandFranzok'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'HansgarandFranzok'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9328' ) {
					$bosses{'HFC'}->{'HansgarandFranzok'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'HansgarandFranzok'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9329' ) {
					$bosses{'HFC'}->{'HansgarandFranzok'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'HansgarandFranzok'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9330' ) {
					$bosses{'HFC'}->{'FlamebenderKagraz'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'FlamebenderKagraz'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9331' ) {
					$bosses{'HFC'}->{'FlamebenderKagraz'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'FlamebenderKagraz'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9332' ) {
					$bosses{'HFC'}->{'FlamebenderKagraz'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'FlamebenderKagraz'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9333' ) {
					$bosses{'HFC'}->{'FlamebenderKagraz'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'FlamebenderKagraz'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9334' ) {
					$bosses{'HFC'}->{'BeastlordDarmac'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'BeastlordDarmac'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9336' ) {
					$bosses{'HFC'}->{'BeastlordDarmac'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'BeastlordDarmac'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9337' ) {
					$bosses{'HFC'}->{'BeastlordDarmac'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'BeastlordDarmac'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9338' ) {
					$bosses{'HFC'}->{'BeastlordDarmac'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'BeastlordDarmac'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9339' ) {
					$bosses{'HFC'}->{'OperatorThogar'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'OperatorThogar'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9340' ) {
					$bosses{'HFC'}->{'OperatorThogar'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'OperatorThogar'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9341' ) {
					$bosses{'HFC'}->{'OperatorThogar'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'OperatorThogar'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9342' ) {
					$bosses{'HFC'}->{'OperatorThogar'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'OperatorThogar'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9343' ) {
					$bosses{'HFC'}->{'BlastFurnace'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'BlastFurnace'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9349' ) {
					$bosses{'HFC'}->{'BlastFurnace'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'BlastFurnace'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9351' ) {
					$bosses{'HFC'}->{'BlastFurnace'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'BlastFurnace'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9353' ) {
					$bosses{'HFC'}->{'BlastFurnace'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'BlastFurnace'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9354' ) {
					$bosses{'HFC'}->{'Kromog'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Kromog'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9355' ) {
					$bosses{'HFC'}->{'Kromog'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Kromog'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9356' ) {
					$bosses{'HFC'}->{'Kromog'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Kromog'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9357' ) {
					$bosses{'HFC'}->{'Kromog'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Kromog'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9358' ) {
					$bosses{'HFC'}->{'IronMaidens'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'IronMaidens'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9359' ) {
					$bosses{'HFC'}->{'IronMaidens'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'IronMaidens'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9360' ) {
					$bosses{'HFC'}->{'IronMaidens'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'IronMaidens'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9361' ) {
					$bosses{'HFC'}->{'IronMaidens'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'IronMaidens'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '9362' ) {
					$bosses{'HFC'}->{'WarlordBlackhand'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'WarlordBlackhand'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '9363' ) {
					$bosses{'HFC'}->{'WarlordBlackhand'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'WarlordBlackhand'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '9364' ) {
					$bosses{'HFC'}->{'WarlordBlackhand'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'WarlordBlackhand'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '9365' ) {
					$bosses{'HFC'}->{'WarlordBlackhand'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'WarlordBlackhand'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10201' ) {
					$bosses{'HFC'}->{'HellfireAssault'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'HellfireAssault'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10202' ) {
					$bosses{'HFC'}->{'HellfireAssault'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'HellfireAssault'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10203' ) {
					$bosses{'HFC'}->{'HellfireAssault'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'HellfireAssault'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10204' ) {
					$bosses{'HFC'}->{'HellfireAssault'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'HellfireAssault'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10205' ) {
					$bosses{'HFC'}->{'IronReaver'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'IronReaver'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10206' ) {
					$bosses{'HFC'}->{'IronReaver'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'IronReaver'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10207' ) {
					$bosses{'HFC'}->{'IronReaver'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'IronReaver'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10208' ) {
					$bosses{'HFC'}->{'IronReaver'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'IronReaver'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10209' ) {
					$bosses{'HFC'}->{'Kormrok'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Kormrok'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10210' ) {
					$bosses{'HFC'}->{'Kormrok'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Kormrok'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10211' ) {
					$bosses{'HFC'}->{'Kormrok'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Kormrok'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10212' ) {
					$bosses{'HFC'}->{'Kormrok'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Kormrok'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10213' ) {
					$bosses{'HFC'}->{'HellfireHighCouncil'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'HellfireHighCouncil'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10214' ) {
					$bosses{'HFC'}->{'HellfireHighCouncil'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'HellfireHighCouncil'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10215' ) {
					$bosses{'HFC'}->{'HellfireHighCouncil'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'HellfireHighCouncil'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10216' ) {
					$bosses{'HFC'}->{'HellfireHighCouncil'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'HellfireHighCouncil'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10217' ) {
					$bosses{'HFC'}->{'KilroggDeadeye'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'KilroggDeadeye'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10218' ) {
					$bosses{'HFC'}->{'KilroggDeadeye'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'KilroggDeadeye'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10219' ) {
					$bosses{'HFC'}->{'KilroggDeadeye'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'KilroggDeadeye'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10220' ) {
					$bosses{'HFC'}->{'KilroggDeadeye'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'KilroggDeadeye'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10221' ) {
					$bosses{'HFC'}->{'Gorefiend'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Gorefiend'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10222' ) {
					$bosses{'HFC'}->{'Gorefiend'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Gorefiend'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10223' ) {
					$bosses{'HFC'}->{'Gorefiend'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Gorefiend'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10224' ) {
					$bosses{'HFC'}->{'Gorefiend'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Gorefiend'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10225' ) {
					$bosses{'HFC'}->{'Shadow-LordIskar'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Shadow-LordIskar'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10226' ) {
					$bosses{'HFC'}->{'Shadow-LordIskar'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Shadow-LordIskar'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10227' ) {
					$bosses{'HFC'}->{'Shadow-LordIskar'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Shadow-LordIskar'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10228' ) {
					$bosses{'HFC'}->{'Shadow-LordIskar'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Shadow-LordIskar'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10229' ) {
					$bosses{'HFC'}->{'SocrethartheEternal'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'SocrethartheEternal'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10230' ) {
					$bosses{'HFC'}->{'SocrethartheEternal'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'SocrethartheEternal'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10231' ) {
					$bosses{'HFC'}->{'SocrethartheEternal'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'SocrethartheEternal'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10232' ) {
					$bosses{'HFC'}->{'SocrethartheEternal'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'SocrethartheEternal'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10233' ) {
					$bosses{'HFC'}->{'FelLordZakuun'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'FelLordZakuun'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10234' ) {
					$bosses{'HFC'}->{'FelLordZakuun'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'FelLordZakuun'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10235' ) {
					$bosses{'HFC'}->{'FelLordZakuun'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'FelLordZakuun'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10236' ) {
					$bosses{'HFC'}->{'FelLordZakuun'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'FelLordZakuun'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10237' ) {
					$bosses{'HFC'}->{'Xhulhorac'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Xhulhorac'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10238' ) {
					$bosses{'HFC'}->{'Xhulhorac'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Xhulhorac'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10239' ) {
					$bosses{'HFC'}->{'Xhulhorac'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Xhulhorac'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10240' ) {
					$bosses{'HFC'}->{'Xhulhorac'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Xhulhorac'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10241' ) {
					$bosses{'HFC'}->{'TyrantVelhari'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'TyrantVelhari'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10242' ) {
					$bosses{'HFC'}->{'TyrantVelhari'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'TyrantVelhari'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10243' ) {
					$bosses{'HFC'}->{'TyrantVelhari'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'TyrantVelhari'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10244' ) {
					$bosses{'HFC'}->{'TyrantVelhari'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'TyrantVelhari'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10245' ) {
					$bosses{'HFC'}->{'Mannoroth'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Mannoroth'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10246' ) {
					$bosses{'HFC'}->{'Mannoroth'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Mannoroth'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10247' ) {
					$bosses{'HFC'}->{'Mannoroth'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Mannoroth'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10248' ) {
					$bosses{'HFC'}->{'Mannoroth'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Mannoroth'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10249' ) {
					$bosses{'HFC'}->{'Archimonde'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Archimonde'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10250' ) {
					$bosses{'HFC'}->{'Archimonde'}->{'N'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Archimonde'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10251' ) {
					$bosses{'HFC'}->{'Archimonde'}->{'H'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Archimonde'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10252' ) {
					$bosses{'HFC'}->{'Archimonde'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HFC'}->{'Archimonde'}->{'Mythic'}->{'lastkill'} = $last;
				}
			}
			$count = 0;
			while ( $count < 199 ) {
				my $id = $f->{'subCategories'}[6]{'statistics'}[$count]{'id'};
				my $name = $f->{'subCategories'}[6]{'statistics'}[$count]{'name'};
				my $kills = $f->{'subCategories'}[6]{'statistics'}[$count]{'quantity'};
				my $last = $f->{'subCategories'}[6]{'statistics'}[$count]{'lastUpdated'};
				if ( $id=='10878' ) {
					$bosses{'EyeofAzshara'}->{'WrathofAzshara'}->{'N'}->{'kills'} = $kills;
					$bosses{'EyeofAzshara'}->{'WrathofAzshara'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10879' ) {
					$bosses{'EyeofAzshara'}->{'WrathofAzshara'}->{'H'}->{'kills'} = $kills;
					$bosses{'EyeofAzshara'}->{'WrathofAzshara'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10880' ) {
					$bosses{'EyeofAzshara'}->{'WrathofAzshara'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'EyeofAzshara'}->{'WrathofAzshara'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10881' ) {
					$bosses{'DarkheartThicket'}->{'ShadeofXavius'}->{'N'}->{'kills'} = $kills;
					$bosses{'DarkheartThicket'}->{'ShadeofXavius'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10882' ) {
					$bosses{'DarkheartThicket'}->{'ShadeofXavius'}->{'H'}->{'kills'} = $kills;
					$bosses{'DarkheartThicket'}->{'ShadeofXavius'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10883' ) {
					$bosses{'DarkheartThicket'}->{'ShadeofXavius'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'DarkheartThicket'}->{'ShadeofXavius'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10884' ) {
					$bosses{'NeltharionsLair'}->{'Dargrul'}->{'N'}->{'kills'} = $kills;
					$bosses{'NeltharionsLair'}->{'Dargrul'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10885' ) {
					$bosses{'NeltharionsLair'}->{'Dargrul'}->{'H'}->{'kills'} = $kills;
					$bosses{'NeltharionsLair'}->{'Dargrul'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10886' ) {
					$bosses{'NeltharionsLair'}->{'Dargrul'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'NeltharionsLair'}->{'Dargrul'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10887' ) {
					$bosses{'HallsofValor'}->{'Odyn'}->{'N'}->{'kills'} = $kills;
					$bosses{'HallsofValor'}->{'Odyn'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10888' ) {
					$bosses{'HallsofValor'}->{'Odyn'}->{'H'}->{'kills'} = $kills;
					$bosses{'HallsofValor'}->{'Odyn'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10889' ) {
					$bosses{'HallsofValor'}->{'Odyn'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'HallsofValor'}->{'Odyn'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10890' ) {
					$bosses{'AssaultonVioletHold'}->{'FelLordBetrug'}->{'N'}->{'kills'} = $kills;
					$bosses{'AssaultonVioletHold'}->{'FelLordBetrug'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10891' ) {
					$bosses{'AssaultonVioletHold'}->{'FelLordBetrug'}->{'H'}->{'kills'} = $kills;
					$bosses{'AssaultonVioletHold'}->{'FelLordBetrug'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10892' ) {
					$bosses{'AssaultonVioletHold'}->{'FelLordBetrug'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'AssaultonVioletHold'}->{'FelLordBetrug'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10893' ) {
					$bosses{'AssaultonVioletHold'}->{'Saelorn'}->{'N'}->{'kills'} = $kills;
					$bosses{'AssaultonVioletHold'}->{'Saelorn'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10894' ) {
					$bosses{'AssaultonVioletHold'}->{'Saelorn'}->{'H'}->{'kills'} = $kills;
					$bosses{'AssaultonVioletHold'}->{'Saelorn'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10895' ) {
					$bosses{'AssaultonVioletHold'}->{'Saelorn'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'AssaultonVioletHold'}->{'Saelorn'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10896' ) {
					$bosses{'VaultoftheWardens'}->{'CordanaFelsong'}->{'N'}->{'kills'} = $kills;
					$bosses{'VaultoftheWardens'}->{'CordanaFelsong'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10897' ) {
					$bosses{'VaultoftheWardens'}->{'CordanaFelsong'}->{'H'}->{'kills'} = $kills;
					$bosses{'VaultoftheWardens'}->{'CordanaFelsong'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10898' ) {
					$bosses{'VaultoftheWardens'}->{'CordanaFelsong'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'VaultoftheWardens'}->{'CordanaFelsong'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10899' ) {
					$bosses{'BlackRookHold'}->{'KurtalosRavencrest'}->{'N'}->{'kills'} = $kills;
					$bosses{'BlackRookHold'}->{'KurtalosRavencrest'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10900' ) {
					$bosses{'BlackRookHold'}->{'KurtalosRavencrest'}->{'H'}->{'kills'} = $kills;
					$bosses{'BlackRookHold'}->{'KurtalosRavencrest'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10901' ) {
					$bosses{'BlackRookHold'}->{'KurtalosRavencrest'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'BlackRookHold'}->{'KurtalosRavencrest'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10902' ) {
					$bosses{'MawofSouls'}->{'Helya'}->{'N'}->{'kills'} = $kills;
					$bosses{'MawofSouls'}->{'Helya'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10903' ) {
					$bosses{'MawofSouls'}->{'Helya'}->{'H'}->{'kills'} = $kills;
					$bosses{'MawofSouls'}->{'Helya'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10904' ) {
					$bosses{'MawofSouls'}->{'Helya'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'MawofSouls'}->{'Helya'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10907' ) {
					$bosses{'Arcway'}->{'AdvisorVandros'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Arcway'}->{'AdvisorVandros'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10910' ) {
					$bosses{'CourtofStars'}->{'AdvisorMelandrus'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'CourtofStars'}->{'AdvisorMelandrus'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '11406' ) {
					$bosses{'ReturntoKarazhan'}->{'VizaduumtheWatcher'}->{'kills'} = $kills;
					$bosses{'ReturntoKarazhan'}->{'VizaduumtheWatcher'}->{'lastkill'} = $last;
				} elsif ($id == '12610' ) {
					$bosses{'CathedralofEternalNight'}->{'Mephistroth'}->{'H'}->{'kills'} = $kills;
					$bosses{'CathedralofEternalNight'}->{'Mephistroth'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12611' ) {
					$bosses{'CathedralofEternalNight'}->{'Mephistroth'}->{'M'}->{'kills'} = $kills;
					$bosses{'CathedralofEternalNight'}->{'Mephistroth'}->{'M'}->{'lastkill'} = $last;
				} elsif ($id == '12612' ) {
					$bosses{'SeatoftheTriumvirate'}->{'Lura'}->{'H'}->{'kills'} = $kills;
					$bosses{'SeatoftheTriumvirate'}->{'Lura'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12613' ) {
					$bosses{'SeatoftheTriumvirate'}->{'Lura'}->{'M'}->{'kills'} = $kills;
					$bosses{'SeatoftheTriumvirate'}->{'Lura'}->{'M'}->{'lastkill'} = $last;
				} elsif ($id == '10911' ) {
					$bosses{'EN'}->{'Nythendra'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Nythendra'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10912' ) {
					$bosses{'EN'}->{'Nythendra'}->{'N'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Nythendra'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10913' ) {
					$bosses{'EN'}->{'Nythendra'}->{'H'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Nythendra'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10914' ) {
					$bosses{'EN'}->{'Nythendra'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Nythendra'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10915' ) {
					$bosses{'EN'}->{'Ursoc'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Ursoc'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10916' ) {
					$bosses{'EN'}->{'Ursoc'}->{'N'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Ursoc'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10917' ) {
					$bosses{'EN'}->{'Ursoc'}->{'H'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Ursoc'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10919' ) {
					$bosses{'EN'}->{'Ursoc'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Ursoc'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10920' ) {
					$bosses{'EN'}->{'EleretheRenferal'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'EN'}->{'EleretheRenferal'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10921' ) {
					$bosses{'EN'}->{'EleretheRenferal'}->{'N'}->{'kills'} = $kills;
					$bosses{'EN'}->{'EleretheRenferal'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10922' ) {
					$bosses{'EN'}->{'EleretheRenferal'}->{'H'}->{'kills'} = $kills;
					$bosses{'EN'}->{'EleretheRenferal'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10923' ) {
					$bosses{'EN'}->{'EleretheRenferal'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'EN'}->{'EleretheRenferal'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10924' ) {
					$bosses{'EN'}->{'Ilgynoth'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Ilgynoth'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10925' ) {
					$bosses{'EN'}->{'Ilgynoth'}->{'N'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Ilgynoth'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10926' ) {
					$bosses{'EN'}->{'Ilgynoth'}->{'H'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Ilgynoth'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10927' ) {
					$bosses{'EN'}->{'Ilgynoth'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Ilgynoth'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10928' ) {
					$bosses{'EN'}->{'DragonsofNightmare'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'EN'}->{'DragonsofNightmare'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10929' ) {
					$bosses{'EN'}->{'DragonsofNightmare'}->{'N'}->{'kills'} = $kills;
					$bosses{'EN'}->{'DragonsofNightmare'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10930' ) {
					$bosses{'EN'}->{'DragonsofNightmare'}->{'H'}->{'kills'} = $kills;
					$bosses{'EN'}->{'DragonsofNightmare'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10931' ) {
					$bosses{'EN'}->{'DragonsofNightmare'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'EN'}->{'DragonsofNightmare'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10932' ) {
					$bosses{'EN'}->{'Cenarius'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Cenarius'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10933' ) {
					$bosses{'EN'}->{'Cenarius'}->{'N'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Cenarius'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10934' ) {
					$bosses{'EN'}->{'Cenarius'}->{'H'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Cenarius'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10935' ) {
					$bosses{'EN'}->{'Cenarius'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Cenarius'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10936' ) {
					$bosses{'EN'}->{'Xavius'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Xavius'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10937' ) {
					$bosses{'EN'}->{'Xavius'}->{'N'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Xavius'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10938' ) {
					$bosses{'EN'}->{'Xavius'}->{'H'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Xavius'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10939' ) {
					$bosses{'EN'}->{'Xavius'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'EN'}->{'Xavius'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '11407' ) {
					$bosses{'ToV'}->{'Odyn'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToV'}->{'Odyn'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11408' ) {
					$bosses{'ToV'}->{'Odyn'}->{'N'}->{'kills'} = $kills;
					$bosses{'ToV'}->{'Odyn'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '11409' ) {
					$bosses{'ToV'}->{'Odyn'}->{'H'}->{'kills'} = $kills;
					$bosses{'ToV'}->{'Odyn'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '11410' ) {
					$bosses{'ToV'}->{'Odyn'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'ToV'}->{'Odyn'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '11411' ) {
					$bosses{'ToV'}->{'Guarm'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToV'}->{'Guarm'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11412' ) {
					$bosses{'ToV'}->{'Guarm'}->{'N'}->{'kills'} = $kills;
					$bosses{'ToV'}->{'Guarm'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '11413' ) {
					$bosses{'ToV'}->{'Guarm'}->{'H'}->{'kills'} = $kills;
					$bosses{'ToV'}->{'Guarm'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '11414' ) {
					$bosses{'ToV'}->{'Guarm'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'ToV'}->{'Guarm'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '11415' ) {
					$bosses{'ToV'}->{'Helya'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToV'}->{'Helya'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11416' ) {
					$bosses{'ToV'}->{'Helya'}->{'N'}->{'kills'} = $kills;
					$bosses{'ToV'}->{'Helya'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '11417' ) {
					$bosses{'ToV'}->{'Helya'}->{'H'}->{'kills'} = $kills;
					$bosses{'ToV'}->{'Helya'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '11418' ) {
					$bosses{'ToV'}->{'Helya'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'ToV'}->{'Helya'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10940' ) {
					$bosses{'Nighthold'}->{'Skorpyron'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Skorpyron'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10941' ) {
					$bosses{'Nighthold'}->{'Skorpyron'}->{'N'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Skorpyron'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10942' ) {
					$bosses{'Nighthold'}->{'Skorpyron'}->{'H'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Skorpyron'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10943' ) {
					$bosses{'Nighthold'}->{'Skorpyron'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Skorpyron'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10944' ) {
					$bosses{'Nighthold'}->{'ChronomaticAnomaly'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'ChronomaticAnomaly'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10945' ) {
					$bosses{'Nighthold'}->{'ChronomaticAnomaly'}->{'N'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'ChronomaticAnomaly'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10946' ) {
					$bosses{'Nighthold'}->{'ChronomaticAnomaly'}->{'H'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'ChronomaticAnomaly'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10947' ) {
					$bosses{'Nighthold'}->{'ChronomaticAnomaly'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'ChronomaticAnomaly'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10948' ) {
					$bosses{'Nighthold'}->{'Trilliax'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Trilliax'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10949' ) {
					$bosses{'Nighthold'}->{'Trilliax'}->{'N'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Trilliax'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10950' ) {
					$bosses{'Nighthold'}->{'Trilliax'}->{'H'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Trilliax'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10951' ) {
					$bosses{'Nighthold'}->{'Trilliax'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Trilliax'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10952' ) {
					$bosses{'Nighthold'}->{'SpellbladeAluriel'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'SpellbladeAluriel'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10953' ) {
					$bosses{'Nighthold'}->{'SpellbladeAluriel'}->{'N'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'SpellbladeAluriel'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10954' ) {
					$bosses{'Nighthold'}->{'SpellbladeAluriel'}->{'H'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'SpellbladeAluriel'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10955' ) {
					$bosses{'Nighthold'}->{'SpellbladeAluriel'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'SpellbladeAluriel'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10956' ) {
					$bosses{'Nighthold'}->{'StarAugurEtraeus'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'StarAugurEtraeus'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10957' ) {
					$bosses{'Nighthold'}->{'StarAugurEtraeus'}->{'N'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'StarAugurEtraeus'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10959' ) {
					$bosses{'Nighthold'}->{'StarAugurEtraeus'}->{'H'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'StarAugurEtraeus'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10960' ) {
					$bosses{'Nighthold'}->{'StarAugurEtraeus'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'StarAugurEtraeus'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10961' ) {
					$bosses{'Nighthold'}->{'HighBotanistTelarn'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'HighBotanistTelarn'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10962' ) {
					$bosses{'Nighthold'}->{'HighBotanistTelarn'}->{'N'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'HighBotanistTelarn'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10963' ) {
					$bosses{'Nighthold'}->{'HighBotanistTelarn'}->{'H'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'HighBotanistTelarn'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10964' ) {
					$bosses{'Nighthold'}->{'HighBotanistTelarn'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'HighBotanistTelarn'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10965' ) {
					$bosses{'Nighthold'}->{'Tichondrius'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Tichondrius'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10966' ) {
					$bosses{'Nighthold'}->{'Tichondrius'}->{'N'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Tichondrius'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10967' ) {
					$bosses{'Nighthold'}->{'Tichondrius'}->{'H'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Tichondrius'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10968' ) {
					$bosses{'Nighthold'}->{'Tichondrius'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Tichondrius'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10969' ) {
					$bosses{'Nighthold'}->{'Krosus'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Krosus'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10970' ) {
					$bosses{'Nighthold'}->{'Krosus'}->{'N'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Krosus'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10971' ) {
					$bosses{'Nighthold'}->{'Krosus'}->{'H'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Krosus'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10972' ) {
					$bosses{'Nighthold'}->{'Krosus'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Krosus'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10973' ) {
					$bosses{'Nighthold'}->{'GrandMagistrixElisande'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'GrandMagistrixElisande'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10974' ) {
					$bosses{'Nighthold'}->{'GrandMagistrixElisande'}->{'N'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'GrandMagistrixElisande'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10975' ) {
					$bosses{'Nighthold'}->{'GrandMagistrixElisande'}->{'H'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'GrandMagistrixElisande'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10976' ) {
					$bosses{'Nighthold'}->{'GrandMagistrixElisande'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'GrandMagistrixElisande'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '10977' ) {
					$bosses{'Nighthold'}->{'Guldan'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Guldan'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '10978' ) {
					$bosses{'Nighthold'}->{'Guldan'}->{'N'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Guldan'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '10979' ) {
					$bosses{'Nighthold'}->{'Guldan'}->{'H'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Guldan'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '10980' ) {
					$bosses{'Nighthold'}->{'Guldan'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Nighthold'}->{'Guldan'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '11877' ) {
					$bosses{'ToS'}->{'Goroth'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'Goroth'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11878' ) {
					$bosses{'ToS'}->{'Goroth'}->{'N'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'Goroth'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '11879' ) {
					$bosses{'ToS'}->{'Goroth'}->{'H'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'Goroth'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '11880' ) {
					$bosses{'ToS'}->{'Goroth'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'Goroth'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '11881' ) {
					$bosses{'ToS'}->{'DemonicInquisition'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'DemonicInquisition'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11882' ) {
					$bosses{'ToS'}->{'DemonicInquisition'}->{'N'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'DemonicInquisition'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '11883' ) {
					$bosses{'ToS'}->{'DemonicInquisition'}->{'H'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'DemonicInquisition'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '11884' ) {
					$bosses{'ToS'}->{'DemonicInquisition'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'DemonicInquisition'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '11885' ) {
					$bosses{'ToS'}->{'Harjatan'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'Harjatan'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11886' ) {
					$bosses{'ToS'}->{'Harjatan'}->{'N'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'Harjatan'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '11887' ) {
					$bosses{'ToS'}->{'Harjatan'}->{'H'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'Harjatan'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '11888' ) {
					$bosses{'ToS'}->{'Harjatan'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'Harjatan'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '11889' ) {
					$bosses{'ToS'}->{'SistersoftheMoon'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'SistersoftheMoon'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11890' ) {
					$bosses{'ToS'}->{'SistersoftheMoon'}->{'N'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'SistersoftheMoon'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '11891' ) {
					$bosses{'ToS'}->{'SistersoftheMoon'}->{'H'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'SistersoftheMoon'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '11892' ) {
					$bosses{'ToS'}->{'SistersoftheMoon'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'SistersoftheMoon'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '11893' ) {
					$bosses{'ToS'}->{'MistressSasszine'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'MistressSasszine'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11894' ) {
					$bosses{'ToS'}->{'MistressSasszine'}->{'N'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'MistressSasszine'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '11895' ) {
					$bosses{'ToS'}->{'MistressSasszine'}->{'H'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'MistressSasszine'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '11896' ) {
					$bosses{'ToS'}->{'MistressSasszine'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'MistressSasszine'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '11897' ) {
					$bosses{'ToS'}->{'TheDesolateHost'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'TheDesolateHost'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11898' ) {
					$bosses{'ToS'}->{'TheDesolateHost'}->{'N'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'TheDesolateHost'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '11899' ) {
					$bosses{'ToS'}->{'TheDesolateHost'}->{'H'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'TheDesolateHost'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '11900' ) {
					$bosses{'ToS'}->{'TheDesolateHost'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'TheDesolateHost'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '11901' ) {
					$bosses{'ToS'}->{'MaidenofVigilance'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'MaidenofVigilance'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11902' ) {
					$bosses{'ToS'}->{'MaidenofVigilance'}->{'N'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'MaidenofVigilance'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '11903' ) {
					$bosses{'ToS'}->{'MaidenofVigilance'}->{'H'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'MaidenofVigilance'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '11904' ) {
					$bosses{'ToS'}->{'MaidenofVigilance'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'MaidenofVigilance'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '11905' ) {
					$bosses{'ToS'}->{'FallenAvatar'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'FallenAvatar'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11906' ) {
					$bosses{'ToS'}->{'FallenAvatar'}->{'N'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'FallenAvatar'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '11907' ) {
					$bosses{'ToS'}->{'FallenAvatar'}->{'H'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'FallenAvatar'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '11908' ) {
					$bosses{'ToS'}->{'FallenAvatar'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'FallenAvatar'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '11909' ) {
					$bosses{'ToS'}->{'Kiljaeden'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'Kiljaeden'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11910' ) {
					$bosses{'ToS'}->{'Kiljaeden'}->{'N'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'Kiljaeden'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '11911' ) {
					$bosses{'ToS'}->{'Kiljaeden'}->{'H'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'Kiljaeden'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '11912' ) {
					$bosses{'ToS'}->{'Kiljaeden'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'ToS'}->{'Kiljaeden'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12117' ) {
					$bosses{'Antorus'}->{'GarothiWorldbreaker'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'GarothiWorldbreaker'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11954' ) {
					$bosses{'Antorus'}->{'GarothiWorldbreaker'}->{'Normal'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'GarothiWorldbreaker'}->{'Normal'}->{'lastkill'} = $last;
				} elsif ($id == '11955' ) {
					$bosses{'Antorus'}->{'GarothiWorldbreaker'}->{'Heroic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'GarothiWorldbreaker'}->{'Heroic'}->{'lastkill'} = $last;
				} elsif ($id == '11956' ) {
					$bosses{'Antorus'}->{'GarothiWorldbreaker'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'GarothiWorldbreaker'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12118' ) {
					$bosses{'Antorus'}->{'HoundsofSargeras'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'HoundsofSargeras'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11957' ) {
					$bosses{'Antorus'}->{'HoundsofSargeras'}->{'Normal'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'HoundsofSargeras'}->{'Normal'}->{'lastkill'} = $last;
				} elsif ($id == '11958' ) {
					$bosses{'Antorus'}->{'HoundsofSargeras'}->{'Heroic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'HoundsofSargeras'}->{'Heroic'}->{'lastkill'} = $last;
				} elsif ($id == '11959' ) {
					$bosses{'Antorus'}->{'HoundsofSargeras'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'HoundsofSargeras'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12119' ) {
					$bosses{'Antorus'}->{'AntoranHighCommand'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'AntoranHighCommand'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11960' ) {
					$bosses{'Antorus'}->{'AntoranHighCommand'}->{'Normal'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'AntoranHighCommand'}->{'Normal'}->{'lastkill'} = $last;
				} elsif ($id == '11961' ) {
					$bosses{'Antorus'}->{'AntoranHighCommand'}->{'Heroic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'AntoranHighCommand'}->{'Heroic'}->{'lastkill'} = $last;
				} elsif ($id == '11962' ) {
					$bosses{'Antorus'}->{'AntoranHighCommand'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'AntoranHighCommand'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12120' ) {
					$bosses{'Antorus'}->{'PortalKeeperHasabel'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'PortalKeeperHasabel'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11963' ) {
					$bosses{'Antorus'}->{'PortalKeeperHasabel'}->{'Normal'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'PortalKeeperHasabel'}->{'Normal'}->{'lastkill'} = $last;
				} elsif ($id == '11964' ) {
					$bosses{'Antorus'}->{'PortalKeeperHasabel'}->{'Heroic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'PortalKeeperHasabel'}->{'Heroic'}->{'lastkill'} = $last;
				} elsif ($id == '11965' ) {
					$bosses{'Antorus'}->{'PortalKeeperHasabel'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'PortalKeeperHasabel'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12121' ) {
					$bosses{'Antorus'}->{'Eonardefended'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'Eonardefended'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11966' ) {
					$bosses{'Antorus'}->{'Eonardefended'}->{'Normal'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'Eonardefended'}->{'Normal'}->{'lastkill'} = $last;
				} elsif ($id == '11967' ) {
					$bosses{'Antorus'}->{'Eonardefended'}->{'Heroic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'Eonardefended'}->{'Heroic'}->{'lastkill'} = $last;
				} elsif ($id == '11968' ) {
					$bosses{'Antorus'}->{'Eonardefended'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'Eonardefended'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12122' ) {
					$bosses{'Antorus'}->{'ImonartheSoulhunter'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'ImonartheSoulhunter'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11969' ) {
					$bosses{'Antorus'}->{'ImonartheSoulhunter'}->{'Normal'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'ImonartheSoulhunter'}->{'Normal'}->{'lastkill'} = $last;
				} elsif ($id == '11970' ) {
					$bosses{'Antorus'}->{'ImonartheSoulhunter'}->{'Heroic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'ImonartheSoulhunter'}->{'Heroic'}->{'lastkill'} = $last;
				} elsif ($id == '11971' ) {
					$bosses{'Antorus'}->{'ImonartheSoulhunter'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'ImonartheSoulhunter'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12123' ) {
					$bosses{'Antorus'}->{'Kingaroth'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'Kingaroth'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11972' ) {
					$bosses{'Antorus'}->{'Kingaroth'}->{'Normal'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'Kingaroth'}->{'Normal'}->{'lastkill'} = $last;
				} elsif ($id == '11973' ) {
					$bosses{'Antorus'}->{'Kingaroth'}->{'Heroic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'Kingaroth'}->{'Heroic'}->{'lastkill'} = $last;
				} elsif ($id == '11974' ) {
					$bosses{'Antorus'}->{'Kingaroth'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'Kingaroth'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12124' ) {
					$bosses{'Antorus'}->{'Varimathras'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'Varimathras'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11975' ) {
					$bosses{'Antorus'}->{'Varimathras'}->{'Normal'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'Varimathras'}->{'Normal'}->{'lastkill'} = $last;
				} elsif ($id == '11976' ) {
					$bosses{'Antorus'}->{'Varimathras'}->{'Heroic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'Varimathras'}->{'Heroic'}->{'lastkill'} = $last;
				} elsif ($id == '11977' ) {
					$bosses{'Antorus'}->{'Varimathras'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'Varimathras'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12125' ) {
					$bosses{'Antorus'}->{'TheCovenofShivarra'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'TheCovenofShivarra'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11978' ) {
					$bosses{'Antorus'}->{'TheCovenofShivarra'}->{'Normal'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'TheCovenofShivarra'}->{'Normal'}->{'lastkill'} = $last;
				} elsif ($id == '11979' ) {
					$bosses{'Antorus'}->{'TheCovenofShivarra'}->{'Heroic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'TheCovenofShivarra'}->{'Heroic'}->{'lastkill'} = $last;
				} elsif ($id == '11980' ) {
					$bosses{'Antorus'}->{'TheCovenofShivarra'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'TheCovenofShivarra'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12126' ) {
					$bosses{'Antorus'}->{'Aggramar'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'Aggramar'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11981' ) {
					$bosses{'Antorus'}->{'Aggramar'}->{'Normal'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'Aggramar'}->{'Normal'}->{'lastkill'} = $last;
				} elsif ($id == '11982' ) {
					$bosses{'Antorus'}->{'Aggramar'}->{'Heroic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'Aggramar'}->{'Heroic'}->{'lastkill'} = $last;
				} elsif ($id == '11983' ) {
					$bosses{'Antorus'}->{'Aggramar'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'Aggramar'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12127' ) {
					$bosses{'Antorus'}->{'ArgustheUnmaker'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'ArgustheUnmaker'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '11984' ) {
					$bosses{'Antorus'}->{'ArgustheUnmaker'}->{'Normal'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'ArgustheUnmaker'}->{'Normal'}->{'lastkill'} = $last;
				} elsif ($id == '11985' ) {
					$bosses{'Antorus'}->{'ArgustheUnmaker'}->{'Heroic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'ArgustheUnmaker'}->{'Heroic'}->{'lastkill'} = $last;
				} elsif ($id == '11986' ) {
					$bosses{'Antorus'}->{'ArgustheUnmaker'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Antorus'}->{'ArgustheUnmaker'}->{'Mythic'}->{'lastkill'} = $last;
				}
			}
			$count = 0;
			while ( $count < 59 ) {
				my $id = $f->{'subCategories'}[7]{'statistics'}[$count]{'id'};
				my $name = $f->{'subCategories'}[7]{'statistics'}[$count]{'name'};
				my $kills = $f->{'subCategories'}[7]{'statistics'}[$count]{'quantity'};
				my $last = $f->{'subCategories'}[7]{'statistics'}[$count]{'lastUpdated'};
				if ( $id=='12720' ) {
					$bosses{'AtalDazar'}->{'Yazma'}->{'N'}->{'kills'} = $kills;
					$bosses{'AtalDazar'}->{'Yazma'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '12748' ) {
					$bosses{'AtalDazar'}->{'Yazma'}->{'H'}->{'kills'} = $kills;
					$bosses{'AtalDazar'}->{'Yazma'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12749' ) {
					$bosses{'AtalDazar'}->{'Yazma'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'AtalDazar'}->{'Yazma'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12750' ) {
					$bosses{'Freehold'}->{'HarlanSweete'}->{'N'}->{'kills'} = $kills;
					$bosses{'Freehold'}->{'HarlanSweete'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '12751' ) {
					$bosses{'Freehold'}->{'HarlanSweete'}->{'H'}->{'kills'} = $kills;
					$bosses{'Freehold'}->{'HarlanSweete'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12752' ) {
					$bosses{'Freehold'}->{'HarlanSweete'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Freehold'}->{'HarlanSweete'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12763' ) {
					$bosses{'KingsRest'}->{'DazarTheFirstKing'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'KingsRest'}->{'DazarTheFirstKing'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12766' ) {
					$bosses{'ShrineoftheStorm'}->{'VolziththeWhisperer'}->{'N'}->{'kills'} = $kills;
					$bosses{'ShrineoftheStorm'}->{'VolziththeWhisperer'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '12767' ) {
					$bosses{'ShrineoftheStorm'}->{'VolziththeWhisperer'}->{'H'}->{'kills'} = $kills;
					$bosses{'ShrineoftheStorm'}->{'VolziththeWhisperer'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12768' ) {
					$bosses{'ShrineoftheStorm'}->{'VolziththeWhisperer'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'ShrineoftheStorm'}->{'VolziththeWhisperer'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12773' ) {
					$bosses{'SiegeofBoralus'}->{'ViqGoth'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'SiegeofBoralus'}->{'ViqGoth'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12774' ) {
					$bosses{'TempleofSethraliss'}->{'AvatarofSethraliss'}->{'N'}->{'kills'} = $kills;
					$bosses{'TempleofSethraliss'}->{'AvatarofSethraliss'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '12775' ) {
					$bosses{'TempleofSethraliss'}->{'AvatarofSethraliss'}->{'H'}->{'kills'} = $kills;
					$bosses{'TempleofSethraliss'}->{'AvatarofSethraliss'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12776' ) {
					$bosses{'TempleofSethraliss'}->{'AvatarofSethraliss'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'TempleofSethraliss'}->{'AvatarofSethraliss'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12777' ) {
					$bosses{'TheMOTHERLODE'}->{'MogulRazdunk'}->{'N'}->{'kills'} = $kills;
					$bosses{'TheMOTHERLODE'}->{'MogulRazdunk'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '12778' ) {
					$bosses{'TheMOTHERLODE'}->{'MogulRazdunk'}->{'H'}->{'kills'} = $kills;
					$bosses{'TheMOTHERLODE'}->{'MogulRazdunk'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12779' ) {
					$bosses{'TheMOTHERLODE'}->{'MogulRazdunk'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'TheMOTHERLODE'}->{'MogulRazdunk'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12728' ) {
					$bosses{'TheUnderrot'}->{'UnboundAbomination'}->{'N'}->{'kills'} = $kills;
					$bosses{'TheUnderrot'}->{'UnboundAbomination'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '12729' ) {
					$bosses{'TheUnderrot'}->{'UnboundAbomination'}->{'H'}->{'kills'} = $kills;
					$bosses{'TheUnderrot'}->{'UnboundAbomination'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12745' ) {
					$bosses{'TheUnderrot'}->{'UnboundAbomination'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'TheUnderrot'}->{'UnboundAbomination'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12780' ) {
					$bosses{'TolDagor'}->{'OverseerKorgus'}->{'N'}->{'kills'} = $kills;
					$bosses{'TolDagor'}->{'OverseerKorgus'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '12781' ) {
					$bosses{'TolDagor'}->{'OverseerKorgus'}->{'H'}->{'kills'} = $kills;
					$bosses{'TolDagor'}->{'OverseerKorgus'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12782' ) {
					$bosses{'TolDagor'}->{'OverseerKorgus'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'TolDagor'}->{'OverseerKorgus'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12783' ) {
					$bosses{'WaycrestManor'}->{'GorakTul'}->{'N'}->{'kills'} = $kills;
					$bosses{'WaycrestManor'}->{'GorakTul'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '12784' ) {
					$bosses{'WaycrestManor'}->{'GorakTul'}->{'H'}->{'kills'} = $kills;
					$bosses{'WaycrestManor'}->{'GorakTul'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12785' ) {
					$bosses{'WaycrestManor'}->{'GorakTul'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'WaycrestManor'}->{'GorakTul'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12786' ) {
					$bosses{'Uldir'}->{'Taloc'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'Taloc'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '12787' ) {
					$bosses{'Uldir'}->{'Taloc'}->{'N'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'Taloc'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '12788' ) {
					$bosses{'Uldir'}->{'Taloc'}->{'H'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'Taloc'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12789' ) {
					$bosses{'Uldir'}->{'Taloc'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'Taloc'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12790' ) {
					$bosses{'Uldir'}->{'MOTHER'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'MOTHER'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '12791' ) {
					$bosses{'Uldir'}->{'MOTHER'}->{'N'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'MOTHER'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '12792' ) {
					$bosses{'Uldir'}->{'MOTHER'}->{'H'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'MOTHER'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12793' ) {
					$bosses{'Uldir'}->{'MOTHER'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'MOTHER'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12794' ) {
					$bosses{'Uldir'}->{'FetidDevourer'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'FetidDevourer'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '12795' ) {
					$bosses{'Uldir'}->{'FetidDevourer'}->{'N'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'FetidDevourer'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '12796' ) {
					$bosses{'Uldir'}->{'FetidDevourer'}->{'H'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'FetidDevourer'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12797' ) {
					$bosses{'Uldir'}->{'FetidDevourer'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'FetidDevourer'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12798' ) {
					$bosses{'Uldir'}->{'ZekvozHeraldofNzoth'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'ZekvozHeraldofNzoth'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '12799' ) {
					$bosses{'Uldir'}->{'ZekvozHeraldofNzoth'}->{'N'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'ZekvozHeraldofNzoth'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '12800' ) {
					$bosses{'Uldir'}->{'ZekvozHeraldofNzoth'}->{'H'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'ZekvozHeraldofNzoth'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12801' ) {
					$bosses{'Uldir'}->{'ZekvozHeraldofNzoth'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'ZekvozHeraldofNzoth'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12802' ) {
					$bosses{'Uldir'}->{'Vectis'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'Vectis'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '12803' ) {
					$bosses{'Uldir'}->{'Vectis'}->{'N'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'Vectis'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '12804' ) {
					$bosses{'Uldir'}->{'Vectis'}->{'H'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'Vectis'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12804' ) {
					$bosses{'Uldir'}->{'Vectis'}->{'H'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'Vectis'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12808' ) {
					$bosses{'Uldir'}->{'ZulReborn'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'ZulReborn'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '12809' ) {
					$bosses{'Uldir'}->{'ZulReborn'}->{'N'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'ZulReborn'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '12810' ) {
					$bosses{'Uldir'}->{'ZulReborn'}->{'H'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'ZulReborn'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12811' ) {
					$bosses{'Uldir'}->{'ZulReborn'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'ZulReborn'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12813' ) {
					$bosses{'Uldir'}->{'MythraxtheUnraveler'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'MythraxtheUnraveler'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '12814' ) {
					$bosses{'Uldir'}->{'MythraxtheUnraveler'}->{'N'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'MythraxtheUnraveler'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '12815' ) {
					$bosses{'Uldir'}->{'MythraxtheUnraveler'}->{'H'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'MythraxtheUnraveler'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12816' ) {
					$bosses{'Uldir'}->{'MythraxtheUnraveler'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'MythraxtheUnraveler'}->{'Mythic'}->{'lastkill'} = $last;
				} elsif ($id == '12817' ) {
					$bosses{'Uldir'}->{'Ghuun'}->{'LFR'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'Ghuun'}->{'LFR'}->{'lastkill'} = $last;
				} elsif ($id == '12818' ) {
					$bosses{'Uldir'}->{'Ghuun'}->{'N'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'Ghuun'}->{'N'}->{'lastkill'} = $last;
				} elsif ($id == '12819' ) {
					$bosses{'Uldir'}->{'Ghuun'}->{'H'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'Ghuun'}->{'H'}->{'lastkill'} = $last;
				} elsif ($id == '12820' ) {
					$bosses{'Uldir'}->{'Ghuun'}->{'Mythic'}->{'kills'} = $kills;
					$bosses{'Uldir'}->{'Ghuun'}->{'Mythic'}->{'lastkill'} = $last;
				}
			}
			$count = 0;