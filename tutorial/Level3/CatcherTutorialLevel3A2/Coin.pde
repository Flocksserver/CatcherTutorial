class Coin {
  PShape c;
  float xPos;

  public Coin() {
    ellipseMode(CENTER);
    c = createShape(ELLIPSE, 0, 0, 10, 10);
    c.setFill(color(255, 255, 0));
    xPos = random(10,400-10);
  }

  void display( ) {
    shape(c, xPos, -10);
    c.translate(0, 2);
  }

}