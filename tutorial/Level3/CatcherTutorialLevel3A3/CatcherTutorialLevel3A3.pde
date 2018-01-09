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