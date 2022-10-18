# homeserver
Installationshilfe für meinen Linux Homeserver

# Installationsscript ausführen
sudo apt-get install unzip -y && if [ -d "/tmp/homeserver-main" ]; then rm -Rf /tmp/homeserver-main; fi && if [ -d "/tmp/main.zip" ]; then rm /tmp/main.zip; fi && wget https://github.com/koshisinthehouse/homeserver/archive/refs/heads/main.zip -P /tmp && unzip /tmp/main.zip && cd /tmp/homeserver-main && chmod 700 install.sh



