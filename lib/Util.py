import json
import requests



#payload = {'key1': 'value1', 'key2': ['value2', 'value3']}

#r = requests.get('https://httpbin.org/get', params=payload)
#print(r.url)

#json.load(fp)


#namespace={namespace}
def battlenetapicharactersetup( region, wowtype, profiletype, server, character ):
	
	#Generate URL Base
	if region == 'us':
		urlbase = "https://us.api.blizzard.com/"
	elif region == 'eu':
		urlbase = "https://eu.api.blizzard.com/"
	elif region == 'kr':
		urlbase = "https://kr.api.blizzard.com/"
	elif region == 'tw':
		urlbase = "https://tw.api.blizzard.com/"
	elif region == 'cn':
		urlbase = "https://gateway.battlenet.com.cn/"
	else:
		raise ValueError('No recognized region was supplied. Please provide a valid region (us|eu|kr|tw|cn)')
	
	#Generate profile name
	if profiletype == 'static':
		if wowtype == 'classic':
			urlprofile = 'static-classic-' + region
		else:
			urlprofile = 'static-' + region
	elif profiletype == 'dynamic':
			urlprofile = 'dynamic-' + region
	elif profiletype == 'profile':
			urlprofile = 'profile-' + region
	
	

#sub downloadinfo($$$$) {
#	my ($character, $server, $field, $apikey) = @_;
#	my $retrievedinfo = BNet::Utils::apiget($character, $server, $field, $apikey);
#	return $retrievedinfo;
#}

#sub apiget ($$$$){
#	my ($character, $server, $field, $apikey) = @_;
#	my $definedurl = "https://us.api.blizzard.com/wow/character/" . $server . "/" . $character . "?fields=" . $field . "&locale=en_US&access_token=" . $apikey;
#	my $url = get($definedurl);
#	die "Couldn't get it! $character $server" unless defined $url;
