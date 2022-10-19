# homeserver ubuntu linux 22.04
Installationshilfe für meinen Linux Homeserver.
Das Script ist für die IP "192.168.178.10" und den Linux Benuter "server" ausgelegt.
Hat der Server eine andere IP oder einen anderen Linux Benutzernamen muss das Script und die anderen Dateien vor Ausführung angepasst werden.

## TODO
File Replacing um IP und User individuell austauschen zu können
https://www.cyberciti.biz/faq/how-to-use-sed-to-find-and-replace-text-in-files-in-linux-unix-shell/

<IP_SERVER> = 192.168.178.10
<IP_GATEWAY> = 192.168.178.1
<USER> = server



export USER="server"; export IP_SERVER="192.168.178.10"; export IP_GATEWAY="192.168.178.1"; sed -i "s/<USER>/$USER/g" ./install.sh; sed -i "s/<IP_SERVER>/$IP_SERVER/g" ./etc/netplan/00-installer-config.yaml;


### Installationsscript ausführen
	sudo apt-get install unzip -y && cd /tmp && if [ -d "homeserver-main" ]; then rm -Rf homeserver-main; fi && if [ -e main.zip ]; then rm main.zip; fi && wget https://github.com/koshisinthehouse/homeserver/archive/refs/heads/main.zip && unzip main.zip && cd homeserver-main && chmod 700 install.sh



