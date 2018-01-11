# Zusammenfassung
In diesem Level lernst du, wie man Klassen aus Bibliotheken einbindet und eigene Klassen erstellt. Du erfährst außerdem was Instanzen von Klassen sind und wir strukturieren die Anwendung etwas um.

| Thema                 | Voraussetzungen         |
| --------------------- | ----------------------- |
| Schwierigkeit         | :star: :star: :star:    |
| Hardware              | PC (Windows/Mac/Linux)  |
| Software              | Browser, Internetzugang, Processing IDE        |
| CatcherTutorial Level | [0](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level0/Processing_Tutorial_Level_%230-CatcherGameTutorial.md),[1](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level1/Processing_Tutorial_Level_%231-CatcherGameTutorial.md),[2](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level2/Processing_Tutorial_Level_%232-CatcherGameTutorial.md)                        |
| Programmierung        | Aufruf von Funktionen, Variablen,  Events (mousePressed), Bedingte Anweisung und Verzweigung (if, else)), Funktionen, for-Schleife|

## Programmierung
Bisher hast du nur Klassen aus der Processing Bibliothek verwendet. Bevor wir uns eine Erweiterung anschauen... Was sind eigentlich Klassen? Klassen sind Bauanleitungen für Objekte. Objekte wiederum sind konkrete Instanzen (lebendige Kopien der Klasse) im Arbeitsspeicher deines Computers. Auf ihnen kannst du Funktionen aufrufen und du kannst sie in dem Fenster anzeigen lassen. Immer wenn du ein Objekt erzeugst geschieht dies auf Grundlage einer Klasse.
<div>
<img src="https://github.com/Flocksserver/CatcherTutorial/raw/master/tutorial/Level3/classobject.png" width="400">
</div>
<br>

Das kann zum einen implizit geschehen. Beispielsweise beim Aufruf von: *createShape(ELLIPSE, 0, 0, 10, 10);* Dies ist eine Funktion, die ein *PShape* Objekt [erstellt und zurück gibt](http://processing.github.io/processing-javadocs/core/processing/core/PApplet.html#createShape--). Zum anderen kannst du Objekte explizit durch das **new**-Schlüsselwort erzeugen. Beispielsweise beim Erzeugen einer neuen Liste.
```processing
PShape shape = createShape(ELLIPSE, 0, 0, 10, 10);
ArrayList<Float> list = new ArrayList<Float>();
```
Da Processing auf der Programmiersprache Java basiert, kannst du auch Klassen aus der Standard Java Bibliothek verwenden, um Objekte zu erzeugen. Hierfür musst du die konkrete Klasse importieren. Import Befehle müssen immer ganz am Anfang deiner Datei stehen.
```processing
import java.util.Stack;
```
Neben der Möglichkeit bereits bestehende Klassen zu verwenden, kannst du auch eigene Klassen erstellen. Diese sollten am besten in eine separaten Datei ausgelagert werden. In der Klasse können Variablen und Funktionen wie bereits gelernt verwendet werden.
```processing
class Catcher {
  int a = 4;
  void doSomeWork(){

  }
}
```
Solch eine Klasse kannst du instanziieren (also ein Objekt davon erzeugen) und dann auf die Attribute (Variablen) und Funktionen zugreifen.
```processing
Catcher catcher = new Catcher();
void draw(){
  int b = catcher.a; // b wird auf 4 gesetzt
  catcher.doSomeWork(); // Aufruf der Catcher Methode doSomeWork()
}
```
Klassen besitzen wie Processing eine Möglichkeit bestimmten Programmcode nur einmal beim ersten Erstellen auszuführen. Diese Möglichkeit heißt Konstruktor. Das ist mit der setup-Methode vergleichbar.
```processing
class Catcher {
  int a = 4;
  public Catcher(){ // Wird einmalig beim Instanziieren ausgeführt

  }
  void doSomeWork(){
  }
}
```
### Aufgabe 1
1. Informiere dich was ein Stack ist und wie der Java Stack aus [java.util.Stack](https://docs.oracle.com/javase/7/docs/api/java/util/Stack.html) funktioniert.
2. Baue deine Anwendung wie folgt um: Du hast einen Stack mit allen Objekten, die zukünftig herunterfallen sollen. Du hast eine Liste, in der alle Objekte sind, die im Fallen sind und angezeigt werden.

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level3/CatcherTutorialLevel3A1/CatcherTutorialLevel3A1.pde)

### Aufgabe 2
1. Erstelle eine neue Klasse für deine herunterfallenden Objekte. Hierzu gehst du auf den Pfeil neben dem Tab in der Processing IDE. Dann wählst du *Neuer Tab* und vergibst der Datei einen Namen (optimal ist der selbe Name wie die Klasse heißen soll).
<div>
<img src="https://github.com/Flocksserver/CatcherTutorial/raw/master/tutorial/Level3/newTab.png" width="400">
</div>
<br>

2. Füge alle für diese Klasse Funktionen und Attribute zu. Dadurch kannst du Funktionalität kapseln. Die Einstiegsdatei wird dadurch schlanker und übersichtlicher. Derzeit muss sie nur noch die Objekte instanziieren, die Liste/den Stack verwalten und eine Methode auf den Objekten zum Darstellen aufrufen.

[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level3/CatcherTutorialLevel3A2/)

### Aufgabe 3
1. Um die Einstiegsdatei noch übersichtlicher zu gestalten wiederhole die Aufgabe 2 mit dem *Catcher*. Hierzu bietet es sich an, innerhalb der Catcher-Klasse auch die PShape-Klasse zu nutzen.
2. Wir programmieren ein Spiel. Da ist es angebracht, spiel-spezifische Logik in einer entsprechenden Klasse zu organisieren. Somit reduzieren wir die Einstiegsdatei noch weiter. Erstelle eine *Game*-Klasse und verschiebe die restliche Logik aus der Einstiegsdatei. Nun sollte die Einstiegsdatei neben dem Instanziieren der Game-Klasse und ein startender Methode-Aufruf auf dessen Objekt nur noch für das Aufnehmen des *mousePressed*-Events zuständig sein.

```processing
float playerPosX;
Game game;

void setup() {
  size(400, 640);
  game = new Game();
}

void draw() {
  background(50);
  if (mousePressed) {
    playerPosX = mouseX;
  }
  game.execute();
}
```
[Mögliche Lösung](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level3/CatcherTutorialLevel3A3/)

# Nächstes Level
Hier geht es weiter zum [nächsten Level :arrow_right:](https://github.com/Flocksserver/CatcherTutorial/blob/master/tutorial/Level4/Processing_Tutorial_Level_%234-CatcherGameTutorial.md)
