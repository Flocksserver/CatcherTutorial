# Zusammenfassung
In diesem Level lernst du eine neue Möglichkeit kennen Formen zu zeichnen, um mehr Kontrolle über diese Objekte zu haben. Weiter werden wir kleine Kreise animiert vom oben nach unten herab fallen lassen. Eine Datenstruktur ArrayList und die for-Schleife werden eingeführt sowie das zeitlich bedingte Ausführen einer Funktion.

| Thema                 | Voraussetzungen         |
| --------------------- | ----------------------- |
| Schwierigkeit         | :star: :star: :star:    |
| Hardware              | PC (Windows/Mac/Linux)  |
| Software              | Browser, Internetzugang, Processing IDE        |
| CatcherTutorial Level | 0,1                       |
| Programmierung        | Funktionen, Funktionsparameter, Variablen,  Events (mousePressed), Bedingte Anweisung und Verzweigung (if, else))|

### Aufgabe 1
Es existiert bereits ein *Catcher* um Objekte zu fangen. Etwas zu fangen gibt es allerding noch nicht.
1. Zeichne in die Mitte des Fensters ein weiteres Objekt mit Hilfe der PShape-Klasse. Du weißt nicht was die PShape-Klasse ist? Schaue auf der [Processing-Webseite](https://processing.org/) unter Tutorials nach PShape.
2. Lasse dein Objekt von oben nach unten durch fallen. Schaue dir dafür die [translate](https://processing.org/reference/translate_.html)-Methode an, um 2D-Objekte zu transformieren.

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level2/CatcherTutorialLevel2A1/CatcherTutorialLevel2A1.pde)

### Aufgabe 2
1. Ein einzelnes Objekt ist nicht genug! Erstelle 6 weitere.
2. Um auf die Objekte besser zugreifen zu können, kannst du diese in einer [Liste](https://processing.org/reference/ArrayList.html) organisiert. Ok, solltest du auch!
3. Setze jedes Objekt auf eine andere Startposition
4. Setze die x-Startposition zufällig
5. Otional: Hast du eine Idee wie du verhindern kannst, dass Objekte zufällig so gesetzt werden, dass diese nur halb auf dem Fenster sind (zu nah am Rand)?

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level2/CatcherTutorialLevel2A2/CatcherTutorialLevel2A2.pde)

### Aufgabe 3
1. Alle Objekte starten im Moment zur gleichen Zeit. Lasse die Objekte im Abstand von einer Sekunde herunterfallen.
