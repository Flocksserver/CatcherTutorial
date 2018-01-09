class Catcher {
  PShape c;
  float yPos;
  float xPos;
  float catcherWidth;
  float catcherHeight;
  
  public Catcher( ) {
    catcherWidth = gameWidth/8;
    catcherHeight = gameHeight/100;
    rectMode(CENTER);
    fill(255);
    c = createShape(RECT, 0, 0, catcherWidth, catcherHeight);
    yPos = gameHeight-(gameHeight/8);
    xPos = gameWidth/2;
  }

  void draw() {
    xPos = playerPosX;
    shape(c, xPos, yPos);
  }
}