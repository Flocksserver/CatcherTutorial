Game game;

PFont normalFont;

float playerPosX;
float gameHeight;
float gameWidth;
float textWidth;

void setup() {
  size(400, 640);
  //fullScreen(P2D);
  textWidth = 22;
  normalFont = createFont("SansSerif", textWidth);
  gameWidth = width;
  gameHeight = height;
  game = new Game();
}

void draw() {
  background(50);
  if (mousePressed) {
    playerPosX = mouseX;
  }
  game.execute();
}