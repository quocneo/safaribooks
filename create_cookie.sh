#!/bin/sh
#### Installation xclip for clipboard content
# sudo apt update
# sudo apt install xclip
#
#### Cookie-Editor from Chrome extension -> export to JSON(Clipboard)
# 
xclip -o -selection clipboard | jq 'map({(.name): .value}) | add' > cookies.json
