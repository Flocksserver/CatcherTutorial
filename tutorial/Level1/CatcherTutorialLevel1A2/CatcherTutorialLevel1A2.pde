
float playerPosX;

void setup() {
  size(400,640);
}

void draw() {
  background(50);
  fill(255);
  if(mousePressed){
    playerPosX = mouseX;
  }
  rect(playerPosX, 500, 50, 10);
}