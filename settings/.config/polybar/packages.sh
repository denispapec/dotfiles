#!/bin/bash
PACKAGEMANAGER=$(pacaur -Quk | grep -v ignored)

AUR=$(echo "$PACKAGEMANAGER" | grep aur | grep -ve '^$' | wc -l)
NONAUR=$(echo "$PACKAGEMANAGER" | grep -v aur | grep -ve '^$' | wc -l)

echo " $NONAUR  $AUR"
