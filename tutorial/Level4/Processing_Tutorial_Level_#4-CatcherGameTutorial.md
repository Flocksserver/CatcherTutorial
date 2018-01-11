# Zusammenfassung
In diesem Level geht es um das Anpassen von Größen in Abhängikeit der Displaygröße. Außerdem testen wir die Anwendung das erste mal auf einem Android-Smartphone (optional).

| Thema                 | Voraussetzungen         |
| --------------------- | ----------------------- |
| Schwierigkeit         | :star: :star:           |
| Hardware              | PC (Windows/Mac/Linux), Android-Smartphone (optional)  |
| Software              | Browser, Internetzugang, Processing IDE        |
| CatcherTutorial Level | [0](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level0/Processing_Tutorial_Level_%230-CatcherGameTutorial.md),[1](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level1/Processing_Tutorial_Level_%231-CatcherGameTutorial.md),[2](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level2/Processing_Tutorial_Level_%232-CatcherGameTutorial.md),[3](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level3/Processing_Tutorial_Level_%233-CatcherGameTutorial.md)                        |
| Programmierung        | Aufruf von Funktionen, Variablen,  Events (mousePressed), Bedingte Anweisung und Verzweigung (if, else)), Funktionen, for-Schleife, Klassen, Objekte, Instanzen, Konstruktor|

### Aufgabe 1
1. Das Spiel soll nicht nur in den Maßen 400x640 dargestellt werden können. Das wird spätestens auf Android-Smartphones mit verschiedenen Bildschirmgrößen relevant. Aber auch auf dem Desktop ist ein Spiel im *Vollbildmodus* interessant. Aktiviere den Vollbildmodus und führe die Anwendung aus.
```processing
//size(400, 640);
fullScreen(P2D); //P2D ist ein alternativer Renderer in Processing
```
2. Was fällt dir auf? Baue deine Anwendung mit Hilfe der Processing Variablen (**width** und **height**) so um, dass alle Objekte im Verhältnis zu den Displaymaßen berechnet werden.
```processing
// Beispiel Mitte des Bildschirms x/y
float displayMidX = width/2;
float displayMidY = height/2;
```
[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level4/CatcherTutorialLevel4A1)

### Aufgabe 2 (optional)
1. Aktiviere die [Entwickleroptionen](https://www.droidwiki.org/wiki/Entwickleroptionen) auf den Android-Smartphone
2. Aktiviere USB-Debugging in den Entwickleroptionen des Smartphones
3. Wechsel den Modus in der Processing IDE zu Android
4. a) Schließe das Smartphone per USB am PC an. Sollte auf dem Smartphone eine Erlaubnis des Rechners zum Verbinden verlangt werden, so bestätige diese. Drücke den Play-Button. Die Anwendung sollte auf deinem Smartphone installiert und gestartet werden.
4. b) Über den Menüpunkt *Sketch* in der Processing IDE kannst du *Run in Emulator* wählen. Dann benötigst du kein Smartphone. Ich würde dir aber immer empfehlen ein echtes Gerät zum Testen zu verwenden. Aber falls du einen Emulator verwenden willst/musst verwende x86, wenn Processing dich danach fragt.

# Nächstes Level
Hier geht es weiter zum [nächsten Level :arrow_right:](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level5/Processing_Tutorial_Level_%235-CatcherGameTutorial.md)
