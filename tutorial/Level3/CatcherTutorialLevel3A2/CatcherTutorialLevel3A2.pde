import java.util.Stack;

float playerPosX;
ArrayList<Coin> coinListInGame = new ArrayList<Coin>();
Stack<Coin> waitingStack = new Stack();

int interval = 1000;
int savedTime = millis();

void setup() {
  size(400,640);
  for(int i = 0; i < 6; i++){
    Coin coin = new Coin();
    waitingStack.push(coin);
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
      Coin newCoin = waitingStack.pop();
      coinListInGame.add(newCoin);
  }

  for(int i = 0; i < coinListInGame.size() ; i++){
    Coin currentCoin = coinListInGame.get(i);
    currentCoin.display();
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
