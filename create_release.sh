# Get the latest stable release and unzip
wget "https://github.com/TheDuckCow/MCprep/releases/download/3.4.1/MCprep_addon_v3.4.1.zip"
mkdir MCprep_stable_release
unzip ./MCprep_addon_v*.zip -d MCprep_stable_release

# Remove the files in resources
rm -rf ./MCprep_addon/MCprep_resources/**
# Move the special files
mv -f ./MCprep_stable_release/MCprep_addon/MCprep_resources/** ./MCprep_addon/MCprep_resources 
# Remove the stable release
rm -rf ./MCprep_stable_release MCprep_addon_v*.zip

# Patch with the new sky that hasn't been merged yet
cd ./MCprep_addon/MCprep_resources || exit
rm clouds_moon_sun*
wget "https://cdn.discordapp.com/attachments/741468426404495410/1084521702026903652/clouds_moon_sun.blend" 
wget "https://cdn.discordapp.com/attachments/741468426404495410/1084521044657840139/clouds_moon_sun_eevee.blend"
# Compile the code
sh ./compile.sh
rm -rf ./MCprep_addon/MCprep_resources/**

