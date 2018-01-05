/*
Class managing the game logic and the current game state
 by Flocksserver http://flocksserver.de
 */
class Game {
  int lives;
  int score;
  float difficulty;

  //background
  color darkGrey = color(45, 50, 50);

  Catcher catcher;
  CoinShower shower;
  StatsPrinter statsPrinter;

  //Array of all current coins to draw
  ArrayList<Coin> ingameCoins = new ArrayList<Coin>();

  void init() {
    lives = 5;
    score = 0;
    //Velocity the coins falling down, depends on display height.
    difficulty = gameHeight/900;

    catcher = new Catcher();
    shower = new CoinShower();
    statsPrinter = new StatsPrinter();
  }

  boolean gameOver() {
    return lives <= 0;
  }

  void start() {
    background(darkGrey);
    if (!gameOver()) {
      catcher.draw();
      shower.start(ingameCoins, difficulty);
      checkIngameCoins();
    }
    statsPrinter.print(lives, score);
    setDifficulty();
  }

  /*
    Check if a coin touchs the catcher -> increase score by 1
    Check if a coin has fallen out of the screen -> decrease live by 1
   */
  void checkIngameCoins( ) {
    for (int i = 0; i < ingameCoins.size()-1; i++) {
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
        coin.display();
      }
    }
  }

  /*
    Check if coin touches the catcher
  */
  boolean isInCatcherZone(Coin coin) {
    return isInYZone(coin) && isInXZone(coin);
  }

  /*
    Check if coin is out of screen.
    If coin y position is greater then the display width 
    the coin has fallen out of the screen
   */
  boolean isInOutZone(Coin coin) {
    return coin.yPos >= gameHeight;
  }
  
  /*
    Check the coins y position in comparision to the catchers y position
  */
  boolean isInYZone(Coin coin) {
    boolean coinLowerBound =
      coin.yPos + coin.coinHeigth/2 >= catcher.yPos - catcher.catcherHeight/2 &&
      coin.yPos + coin.coinHeigth/2 <= catcher.yPos + catcher.catcherHeight/2;
    boolean coinUpperBound =
      coin.yPos - coin.coinHeigth/2 >= catcher.yPos - catcher.catcherHeight/2 &&
      coin.yPos - coin.coinHeigth/2 <= catcher.yPos + catcher.catcherHeight/2;
    return coinLowerBound || coinUpperBound;
  }

  /*
    Check the coins x position in comparision to the catchers x position
  */
  boolean isInXZone(Coin coin) {
    boolean coinRightBound =
      coin.xPos + coin.coinWidth/2 >= catcher.xPos - catcher.catcherWidth/2 &&
      coin.xPos + coin.coinWidth/2 <= catcher.xPos + catcher.catcherWidth/2;
    boolean coinLeftBound =
      coin.xPos - coin.coinWidth/2 >= catcher.xPos - catcher.catcherWidth/2 &&
      coin.xPos - coin.coinWidth/2 <= catcher.xPos + catcher.catcherWidth/2;
    return coinRightBound || coinLeftBound;
  }

  /*
    Increase difficulty -> velocity if the score level is reached
  */
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