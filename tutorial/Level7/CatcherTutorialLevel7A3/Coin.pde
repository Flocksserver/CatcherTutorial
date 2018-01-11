class Coin {
  PShape c;
  float xPos;
  float yPos;
  float coinWidth;
  float coinHeigth;
  float velocity;

  public Coin() {
    ellipseMode(CENTER);
    init();
  }

  void init( ) {
    coinWidth = gameHeight/50;
    coinHeigth = gameHeight/50;
    xPos = random(coinWidth, (gameWidth-1)-coinWidth);
    yPos = -coinHeigth;
    c = createShape(ELLIPSE, 0, 0, coinWidth, coinHeigth);
    c.setFill(yellow);
  }

  void display( ) {
    shape(c, xPos, -coinWidth);
    c.translate(0, velocity);
    yPos += velocity;
  }
}