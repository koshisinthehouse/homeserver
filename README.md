# homeserver
Installationshilfe für meinen Linux Homeserver

# Installationsscript ausführen
sudo apt-get install unzip -y && if [ -d "homeserver-main" ]; then rm -Rf homeserver-main; fi && if [ -d "main.zip" ]; then rm main.zip; fi && wget https://github.com/koshisinthehouse/homeserver/archive/refs/heads/main.zip && unzip main.zip && cd homeserver-main && chmod 700 install.sh



