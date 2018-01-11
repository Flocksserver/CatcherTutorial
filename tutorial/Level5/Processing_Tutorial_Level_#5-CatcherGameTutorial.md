# Zusammenfassung
In diesem Level bauen wir Spielmechanik ein! Du lernst Kollisionsprüfungen hinzuzufügen und Zähler für den Spielstand und Leben. Außerdem sollen nicht nur eine endliche Anzahl an Objekten herunterfallen, sondern ein dauerhafter Objektregen implementiert werden.

| Thema                 | Voraussetzungen         |
| --------------------- | ----------------------- |
| Schwierigkeit         | :star: :star: :star: :star:          |
| Hardware              | PC (Windows/Mac/Linux), Android-Smartphone (optional)  |
| Software              | Browser, Internetzugang, Processing IDE  |
| CatcherTutorial Level | [0](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level0/Processing_Tutorial_Level_%230-CatcherGameTutorial.md),[1](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level1/Processing_Tutorial_Level_%231-CatcherGameTutorial.md),[2](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level2/Processing_Tutorial_Level_%232-CatcherGameTutorial.md),[3](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level3/Processing_Tutorial_Level_%233-CatcherGameTutorial.md),[4](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level4/Processing_Tutorial_Level_%234-CatcherGameTutorial.md)                       |
| Programmierung        | Aufruf von Funktionen, Variablen,  Events (mousePressed), Bedingte Anweisung und Verzweigung (if, else)), Funktionen, for-Schleife, Klassen, Objekte, Instanzen, Konstruktor|

### Aufgabe 1
1. Um die Anzahl der noch übrigen Leben zu zählen, integriere eine Variable dafür. Der derzeitige Stand muss im Moment noch nicht im Fenster angezeigt werden. Um die Anzahl trotzdem sichtbar zu machen, kannst du dir in der Konsole den Wert der Variablen ausgeben lassen.
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

3. Implementiere die Kollisionserkennung. Tipp: Du kannst die Y-Position des herunterfallenden Objektes aus dem PShape-Objekt extrahieren, oder die einfachere Variante: Jedes Mal beim Aufruf von *translate()* kannst du eine Variable zur Y-Position um denselben Wert wie *translate* erhöhen (achte aber darauf, dass du beim Zeichnen des Objektes nicht die nun erstellte yPos nimmst!).
4. Zähle ein Leben runter, sobald ein Objekt das Ende des Bildschirms erreicht. Entferne das entsprechenden Objekt aus der *ingame*-Liste

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level5/CatcherTutorialLevel5A1)

### Aufgabe 2
1. Nun möchten wir es nicht bei den 6 Objekten belassen. Als nächstes sollst du einen Dauerregen an Objekten implementieren. Lass den Stack (waitingStack) initial leer. Passe deine Implementierung so an, dass immer dann, wenn der Stack leer ist, ein neues Objekt erstellt wird, das in diesen Stack gepusht wird.

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level5/CatcherTutorialLevel5A2)

### Aufgabe 3
1. Yeah! Wir haben einen dauerhaften Objektregen. Leider ist dieser sehr ineffizient, da der Speicher mit sehr viel Objekten vollgeschrieben wird.
> Exkurs: In Java gibt es den *garbage collector*, der Objekte, die im Speicher existieren aber nicht mehr referenziert sind, automatisch entfernt. Durch dein Entfernen der Objekte aus der *ingame*-Liste hast du keinen Zugriff mehr drauf (nicht mehr referenziert). Demnach könnte sich der *garbage collector* um das Entfernen der Objekte kümmern. Bist du also fein raus? Theoretisch ja, praktisch nein! Es ist *guter Stil* effizient zu programmieren, denn der *garbage collector* ist ein Feature der JVM (Java Virtual Machine). Wenn du beispielsweise das nächste mal etwas in C++ programmierst, hilft es dir gleich mit dem scharfen Blick zur Effizienz zu programmieren.

2. Passe deine Implementierung an, sodass das Objekt bei Kollision mit dem unteren Bildschirmrand nicht nur aus der *ingame*-Liste entfernt, sondern gleich wieder dem Stack hinzugefügt wird. Hast du im herunterfallenden Objekt globale Variablen die du wieder zurücksetzen musst? Bestimmt! Erstelle eine Funktion in der Klasse, die alle relevanten Variablen wieder auf den initialen Zustand zurücksetzt.

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level5/CatcherTutorialLevel5A3)

### Aufgabe 4
1. Was war nochmal das Ziel des Spiels? Punkte sammeln! Endlich soll dein *Catcher* die Funktionalität bekommen, die er braucht. Erstelle wie beim Leben eine Variable für die aktuellen Punkte.
2. Jetzt wird es etwas tricky! Überlege dir eine Kollisionserkennung zwischen dem *Catcher* und deinen herunterfallenden Objekten. Vom Prinzip musst du genau wie in Aufgabe 1 vorgehen. Beachte aber, dass diesmal die X **und** die Y-Positionen vom jeweils herunterfallenden Objekt **und** dem *Catcher* entscheidend sind. Außerdem sind bei der Betrachtung der Y-Richtung nicht nur die untere Kante (*+ objekt.height/2*) sondern auch die obere Kante (*- objekt.height/2*) relevant. Bei der Betrachtung der X-Richtung demnach (*+ objekt.width/2*) und (*- objekt.width/2*). Probiere ruhig etwas länger aus und lass dich nicht entmutigen, wenn du nicht sofort auf eine richtig funktionierende Lösung kommst.
3. Zähle die aktuellen Punkte bei Kontakt mit dem *Catcher* hoch. Entferne das entsprechenden Objekt aus der *ingame*-List, initialisiere es neu und füge es dem Stack hinzu

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level5/CatcherTutorialLevel5A4)

> Exkurs: Ist dir aufgefallen, dass die Kollisionserkennung nicht ganz korrekt ist wenn du wie ich für die herunterfallenden Objekte Kreise verwendest? Der Algorithmus dafür geht von einem Rechteck aus. Dies wird klar, wenn du die Berechnung der Kollision auf Papier mit den Objekten malst und den Kreis links oder rechts an die Ecke des *Catchers* treffen lässt. Haben wir nun quatsch implementiert? Wieder: Theoretisch ja, praktisch nein! In Spielen (vorrangig bei 3D - aber auch teilweise bei 2D) ist es aus Effizienzgründen gängig, dass eine [*Hitbox*](https://de.wikipedia.org/wiki/Hitbox) definiert wird. Diese Beschreibt den Bereich, in dem Kollision als gegeben angesehen wird. Der Kreis besitzt also eine virtuelle Hitbox um sich herum.

### Aufgabe 5 (optional)
1. Die Game-Klasse wird immer voller. Lagere doch Funktionalität aus! Ein Beispiel ist das Organisieren der herunterfallenden Objekte. Falls du magst kannst du auch andere spezifische Logik aus der Klasse in eine neue ziehen.

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level5/CatcherTutorialLevel5A5)

### Aufgabe 6 (optional)
1. Teste die Anwendung auch auf Android

# Nächstes Level
Hier geht es weiter zum [nächsten Level :arrow_right:](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level6/Processing_Tutorial_Level_%236-CatcherGameTutorial.md)
