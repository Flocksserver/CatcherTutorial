class Catcher {
  PShape c;
  float yPos;
  float xPos;

  public Catcher( ) {
    rectMode(CENTER);
    fill(255);
    c = createShape(RECT, 0, 0, 50, 10);
    yPos = 500;
  }

  void draw() {
    xPos = playerPosX;
    shape(c, xPos, yPos);
  }
}