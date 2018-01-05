//Use stack interface from java standard library
import java.util.Stack;
/*
Helper Class managing the falling coins
 by Flocksserver http://flocksserver.de
 */
class CoinShower {

  Stack<Coin> waitingStack = new Stack();
  //Each second one coin
  int interval = 1000;
  int savedTime = millis();

  /*
    Add coin from stack to coinarray to display. 
    If no coin on stack anymore, create new coin
   */
  void start(ArrayList<Coin> ingameCoins, float difficulty) {
    if (isTimeForNextOne()) {
      if (waitingStack.empty()) {
        waitingStack.push(new Coin());
      }
      Coin coin = waitingStack.pop();
      coin.velocity = difficulty;
      ingameCoins.add(coin);
    }
  }
  /*
    Check intervall seconds between last coin drop and now
   */
  boolean isTimeForNextOne( ) {
    int currentTime = millis();
    if (savedTime + interval < currentTime) {
      savedTime = currentTime;
      return true;
    }
    return false;
  }
}