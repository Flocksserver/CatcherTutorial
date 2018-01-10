import java.util.Stack;

class Game {

  ArrayList<Coin> coinListInGame = new ArrayList<Coin>();
  Stack<Coin> waitingStack = new Stack();

  Catcher catcher;

  int interval = 1000;
  int savedTime = millis();

  public Game () {
    catcher = new Catcher();
    for (int i = 0; i < 6; i++) {
      Coin coin = new Coin();
      waitingStack.push(coin);
    }
  }


  void execute() {
    catcher.draw();
    if (isTimeForNextOne() && !waitingStack.isEmpty()) {
      Coin newCoin = waitingStack.pop();
      coinListInGame.add(newCoin);
    }

    for (int i = 0; i < coinListInGame.size(); i++) {
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
}
