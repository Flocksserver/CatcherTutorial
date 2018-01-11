class Highscore {

  PShape restartButton;
  float restartButtonWidth;
  float restartButtonHeight;
  String restart;

  float buttonXLeft;
  float buttonXRight;
  float buttonYTop;
  float buttonYBottom;

  public Highscore( ) {
    rectMode(CENTER);
    init();
  }

  void init( ) {
    restart = "RESTART";
    restartButtonWidth = textWidth(restart)*3;
    restartButtonHeight = textAscent()*3.5;
    restartButton = createShape(RECT, 0, 0, restartButtonWidth, restartButtonHeight, 18);
    restartButton.setFill(color(255, 255, 0));
    buttonXLeft = (gameWidth/2)-(restartButtonWidth/2);
    buttonXRight = (gameWidth/2)+(restartButtonWidth/2);
    buttonYTop = (gameHeight-(gameHeight/5))-(restartButtonHeight/2);
    buttonYBottom = (gameHeight-(gameHeight/5))+(restartButtonHeight/2);
  }


  void execute(int score) {
    if (isRestartButtonClicked()) {
      state = stateGameRestart;
    } else {
      shape(restartButton, gameWidth/2, gameHeight-(gameHeight/5));
      textAlign(CENTER);
      textFont(normalFont);
      fill(50);
      text(restart, gameWidth/2, gameHeight-(gameHeight/5)+(textAscent()/2));
      textFont(bigFont);
      fill(color(255, 255, 0));
      text(score, gameWidth/2, gameHeight/2);
    }
  }

  boolean isRestartButtonClicked() {
    boolean isClickInXRange = playerPosX >= buttonXLeft && playerPosX <= buttonXRight;
    boolean isClickInYRange = playerPosY >= buttonYTop && playerPosY <= buttonYBottom;
    return isClickInXRange && isClickInYRange;
  }
}