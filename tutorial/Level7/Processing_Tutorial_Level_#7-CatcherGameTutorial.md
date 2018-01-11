# Zusammenfassung
In diesem Level fügen wir neue Zustände hinzu, um das Spiel zu starten und neu zu starten.

| Thema                 | Voraussetzungen         |
| --------------------- | ----------------------- |
| Schwierigkeit         | :star: :star: :star:        |
| Hardware              | PC (Windows/Mac/Linux), Android-Smartphone (optional)  |
| Software              | Browser, Internetzugang, Processing IDE  |
| CatcherTutorial Level | [0](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level0/Processing_Tutorial_Level_%230-CatcherGameTutorial.md),[1](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level1/Processing_Tutorial_Level_%231-CatcherGameTutorial.md),[2](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level2/Processing_Tutorial_Level_%232-CatcherGameTutorial.md),[3](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level3/Processing_Tutorial_Level_%233-CatcherGameTutorial.md),[4](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level4/Processing_Tutorial_Level_%234-CatcherGameTutorial.md),[5](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level5/Processing_Tutorial_Level_%235-CatcherGameTutorial.md),[6](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level6/Processing_Tutorial_Level_%236-CatcherGameTutorial.md)                        |
| Programmierung        | Aufruf von Funktionen, Variablen,  Events (mousePressed), Bedingte Anweisung und Verzweigung (if, else)), Funktionen, for-Schleife, Klassen, Objekte, Instanzen, Konstruktor|

### Aufgabe 1
1. Erstelle einen neuen Zustand, der das Warten auf den Spielstart repräsentiert.
2. Implementiere eine Klasse, die den Startbildschirm zeigt. Es reicht fürs erste, wenn dieser Screen ein Rechteck als Button enthält, auf dem **START** steht.
3. Nun ist die Frage wie du den Button-Klick registrierst? Ganz einfach: Über die X und Y-Positionen des **mousePressed**-Events. Füge hierzu in der Einstiegsdatei auch die Y-Position mit ein.
```processing
if (mousePressed) {
  playerPosX = mouseX;
  playerPosY = mouseY;
}
```
4. Wenn die X und Y-Position innerhalb des Bereiches des Rechtecks sind, wurde der Button geklickt. Leite dann in den nächsten Zustand über.

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level7/CatcherTutorialLevel7A1)

### Aufgabe 2
1. Erstelle einen (oder wenn nötige mehrere) Zustand/Zustände, um den erreichten Score anzuzeigen und das Spiel über einen Button neustarten zu können.
2. Implementiere eine Klasse, die den Score zeigt und den Button zum Neustart darstellt. Tipp: Beachte, dass die X und Y-Position des Spielers nicht gleich den Button-Klick auf Restart auslösen sollen, wenn dieser aus Versehen in dem korrekten Bereich im Spiel war, wo später der Restart-Button liegt.
3. Überlege dir, wie du alle Parameter des Game-Objektes (und alle, die damit zu tun haben) so zurücksetzt.

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level7/CatcherTutorialLevel7A2)

### Aufgabe 3 (optional)
1. Zentralisiere alle Variablen die du in der gesamten Anwendung vereinheitlicht haben möchtest in der Einstiegsdatei (Beispiel: Farben - Ich habe drei Hauptfarben. Dunkles Grau, Weiß und Gelb).
```processing
color darkGrey = color(45, 50, 50);
color yellow = color(255, 255, 0);
...
background(darkGrey);
...
c.setFill(yellow);
```

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level7/CatcherTutorialLevel7A3)

### Aufgabe 4 (optional)
1. Teste und spiele die Anwendung auch auf Android

# Nächstes Level
Hier geht es weiter zum [nächsten Level :arrow_right:](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level8/Processing_Tutorial_Level_%238-CatcherGameTutorial.md)
