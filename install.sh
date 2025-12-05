#/bin/bash
# wget a mikrotik.zip and un zip 
 #!/bin/bash
ENV VERSION=4.0beta42
wget -O /tmp/mikrotik.zip "https://download.mikrotik.com/routeros/winbox/$(VERSION)/WinBox_Linux.zip"
unzip /tmp/mikrotik.zip -d /opt/winbox
chmod +x /opt/winbox/WinBox
ln -s /opt/winbox/WinBox /usr/local/bin/winbox
