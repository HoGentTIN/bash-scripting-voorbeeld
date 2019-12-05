# Een Bash-script schrijven - stap 1

Om je te helpen bij het testen van dit script, vind je nu in deze directory een script `test-setup.sh`. Het maakt een directory "Pictures" aan en vult het met testbestanden. De bestanden zijn weliswaar leeg, maar de datum van wijziging is ingesteld. In de directory `oplossing/` kan je het oproepen met het volgende commando:

```console
$ cd ~/linux/oplossing
$ ../opgave/test-setup.sh
$ cd Pictures
$ ls
```

Pas nu het script `sort-photos.sh` aan zodat het controleert of er JPG-bestanden aanwezig zijn in de huidige directory. tip: het commando `ls` geeft een foutcode (exit status verschillend van 0) als het geen bestanden gevonden heeft die aan het opgegeven patroon voldoen. Vergeet niet dat het script hoofdletterongevoelig moet zijn! De bestandsextentie JPG mag in elke combinatie van hoofd- of kleine letters voorkomen. Als je het commando `ls` gebruikt, vergeet dan niet de uitvoer (stdout en stderr) "weg te gooien". We zijn enkel geïnteresseerd in de exit-status.

Als er geen JPG-bestanden in de huidige directory voorkomen, dan sluit het script meteen af met een foutcode. Druk ook een gepaste foutboodschap:

Bv. in de directory `~/linux/oplossing/`

```console
$ ./sort-photos.sh
Geen JPG-bestanden gevonden!
$ echo $?
1
```

Als je het script uitvoert in de nieuwe directory Pictures:

```console
$ cd Pictures
$ ../sort-photos.sh
JPG-bestanden gevonden
$ echo $?
0
```

Probeer dit eerst uit. Als je je oplossing wil controleren en naar de volgende stap wil gaan doe je:

```console
$ cd ~/linux/opgave
$ git checkout stap-2
```
