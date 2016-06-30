#
# Author Nick Farrow
#
# Initial Release: 0

RED='\033[0;31m'        #RED
GREEN='\033[0;32m' #GREEN
YELLOW='\033[0;33m' #YELLOW
NC='\033[0m' # No Color

sudo apt-get -y install libopus0 libasound2 libudev0 libavahi-client3 libcurl3 libevdev2
printf "${YELLOW}Adding sound to use HDMI ${NC}\n"
echo "hdmi_drive=2" | sudo sh -c 'cat >> /boot/config.txt'
printf "${YELLOW}Adding moonlight into the sources list${NC}\n"
echo "deb http://archive.itimmer.nl/raspbian/moonlight jessie main" | sudo sh -c 'cat >> /etc/apt/sources.list'
sudo apt-key update
sudo apt-get -y update
sudo apt-get --force-yes -y install moonlight-embedded
printf "${GREEN}moonlight should be installed ${NC}\n"
printf "${GREEN}type:moonlight ${NC}\n"
