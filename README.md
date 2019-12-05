# Een Bash-script schrijven - stap 4

Ons script kan nu over alle JPG-bestanden in de huidige directory itereren en we weten ook in welke directory de foto thuis hoort. In deze volgende stap gaan we de eigenlijke functionaliteit van ons script implementeren.

We veronderstellen dat de maand waarop de foto genomen is, in formaat JJJJ-MM in een variabele `${year_month}` zit.

1. Controleer of een directory met naam `${year_month}` bestaat.
    - Indien *niet*, maak deze aan
2. Verplaats de huidige foto naar de map `${year_month}`

Probeer je script uit. Als alles goed gelopen is, zal de directory `Pictures/` nu een aantal subdirectories bevatten van de vorm JJJJ-MM, en in elke directory zitten een aantal JPGs. Als er iets is misgelopen, dan kan je de directory Pictures verwijderen en opnieuw het `test-setup.sh` script uitvoeren.

```console
$ cd ~/linux/oplossing/
$ rm -r Pictures/
$ ../opgave/test-setup.sh
$ cd Pictures
$ ls
...
$ ../sort-photos.sh
```

Gelukt? Vergelijk jouw script met de voorbeeldopdlossing:

```console
$ cd ~/linux/opgave
$ git checkout einde
```
