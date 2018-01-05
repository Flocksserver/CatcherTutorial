/*
Class representing the coins the player tries to catch
 by Flocksserver http://flocksserver.de
 */
class Coin {
  PShape c;
  float xPos;
  float yPos;
  float coinWidth;
  float coinHeigth;
  float velocity;
  color yellow = color(255, 255, 0);

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
    //Should start offscreen 1 times height
    shape(c, xPos, -coinHeigth);
    c.translate(0, velocity);
    yPos += velocity;
  }

}