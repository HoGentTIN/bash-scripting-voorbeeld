#! /usr/bin/env bash
#
# Dit script sorteert JPG-bestanden in de huidige directory in mappen met naam
# JJJJ-MM, gebaseerd op jaartal en maand waarop het bestand het laatst is
# gewijzigd

set -o errexit  # Stop script bij fouten
set -o nounset  # Stop script bij onbestaande variabelen
set -o pipefail # Exitstatus pipe is dat van het laatste commando met foutcode

echo "Hello world!"
