# Een Bash-script schrijven - stap 3

In deze stap gaan we van elk bestand de datum van laatste wijziging opzoeken, meer bepaald het jaar en de maand. Bij de meeste fototoestellen is dat ook de datum waarop de foto genomen is.

Een meer geavanceerd script zou de [EXIF-data](https://en.wikipedia.org/wiki/Exif) van de foto kunnen uitlezen en op basis daarvan de datum waarop die genomen is bepalen. Probleem met deze benadering is dat er verschillen bestaan tussen merken van fototoestellen voor het invullen van de EXIF-data.

Pas de lus aan zodat voor elke foto bepaald wordt wanneer die genomen is (op basis van de tijd van laaste wijziging). Gebruik hiervoor het commando `stat`. Bekijk de man-page om te na te gaan hoe je de gevraagde waarde in de juiste vorm kan opvragen.

Probeer het commando eerst rechtstreeks uit op de command-line voordat je je script aanpast!

Voorbeeld:

```console
$ stat ... P12100554.jpg
2019-12-03 14:31:12.066617316 +0100
```

Ken deze waarde toe aan een variabele, bv. `year_month`. Zorg er ook voor dat we enkel jaar en maand overhouden:

```console
$ stat ... P12100554.jpg | ...
2019-12
```

Druk nu in het script voor elk JPG-bestand zowel de naam als maand af, bv.:

```console
$ cd ~/linux/oplossing/Pictures
$ ../sort-photos.sh 
./P12100035.jpg -> 2017-05
./P12100036.jpg -> 2017-05
./P12100037.jpg -> 2017-05
./P12100038.jpg -> 2017-05
./P12100039.jpg -> 2017-05
./P12100040.jpg -> 2017-05
./P12100041.jpg -> 2017-05
./P12100042.jpg -> 2017-05
./P12100043.jpg -> 2017-05
...
```

Om je oplossing te controleren en de volgende stap te nemen, doe je:

```console
$ cd ~/linux/opgave
$ git checkout stap-4
```
