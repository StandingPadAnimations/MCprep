# This is a justfile, which allows us to easily run commands with just <build>

alias r := release-build

default: dev-build

dev-build:
	echo "Debug Build!"
	sh ./compile.sh -d

release-build:
	echo "Release Build!"
	just download-resources
	just patch-resources
	
	# Compile the code
	cd ../.. || exit
	sh ./compile.sh
	rm -rf ./MCprep_addon/MCprep_resources/**

_download-resources:
	# Get the latest stable release and unzip
	wget "https://github.com/TheDuckCow/MCprep/releases/download/3.4.2/MCprep_addon_v3.4.2.zip"
	mkdir MCprep_stable_release
	unzip ./MCprep_addon_v*.zip -d MCprep_stable_release
	
	# Remove and readd resources
	rm -rf ./MCprep_addon/MCprep_resources/**
	mv -f ./MCprep_stable_release/MCprep_addon/MCprep_resources/** ./MCprep_addon/MCprep_resources 
	rm -rf ./MCprep_stable_release MCprep_addon_v*.zip
		
_patch-resources:
	cd ./MCprep_addon/MCprep_resources || exit
	rm clouds_moon_sun*
	wget "https://cdn.discordapp.com/attachments/741468426404495410/1084521702026903652/clouds_moon_sun.blend" 
	wget "https://cdn.discordapp.com/attachments/741468426404495410/1084521044657840139/clouds_moon_sun_eevee.blend"

