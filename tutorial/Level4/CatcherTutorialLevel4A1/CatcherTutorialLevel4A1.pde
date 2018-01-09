float playerPosX;
float gameHeight;
float gameWidth;
Game game;

void setup() {
  //size(400, 640);
  fullScreen(P2D);
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
