class Coin {
  PShape c;
  float xPos;
  float yPos;
  float coinWidth;
  float coinHeigth;

  public Coin() {
    coinWidth = gameHeight/50;
    coinHeigth = gameHeight/50;
    xPos = random(coinWidth, (gameWidth-1)-coinWidth);
    yPos = -coinHeigth;
    ellipseMode(CENTER);
    c = createShape(ELLIPSE, 0, 0, coinWidth, coinHeigth);
    c.setFill(color(255, 255, 0));
  }

  void display( ) {
    shape(c, xPos, -coinWidth);
    c.translate(0, 2);
    yPos += 2;
  }
}