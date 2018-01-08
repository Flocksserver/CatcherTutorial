
float playerPosX;
PShape coin;

void setup() {
  size(400,640);
  ellipseMode(CENTER);
  coin = createShape(ELLIPSE, 0, 0, 10, 10);
  coin.setFill(color(255, 255, 0));
}

void draw() {
  background(50);
  fill(255);
  if(mousePressed){
    playerPosX = mouseX;
  }
  rect(playerPosX, 500, 50, 10);
  shape(coin, 200, -10);
  coin.translate(0, 2);
}