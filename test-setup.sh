#! /usr/bin/env bash
#
# Dit script genereert testbestanden voor de opgave sort-photos.sh Er worden
# 600+ bestanden aangemaakt in een subdirectory `Pictures` met een datum van
# laatste wijziging verspreid over verschillende maanden.

photo_dir='Pictures'
base_name='P1210'
extension='jpg'

# Creëer de directory voor de testbestanden
if [ ! -d "${photo_dir}" ]; then
  mkdir -p "${photo_dir}"
fi

# Maak eerst een reeks genummerde bestanden aan, met een naam zoals die
# gebruikelijk is bij digitale fototoestellen
for idx in {35..648}; do
  pad_idx=$(printf "%04d" "${idx}")
  touch "${photo_dir}/${base_name}${pad_idx}.${extension}"
done

# Bepaal datum van het oudste bestand
cur_date="2017-05-11 11:11"

for pic in "${photo_dir}"/*."${extension}"; do

  # Stel de datum van laatste wijziging in
  touch -m --date="${cur_date}" "${pic}"

  # Bepaal een willekeurig getal om de tijd te laten toenemen
  increment=$(shuf --input-range=0-24 --head-count=1)

  # Gebruik `date` om de nieuwe datum te berekenen.
  # Date kan berekeningen maken zoals "2018-01-01 +2days"
  cur_date=$(date --date="${cur_date} +${increment}days" +"%F %T")
done

