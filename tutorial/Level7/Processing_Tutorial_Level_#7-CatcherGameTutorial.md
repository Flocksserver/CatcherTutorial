# Zusammenfassung
In diesem Level fügen wir neue Zustände hinzu um das Spiel zu starten und neu zu starten.

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
3. Nun ist die Frage wie man den Button-Klick registriert? Ganz einfach: Über die X und Y-Positionen des **mousePressed**-Events. Füge hierzu in der Einstiegsdatei auch die Y-Position mit. Wenn die X und Y-Position innerhalb des Bereiches des Rechtecks ist, wurde der Button geklickt. Leite dann in den nächsten Zustand über.
```processing
if (mousePressed) {
  playerPosX = mouseX;
  playerPosY = mouseY;
}
```
