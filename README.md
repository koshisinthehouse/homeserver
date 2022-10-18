# homeserver
Installationshilfe für meinen Linux Homeserver.
Das Script ist für die IP "192.168.178.10" und den Linux Benuter "server" ausgelegt.
Hat der Server eine andere IP oder einen anderen Linux Benutzernamen muss das Script und die anderen Dateien vor Ausführung angepasst werden.

### Installationsscript ausführen
	sudo apt-get install unzip -y && cd /tmp && if [ -d "homeserver-main" ]; then rm -Rf homeserver-main; fi && if [ -e main.zip ]; then rm main.zip; fi && wget https://github.com/koshisinthehouse/homeserver/archive/refs/heads/main.zip && unzip main.zip && cd homeserver-main && chmod 700 install.sh



