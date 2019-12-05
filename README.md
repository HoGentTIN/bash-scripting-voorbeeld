# Een Bash-script schrijven - start

## Opgave

Stel, je hebt net honderden foto’s van je fototoestel naar `~/Pictures` gekopieerd. Om je fotoverzameling overzichtelijker te maken, wil je ze onderverdelen per maand in directories van de vorm `jjjj-mm` (bv. `2018-08` voor augustus 2018).

We gaan dit proces automatiseren met een Bash-script `sort-photos.sh`.

Als we het script opstarten, zal het in de huidige directory alle JPG-bestanden opzoeken. Op basis van de datum van laatste wijziging zullen we deze bestanden sorteren in de directory met de juiste naam.

Fototoestellen gebruiken vaak hoofdletters in de bestandsnamen. Ons script moet ongevoelig zijn voor hoofd/-kleine letters. De bestandsextensie kan dus .JPG of .jpg zijn, maar ook Jpg, jPg, enz. moet correct afgehandeld worden.

Als er zich geen JPG-bestanden bevinden in de huidige directory, dan drukt het script een foutboodschap af op stderr, en sluit af met foutcode 1.

## Start

1. Maak eerst in de directory `oplossing/` het script aan met de naam `sort-photos.sh`. Gebruik een teksteditor naar keuze (nano, vim, Gedit, VSCode, ...)
2. Een shellscript begint altijd met een *shebang*.
3. Zorg dat het script meteen stopt als een commando afsluit met een foutcode, of als een ongedefinieerde variabele wordt opgevraagd. Stel ook de optie in voor fouten in *pipelines*.
4. Controleer telkens of je script syntactisch correct is en dat `shellcheck` *geen* opmerkingen heeft.

Probeer dit eerst zelf en voer het script ook uit. Op dit moment doet het nog niets nuttigs. Laat het script eventueel een boodschap afdrukken om te zien dat het effectief uitgevoerd wordt.

```console
$ ./sort-photos.sh
Hello world!
```

Als je klaar bent, kan je jouw oplossing vergelijken met de voorbeeldoplossing met:

```console
git checkout stap-1
```
