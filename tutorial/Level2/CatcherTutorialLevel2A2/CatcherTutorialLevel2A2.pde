
float playerPosX;
ArrayList<PShape> coinList = new ArrayList<PShape>();
ArrayList<Float> coinXPos = new ArrayList<Float>();

void setup() {
  size(400,640);
  ellipseMode(CENTER);
  for(int i = 0; i < 6; i++){
    PShape coin = createShape(ELLIPSE, 0, 0, 10, 10);
    coin.setFill(color(255, 255, 0));
    coinList.add(coin);
    coinXPos.add(i,random(10,400-10));
  }
}

void draw() {
  background(50);
  fill(255);
  if(mousePressed){
    playerPosX = mouseX;
  }
  rect(playerPosX, 500, 50, 10);
  for(int i = 0; i < coinList.size() ; i++){
    PShape currentCoin = coinList.get(i);
    shape(currentCoin, coinXPos.get(i), -10);
    currentCoin.translate(0, 2);
  }

}