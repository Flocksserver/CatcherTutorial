# Zusammenfassung
In diesem Level geht es um das Darstellen von Text im Fenster. Außerdem integrieren wir verschiedene Schwierigkeitsstufen in unserem Spiel.

| Thema                 | Voraussetzungen         |
| --------------------- | ----------------------- |
| Schwierigkeit         | :star: :star: :star:        |
| Hardware              | PC (Windows/Mac/Linux), Android-Smartphone (optional)  |
| Software              | Browser, Internetzugang, Processing IDE  |
| CatcherTutorial Level | [0](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level0/Processing_Tutorial_Level_%230-CatcherGameTutorial.md),[1](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level1/Processing_Tutorial_Level_%231-CatcherGameTutorial.md),[2](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level2/Processing_Tutorial_Level_%232-CatcherGameTutorial.md),[3](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level3/Processing_Tutorial_Level_%233-CatcherGameTutorial.md),[4](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level4/Processing_Tutorial_Level_%234-CatcherGameTutorial.md),[5](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level4/Processing_Tutorial_Level_%235-CatcherGameTutorial.md)                        |
| Programmierung        | Aufruf von Funktionen, Variablen,  Events (mousePressed), Bedingte Anweisung und Verzweigung (if, else)), Funktionen, for-Schleife, Klassen, Objekte, Instanzen, Konstruktor|

### Aufgabe 1
1. Wir möchten auf dem Fenster den derzeitigen Score und die Anzahl der Leben sichtbar machen. Schaue dir die Tutorials über [Typography](https://processing.org/tutorials/typography) und [Strings and Drawing Text](https://processing.org/tutorials/text) an.
2. Erstelle eine neue Klasse, die für das Darstellen der beiden Werte zuständig ist. Platziere die Werte beliebig auf dem Spielbereich (oben links und oben rechts zum Beispiel) Die Schrift und verschiedene, mögliche Schriftgrößen können in der Einstiegsdatei spezifiziert werden.

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level6/CatcherTutorialLevel6A1)

### Aufgabe 2
1. Schön wäre es, wenn sich die Schwierigkeit mit fortgeschrittenen Punkten erhöht. Dies kann zum Beispiel durch die Fallgeschwindigkeit beeinflusst werden. Implementiere verschiedene Grenzen, an denen sich die Geschwindigkeit der herunterfallenden Objekte erhöht.

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level6/CatcherTutorialLevel6A2)

### Aufgabe 3
1. Derzeit kann die Anzahl der Leben negativ werden. Das sollte natürlich nicht so sein! Wir führen das Konzept eines Zustands ein. Für das Spiel gibt es derzeit zwei Zustände. *Das Spiel läuft* und *Das Spiel ist verloren*. Implementiere in der Einstiegsdatei diese zwei Zustände. Solange *Das Spiel läuft* soll die draw-Methode *execute()* aufrufen. Wenn das Spiel verloren ist, nicht mehr. Ändere den Status auf *Das Spiel ist verloren*, sobald die Lebenszahl auf 0 geht.
```processing
final int stateGameRunning = 0;
final int stateGameEnd = 1;
int state = stateGameRunning;
```

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level6/CatcherTutorialLevel6A3)

### Aufgabe (optional)
1. Derzeit wird die Schrift den Größen nicht angepasst. Implementiere daher einen Skalierungsfaktor für die Größe der Schrift in Abhängigkeit zur Fenstergröße. Für den Desktop musst du ein bisschen ausprobieren um herauszufinden, welche Größen dir passen. Bei Android ist dies einfacher. Hier kannst du den eingebauten Faktor *displayDensity* verwenden.
```processing
float scale;
...
scale = displayDensity;
normalFont = createFont("SansSerif", textWidth * scale);
```

# Nächstes Level
Hier geht es weiter zum [nächsten Level :arrow_right:](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level7/Processing_Tutorial_Level_%237-CatcherGameTutorial.md)
