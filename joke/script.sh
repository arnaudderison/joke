#!/bin/bash
osascript -e "set volume output volume 50"
# Chemin absolu vers ton fichier HTML
HTML_FILE="./index.html"
afplay sad-meow-song.mp3 &
# Ouvre le fichier HTML dans le navigateur par défaut
open "$HTML_FILE"
