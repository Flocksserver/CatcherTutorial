/*
  Main entry CatcherTutorial application.
 by Flocksserver http://flocksserver.de
 */

final int stateWaitToStart = 0;
final int stateGameRunning = 1;
final int stateWaitToRestart = 2;
final int stateHighscoreRunning = 3;
final int stateGameRestart = 4;
int state = stateWaitToStart;

Startscreen startscreen;
Game game;
Highscore highscore;

PFont normalFont;
PFont bigFont;

float playerPosX;
float playerPosY;
float gameHeight;
float gameWidth;
float textWidth;
float textWidthBig;
float scale;

//background
color darkGrey = color(45, 50, 50);
color yellow = color(255, 255, 0);

void setup() {
  fullScreen(P2D);
  gameWidth = width;
  gameHeight = height;
  //On Desktop
  scale = 1 + gameWidth/1000;
  //On Android
  //scale = displayDensity;
  textWidth = 22;
  textWidthBig = 100;
  normalFont = createFont("SansSerif", textWidth * scale);
  bigFont = createFont("SansSerif", textWidthBig * scale);
  startscreen = new Startscreen();
  game = new Game();
  highscore = new Highscore();
}

void draw() {
  background(darkGrey);
  if (mousePressed) {
    playerPosX = mouseX;
    playerPosY = mouseY;
  }
  if (state == stateWaitToStart) {
    startscreen.execute();
  }
  if (state == stateGameRunning) {
    game.execute();
  }
  if (state == stateWaitToRestart) {
    playerPosX = 0;
    playerPosY = 0;
    state = stateHighscoreRunning;
  }
  if (state == stateHighscoreRunning) {
    highscore.execute(game.score);
  }
  if (state == stateGameRestart) {
    game.init();
    state = stateGameRunning;
  }
}