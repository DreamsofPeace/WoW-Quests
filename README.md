# WoW-Quests
Wow Multi-Character Quest Completion

Quest ID's from the Battle.net API and http://wowhead.com

Quest Completion Order from http://wow.gamepedia.com and user comments from http://wowhead.com

#How to Use

bnet-generate.pl -f file-name -a api-key -m module

Supported Modules:
	Reputation: Currently Functional  
	Professions: Currently Functional, But Incomplete Data  
	Achievements: Partially Functional  
	Quests: Currently Functional, But Incomplete Data  
	Legendaries: Part of the Quests Module  

api-key is from https://dev.battle.net

file-name is in a tab delimited format.

Column0:	Server

Column1:	Character

Column2:	(Optional) Wowhead Character Link

There is a maximum of 16 characters supported at a time.

The Output will be in HTML format.
