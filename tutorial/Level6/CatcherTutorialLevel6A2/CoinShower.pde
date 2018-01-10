import java.util.Stack;

class CoinShower {

  Stack<Coin> waitingStack = new Stack();
  int interval = 1000;
  int savedTime = millis();

  void start(ArrayList<Coin> ingameCoins) {
    if (isTimeForNextOne()) {
      if (waitingStack.empty()) {
        waitingStack.push(new Coin());
      }
      Coin coin = waitingStack.pop();
      ingameCoins.add(coin);
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