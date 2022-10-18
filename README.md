# homeserver
Installationshilfe für meinen Linux Homeserver.
Das Script ist für die IP "192.168.178.10" und den Linux Benuter "server" ausgelegt.
Hat der Server eine andere IP oder einen anderen Linux Benutzernamen muss das Script vor Ausführung angepasst werden.

# Installationsscript ausführen
  sudo apt-get install unzip -y && if [ -d "/tmp/homeserver-main" ]; then rm -Rf /tmp/homeserver-main; fi && if [ -d "/tmp/main.zip" ]; then rm /tmp/main.zip; fi && wget https://github.com/koshisinthehouse/homeserver/archive/refs/heads/main.zip -P /tmp && unzip /tmp/main.zip && cd /tmp/homeserver-main && chmod 700 install.sh



