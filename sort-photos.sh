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
  echo "Geen JPG-bestanden gevonden!"
  exit 1
fi

# Loop over alle JPG-bestanden
for pic in ./*.[Jj][Pp][Gg]; do
  # Bepaal jaar & maand van laatste wijziging
  month_year=$(stat -c%y "${pic}" | cut -c 1-7)
  # Toon bestandsnaam en jaar/maand
  echo "${pic} -> ${month_year}"
done
