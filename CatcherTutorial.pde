/*
  Main entry CatcherTutorial application.
 by Flocksserver http://flocksserver.de
 */

Game game;
PFont font;
float playerPosX;
float playerPosY;
float gameHeight;
float gameWidth;
float textWidth;
float scale;

void setup() {
  fullScreen(P2D);
  scale = 1;
  //On Android
  //scale = displayDensity;
  font = createFont("SansSerif", 22* scale);
  textWidth = 22;
  textFont(font, textWidth * scale);
  gameWidth = width;
  gameHeight = height;
  playerPosX = gameWidth/2;
  game = new Game();
  game.init();
}

void draw() {
  if (mousePressed) {
    playerPosX = mouseX;
    playerPosY = mouseY;
  }
  game.start();
}