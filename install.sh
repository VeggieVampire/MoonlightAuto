sudo apt-get -y install libopus0 libasound2 libudev0 libavahi-client3 libcurl3 libevdev2
echo "Adding sound to use HDMI"
echo "hdmi_drive=2" | sudo sh -c 'cat >> /boot/config.txt'
echo "Adding moonlight into the sources list"
echo "deb http://archive.itimmer.nl/raspbian/moonlight jessie main" | sudo sh -c 'cat >> /etc/apt/sources.list'
sudo apt-key update
sudo apt-get --force-yes -y install moonlight-embedded
