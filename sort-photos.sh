#! /usr/bin/env bash
#
# Dit script sorteert JPG-bestanden in de huidige directory in mappen met naam
# JJJJ-MM, gebaseerd op jaartal en maand waarop het bestand het laatst is
# gewijzigd

set -o errexit  # Stop script bij fouten
set -o nounset  # Stop script bij onbestaande variabelen
set -o pipefail # Exitstatus pipe is dat van het laatste commando met foutcode

# Sluit af als er geen JPG-bestanden in de huidige directory zitten
if ! ls ./*.[Jj][Pp][Gg] > /dev/null 2>&1; then
  echo "Geen JPG-bestanden gevonden!" >&2
  exit 1
fi

for pic in ./*.[Jj][Pp][Gg]; do
  echo "${pic}"
done
