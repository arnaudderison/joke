#!/bin/bash

# Créer le dossier LaunchAgents s'il n'existe pas
mkdir -p ~/Library/LaunchAgents

# Créer le fichier plist pour le lancement automatique
cat > ~/Library/LaunchAgents/com.user.startup.plist << EOL
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.user.startup</string>
    <key>ProgramArguments</key>
    <array>
        <string>/Users/aderison/joke/script.sh</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>WorkingDirectory</key>
    <string>/Users/aderison/joke</string>
</dict>
</plist>
EOL

chmod 644 ~/Library/LaunchAgents/com.user.startup.plist
launchctl unload ~/Library/LaunchAgents/com.user.startup.plist
launchctl load ~/Library/LaunchAgents/com.user.startup.plist