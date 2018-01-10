# Zusammenfassung
In diesem Level bauen wir Spielmechanik ein! Du lernst Kollisionsprüfungen hinzuzufügen und Zähler für den Spielstand und Leben. Außerdem sollen nicht nur eine endliche Anzahl an Objekten herunterfallen sondern ein dauerhafter Objektregen implementiert werden.

| Thema                 | Voraussetzungen         |
| --------------------- | ----------------------- |
| Schwierigkeit         | :star: :star: :star: :star:          |
| Hardware              | PC (Windows/Mac/Linux), Android-Smartphone (optional)  |
| Software              | Browser, Internetzugang, Processing IDE  |
| CatcherTutorial Level | [0](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level0/Processing_Tutorial_Level_%230-CatcherGameTutorial.md),[1](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level1/Processing_Tutorial_Level_%231-CatcherGameTutorial.md),[2](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level2/Processing_Tutorial_Level_%232-CatcherGameTutorial.md),[3](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level3/Processing_Tutorial_Level_%233-CatcherGameTutorial.md),[4](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level4/Processing_Tutorial_Level_%234-CatcherGameTutorial.md)                       |
| Programmierung        | Aufruf von Funktionen, Variablen,  Events (mousePressed), Bedingte Anweisung und Verzweigung (if, else)), Funktionen, for-Schleife, Klassen, Objekte, Instanzen, Konstruktor|

### Aufgabe 1
1. Um die Anzahl der noch übrigen Leben zu zählen, integriere eine Variable dafür. Der derzeitige Stand muss derzeit nicht im Fenster angezeigt werden. Um die Anzahl trotzdem sichtbar zu machen, kannst du dir in der Konsole den Wert der Variablen ausgeben lassen.
```processing
int lives = 5;
...
println("Lives: "+ lives); // Innerhalb der zyklischen Ausführung
```
2. Überlege eine Kollisionserkennung für die herunterfallenden Objekte, sobald diese das Ende des Bildschirms erreicht habe. Beachte die Größe der Objekte. Beispiel: Bei einem PShape, der im Modus *CENTER* gezeichnet wurde, ist die unterste Kante an der Y-Position des Objektes + (Höhe des Objektes / 2)).
<div>
<img src="https://github.com/Flocksserver/CatcherTutorial/raw/master/tutorial/Level5/collision.png" width="600">
</div>
<br>

3. Implementiere die Kollisionserkennung. Tipp: Du kannst die Y-Position des herunterfallenden Objektes aus dem PShape-Objekt extrahieren, oder die einfachere Variante: Jedesmal beim Aufruf von *translate()* kannst du eine Variable zur yPosition um denselben Wert wie translate erhöhen (achte aber darauf, dass du beim Zeichnen des Objektes nicht die nun erstellte yPos nimmst!).
4. Zähle ein Leben runter, sobald ein Objekt das Ende des Bildschirms erreicht. Entferne das entsprechenden Objekt aus der *ingame*-Liste

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level5/CatcherTutorialLevel5A1)

### Aufgabe 2
1. Nun möchten wir es nicht bei den 6 Objekten belassen. Als nächstes sollst du einen Dauerregen an Objekten implementieren. Lass den Stack (waitingStack) initial leer. Passe deine Implementierung so an, dass immer dann, wenn der Stack leer ist, ein neues Objekt erstellt wird, das in diesen Stack gepusht wird.

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level5/CatcherTutorialLevel5A2)

# Nächstes Level
Hier geht es weiter zum [nächsten Level :arrow_right:](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level6/Processing_Tutorial_Level_%236-CatcherGameTutorial.md)
