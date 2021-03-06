# Zusammenfassung
In diesem Level lernst du eine neue Möglichkeit kennen Formen zu zeichnen, um mehr Kontrolle über diese Objekte zu haben. Weiter werden wir kleine Kreise animiert von oben nach unten herab fallen lassen. Eine Datenstruktur ArrayList und die for-Schleife werden eingeführt sowie das zeitlich bedingte Ausführen einer Funktion. Außerdem schreibst du eine eigene Funktion!

| Thema                 | Voraussetzungen         |
| --------------------- | ----------------------- |
| Schwierigkeit         | :star: :star: :star:    |
| Hardware              | PC (Windows/Mac/Linux)  |
| Software              | Browser, Internetzugang, Processing IDE        |
| CatcherTutorial Level | [0](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level0/Processing_Tutorial_Level_%230-CatcherGameTutorial.md),[1](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level1/Processing_Tutorial_Level_%231-CatcherGameTutorial.md)                       |
| Programmierung        | Aufruf von Funktionen, Variablen,  Events (mousePressed), Bedingte Anweisung und Verzweigung (if, else))|

## Programmierung
Bisher nutzt du nur die beiden Standardfunktionen von Processing (setup und draw). Das wird sich in diesem Level ändern. Funktionen sind Programmteile, die aufgerufen werden können (einmal oder häufiger). Sie können Werte zurück geben nachdem der Programmcode innerhalb der Funktion durchgelaufen ist - müssen aber nicht. Das Schlüsselwort **void** gibt an, dass diese Funktion kein Rückgabewert hat. Wenn du etwas zurükgeben möchtest, musst du dies statt dem *void* angeben. Zum Beispiel **boolean** (*int, float, String, PShape, ...* sind genauso möglich).
```processing
void draw() { // Kein Rückgabewert
}
// Funktion braucht ein return. Muss eine boolsche Variable oder Ausdruck sein.
boolean isOnePlusOneEqualsTwo(){
  return 1 + 1 == 2;
}
```
for-Schleifen führen den Programmcode in ihrem Bauch (zwischen den geschweiften Klammern) so häufig aus, bis eine Bedingung erfüllt ist. Beispiel: i wird auf 0 gesetzt (*int i = 0* nur einmal am Anfang). Solange i kleiner als 3 (*i < 3*)  ist, wird der Programmcode ausgeführt. Nach jedem Durchlauf des Programmcodes, wird i um eins erhöht (*i++*)
```processing
// 3 Schleifendurchläufe
// i = 0
// i = 1
// i = 2
// i = 3? - Nein! denn i ist nicht mehr kleiner 3
for(int i = 0; i < 3; i++){

  }
}
```
### Aufgabe 1
Es existiert bereits ein *Catcher* um Objekte zu fangen. Etwas zu fangen gibt es allerding noch nicht.
1. Zeichne in die Mitte des Fensters ein weiteres Objekt mit Hilfe der PShape-Klasse. Du weißt nicht was die PShape-Klasse ist? Schaue auf der [Processing-Webseite](https://processing.org/) unter Tutorials nach PShape.
2. Lasse dein Objekt von oben nach unten durch fallen. Schaue dir dafür die [translate](https://processing.org/reference/translate_.html)-Methode an, um 2D-Objekte zu transformieren.

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level2/CatcherTutorialLevel2A1/CatcherTutorialLevel2A1.pde)

### Aufgabe 2
1. Ein einzelnes Objekt ist nicht genug! Erstelle 6 weitere.
2. Um auf die Objekte besser zugreifen zu können, kannst du diese in einer [Liste](https://processing.org/reference/ArrayList.html) organisiert. Ok, nicht nur kannst - solltest du auch!
3. Setze jedes Objekt auf eine andere Startposition
4. Setze die X-Startposition **zufällig** und die Y-Position oben außerhalb des Fensters
5. Optional: Objekte werden zufällig entlang der X-Achse gesetzt. Das bedeutet, dass diese auch soweit am rechten oder linken Rand platziert werden, dass die Objekte teils abgeschnitten sind. Hast du eine Idee wie du das verhindern kannst?

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level2/CatcherTutorialLevel2A2/CatcherTutorialLevel2A2.pde)

### Aufgabe 3
1. Alle Objekte starten im Moment zur gleichen Zeit. Lasse die Objekte im Abstand von einer Sekunde herunterfallen. Erstelle dafür eine Funktion.

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level2/CatcherTutorialLevel2A3/CatcherTutorialLevel2A3.pde)

# Nächstes Level
Hier geht es weiter zum [nächsten Level :arrow_right:](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level3/Processing_Tutorial_Level_%233-CatcherGameTutorial.md)
