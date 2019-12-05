#! /usr/bin/env bash
#
# Dit script sorteert JPG-bestanden in de huidige directory in mappen met naam
# JJJJ-MM, gebaseerd op jaartal en maand waarop het bestand het laatst is
# gewijzigd

set -o errexit  # Stop script bij fouten
set -o nounset  # Stop script bij onbestaande variabelen
set -o pipefail # Exitstatus pipe is dat van het laatste commando met foutcode

# Controleer of er zich JPGs in de huidige directory bevinden
# - het globbing-patroon zorgt voor hoofdletterongevoeligheid
# - ./ ervoor vermijdt een shellcheck-waarschuwing
# - stdout en stderr worden naar /dev/null omgeleid
# - ! = logische NOT
if ! ls ./*.[Jj][Pp][Gg] > /dev/null 2>&1; then
  echo "Geen JPG-bestanden gevonden!" >&2
  exit 1
fi

# Je kan hier een else-blok invoegen, maar dat is niet nodig.

echo "JPG-bestanden gevonden"
