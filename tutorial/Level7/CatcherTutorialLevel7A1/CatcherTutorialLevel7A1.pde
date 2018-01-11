final int stateWaitToStart = 0;
final int stateGameRunning = 1;
final int stateGameEnd = 2;
int state = stateWaitToStart;

Startscreen startscreen;
Game game;

PFont normalFont;

float playerPosX;
float playerPosY;
float gameHeight;
float gameWidth;
float textWidth;
float scale;



void setup() {
  //size(400, 640);
  fullScreen(P2D);
  //On Desktop
  scale = 1 + width/1000;
  //On Android
  //scale = displayDensity;
  textWidth = 22;
  normalFont = createFont("SansSerif", textWidth * scale);
  gameWidth = width;
  gameHeight = height;
  startscreen = new Startscreen();
  game = new Game();
}

void draw() {
  background(50);
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
}