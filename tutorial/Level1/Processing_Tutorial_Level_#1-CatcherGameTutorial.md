# Zusammenfassung
In diesem Level lernst du die beiden Hauptfunkionen in Processing kennen. In diesem Zuge schauen wir uns das Koordinatensystem eines Fensters an. Du wirst außerdem nach diesem Level Formen darstellen können und einige Programmiergrundlagen kennen gelernt haben.

| Thema                 | Voraussetzungen         |
| --------------------- | ----------------------- |
| Schwierigkeit         | :star: :star:           |
| Hardware              | PC (Windows/Mac/Linux)  |
| Software              | Browser, Internetzugang, Processing IDE        |
| CatcherTutorial Level | [0](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level0/Processing_Tutorial_Level_%230-CatcherGameTutorial.md)                       |
| Programmierung        | Aufruf von Funktionen |

## Vorbereitung
- Wir gehen nicht auf alle Programmiergrundlagen im Detail ein. Wenn du noch nie etwas programmiert hast, schaue dir die [Hello Processing Videos](http://hello.processing.org/) an. Ich würde aber auch allen Processing Neulingen diese Videoreihe empfehlen. So kannst du dir die Suche für einige processing-spezifischen Besonderheiten sparen.
- Achte darauf, dass dein Modus auf *Java* gestellt ist.
- Speicher den derzeit leeren Sketch unter einem Namen deiner Wahl ab
- Öffne die Einstellungen (Datei -> Einstellungen) der Processing IDE. Aktiviere die Checkbox *Codevervollständigung Ctrl-Leerzeichen*. Wenn du beim Programmieren Variablennamen, Funktionsamen oder Parameter beginnst zu Tippen, kannst du dir von der Entwicklungsumgebung mit *Ctrl-Leerzeichen* Vorschläge zur Vervollständigung geben lassen.
- Öffne die [Projektwebseite](https://processing.org/) zu Processing. [Beispiele](https://processing.org/examples/) und [Referenzen](https://processing.org/reference/) solltest du hier finden und auch nutzen!

## Das Spiel
Ich möchte mit dir zusammen ein Spiel programmieren. Wir nennen es Catcher. Ziel soll es sein, herunterfallende Objekte einzusammeln und somit einen möglichst hohen Score zu erreichen. Verpasste Objekte ziehen Leben ab. Das Spiel muss gestartet und nach verlorener Runde neu gestartet werden können.
<div>
<img src="https://github.com/Flocksserver/CatcherTutorial/raw/master/tutorial/Level1/skizze.png" width="400">
</div>

## Programmierung
In Processing existieren zwei wichtige Hauptfunktionen. Die setup-Methode wird zu Beginn des Programmstarts einmal ausgeführt. Die draw-Methode wird in einer Schleife dauerhaft ausgeführt.
```processing
void setup() {

}

void draw() {

}
```
Das Fenster, das du erstellst, hat eine Breite und Höhe in Pixel. Jeder Pixel kann durch ein **x** und ein **y** in einem Koordinatensystem exakt bestimmt werden. Dabei ist zu beachten, dass in der Computergrafik der Punkt **x=0** und **y=0** oben links definiert ist. Dies ist im ersten Moment irreführend, da das bei dir wahrscheinlich bisher bekannte System links unten beginnt. Das musst du die gesamte Zeit beachten!
<div>
<img src="https://github.com/Flocksserver/CatcherTutorial/raw/master/tutorial/Level1/coordinatesystem.png" width="400">
</div>
<br>

**if/else** ist eine bedingte Anweisung und Verzweigung. Der Ausdruck im *if* wird ausgewertet. Wenn dieser wahr (true) ist, wird der Programmcode *doA()* innerhalb der geschweiften Klammern ausgeführt - sonst nicht. Mit *else* hast du die Möglichkeit eine alternative Ausführung anzugeben. Dadurch wird immer das eine *doB()* **oder** das andere *doC()* ausgeführt.
```processing
if(isThisTrue){
  doA();
}

if(isThisAlsoTrue){
  doB();
}else{
  doC();
}
```
Variablen sind Container, die einen Datentyp haben. Dies kann eine Zahl, eine Zeichenkette, ein boolesche Ausdruck oder ein beliebiges Objekt sein.
```processing
int a = 1; // Ganze Zahlen. a hat den Wert 1
float b = 2.5; // Fließkommazahlen. b hat den Wert 2,5
String c = "Catcher"; // Zeichenkette. c hat den Wert Catcher
boolean d = true; // Boolesche Ausdruck (true oder false). d hat den Wert true
PShape catcher; // Leeres Objekt PShape (noch nichts mit = zugewiesen) namens catcher.
```
Du kannst auf Variablen von überall zugreifen, wenn du sie *global* definiert hast. Das bedeutet außerhalb einer Funktion. Lokale Variablen innerhalb einer Funktion können auch nur dort verwendet werden.
```processing
float a = 3.4; // global
void setup() {
  float b = 1.3; //lokal
  a // kann ich nutzen
  b // kann ich nutzen
}
void draw() {
  a // kann ich nutzen
  b // kenne ich nicht - kann ich nicht nutzen
}

```
### Aufgabe 1
1. Erstelle ein Fenster in folgender Größe: Breite 400 Pixel und Höhe 640 Pixel
2. Setze den Hintergrund auf eine Farbe
3. Zeichne den *Catcher* (ein Rechteck) im unteren Bereich des Fensters
4. Starte dein Programm mit dem Play-Button oben links in der Entwicklungsumgebung

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level1/CatcherTutorialLevel1A1/CatcherTutorialLevel1A1.pde)

### Aufgabe 2
1. Der *Catcher* soll sich entlang der x-Achse nach rechts und links verschieben lassen (mit der Maus).
2. Der *Catcher* soll nur verschoben werden, wenn die Maus gedrückt ist.

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level1/CatcherTutorialLevel1A2/CatcherTutorialLevel1A2.pde)

# Nächstes Level
Hier geht es weiter zum [nächsten Level :arrow_right:](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level2/Processing_Tutorial_Level_%232-CatcherGameTutorial.md)
