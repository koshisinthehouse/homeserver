# homeserver ubuntu linux 22.04
Installationshilfe für meinen Linux Homeserver.
Das Script ist für die IP "192.168.178.10" und den Linux Benuter "server" ausgelegt.
Hat der Server eine andere IP oder einen anderen Linux Benutzernamen muss das Script und die anderen Dateien vor Ausführung angepasst werden.
	
### Installationsscript ausführen
Bevor du den untenstehenden Quellcode ausführst, ändere bitte die Variablen $USER,$IP_SERVER,$IP_GATEWAY auf die Werte die du brauchst:

	export USER="server"; export IP_SERVER="192.168.178.10"; export IP_GATEWAY="192.168.178.1"; sudo apt-get install unzip -y && cd /tmp && if [ -d "homeserver-main" ]; then rm -Rf homeserver-main; fi && if [ -e main.zip ]; then rm main.zip; fi && wget https://github.com/koshisinthehouse/homeserver/archive/refs/heads/main.zip && unzip main.zip && cd homeserver-main && chmod 700 install.sh && sed -i "s/<USER>/$USER/g" ./install.sh; sed -i "s/<IP_SERVER>/$IP_SERVER/g" ./etc/netplan/00-installer-config.yaml; sed -i "s/<IP_GATEWAY>/$IP_GATEWAY/g" ./etc/netplan/00-installer-config.yaml;



