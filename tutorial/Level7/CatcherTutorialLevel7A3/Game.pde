
class Game {
  int lives;
  int score;
  float difficulty;

  Catcher catcher;
  CoinShower shower;
  StatsPrinter statsPrinter;

  ArrayList<Coin> ingameCoins;

  int interval = 1000;
  int savedTime = millis();

  public Game () {
    init();
  }

  void init() {
    lives = 5;
    score = 0;
    difficulty = gameHeight/900;

    ingameCoins = new ArrayList<Coin>();
    catcher = new Catcher();
    shower = new CoinShower();
    statsPrinter = new StatsPrinter();
  }

  boolean gameOver() {
    return lives <= 0;
  }

  void execute() {
    if (!gameOver()) {
      catcher.draw();
      shower.start(ingameCoins);
      checkIngameCoins();
      setDifficulty();
      statsPrinter.print(lives, score);
    } else {
      state = stateWaitToRestart;
    }
  }

  void checkIngameCoins( ) {
    for (int i = 0; i < ingameCoins.size(); i++) {
      Coin coin = ingameCoins.get(i);
      boolean isCatched = isInCatcherZone(coin);
      boolean isOut = isInOutZone(coin);
      if (isCatched) score++;
      if (isOut) lives--;

      if (isCatched || isOut) {
        coin.init();
        shower.waitingStack.push(coin);
        ingameCoins.remove(coin);
      } else {
        coin.velocity = difficulty;
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

  void setDifficulty( ) {
    if (score > 20) {
      difficulty = (gameHeight/900) * 1.3;
    }
    if (score > 50) {
      difficulty = (gameHeight/900) * 1.6;
    }
    if (score > 100) {
      difficulty = (gameHeight/900) * 2;
    }
  }
}