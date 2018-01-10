
class Game {
  int lives;
  int score;
  ArrayList<Coin> coinListInGame = new ArrayList<Coin>();

  Catcher catcher;
  CoinShower shower;

  int interval = 1000;
  int savedTime = millis();

  public Game () {
    lives = 5;
    score = 0;
    catcher = new Catcher();
    shower = new CoinShower();
  }


  void execute() {
    catcher.draw();
    shower.start(coinListInGame);
    checkIngameCoins();
    println("Score: " + score);
  }

  void checkIngameCoins( ) {
    for (int i = 0; i < coinListInGame.size(); i++) {
      Coin coin = coinListInGame.get(i);
      boolean isCatched = isInCatcherZone(coin);
      boolean isOut = isInOutZone(coin);
      if (isCatched) score++;
      if (isOut) lives--;

      if (isCatched || isOut) {
        coin.init();
        shower.waitingStack.push(coin);
        coinListInGame.remove(coin);
      } else {
        coin.display();
      }
    }
  }

  boolean isInOutZone(Coin coin) {
    return coin.yPos + coin.coinHeigth/2 >= gameHeight-1;
  }

  boolean isInCatcherZone(Coin coin) {
    return isInYZone(coin) && isInXZone(coin);
  }

  boolean isInYZone(Coin coin) {
    boolean coinLowerBound =
      coin.yPos + coin.coinHeigth/2 >= catcher.yPos - catcher.catcherHeight/2 &&
      coin.yPos + coin.coinHeigth/2 <= catcher.yPos + catcher.catcherHeight/2;
    boolean coinUpperBound =
      coin.yPos - coin.coinHeigth/2 >= catcher.yPos - catcher.catcherHeight/2 &&
      coin.yPos - coin.coinHeigth/2 <= catcher.yPos + catcher.catcherHeight/2;
    return coinLowerBound || coinUpperBound;
  }

  boolean isInXZone(Coin coin) {
    boolean coinRightBound =
      coin.xPos + coin.coinWidth/2 >= catcher.xPos - catcher.catcherWidth/2 &&
      coin.xPos + coin.coinWidth/2 <= catcher.xPos + catcher.catcherWidth/2;
    boolean coinLeftBound =
      coin.xPos - coin.coinWidth/2 >= catcher.xPos - catcher.catcherWidth/2 &&
      coin.xPos - coin.coinWidth/2 <= catcher.xPos + catcher.catcherWidth/2;
    return coinRightBound || coinLeftBound;
  }
}