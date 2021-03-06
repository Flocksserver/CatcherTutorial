import java.util.Stack;

float playerPosX;
ArrayList<PShape> coinListInGame = new ArrayList<PShape>();
Stack<PShape> waitingStack = new Stack();
ArrayList<Float> coinXPos = new ArrayList<Float>();

int interval = 1000;
int savedTime = millis();

void setup() {
  size(400,640);
  ellipseMode(CENTER);
  for(int i = 0; i < 6; i++){
    PShape coin = createShape(ELLIPSE, 0, 0, 10, 10);
    coin.setFill(color(255, 255, 0));
    waitingStack.push(coin);
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
  
  if(isTimeForNextOne() && !waitingStack.isEmpty()){
      PShape newCoin = waitingStack.pop();
      coinListInGame.add(newCoin);
  }
  
  for(int i = 0; i < coinListInGame.size() ; i++){
    PShape currentCoin = coinListInGame.get(i);
    shape(currentCoin, coinXPos.get(i), -10);
    currentCoin.translate(0, 2);
  }

}

boolean isTimeForNextOne( ) {
    int currentTime = millis();
    if (savedTime + interval < currentTime) {
      savedTime = currentTime;
      return true;
    }
    return false;
  }