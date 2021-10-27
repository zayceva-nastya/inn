#!/usr/bin/env bash

set -euo pipefail

echo "Removing: [~/.java/.userPrefs]"
! rm -rf ~/.java/.userPrefs

for DIR in ~/.config/JetBrains/*/
do
APP=${DIR%*/}
echo
echo "App: [${APP##*/}]"

echo "Removing: [${APP}/eval/]"
! rm -rf "${APP}/eval/"

echo "Removing: [${APP}/options/other.xml]"
! rm -rf "${APP}/options/other.xml"
done