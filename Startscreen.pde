/*
Class managing the start screen
 by Flocksserver http://flocksserver.de
 */
class Startscreen{
  
  PShape startButton;
  float startButtonWidth;
  float startButtonHeight;
  String start;
  
  float buttonXLeft;
  float buttonXRight;
  float buttonYTop;
  float buttonYBottom;
  
   public Startscreen( ) {
    rectMode(CENTER);
    init();
  }

  void init( ) {
    textFont(font, textWidth * scale);
    start = "START";
    startButtonWidth = textWidth(start)*3;
    startButtonHeight = textAscent()*3.5;
    startButton = createShape(RECT, 0, 0, startButtonWidth, startButtonHeight, 18);
    startButton.setFill(yellow);
    buttonXLeft = (gameWidth/2)-(startButtonWidth/2);
    buttonXRight = (gameWidth/2)+(startButtonWidth/2);
    buttonYTop = (gameHeight/2)-(startButtonHeight/2);
    buttonYBottom = (gameHeight/2)+(startButtonHeight/2);
  }
  
  
  void execute() {
    if (isStartButtonClicked()) {
        state = stateGameRunning;
    }else{
      shape(startButton, gameWidth/2, gameHeight/2);
      textAlign(CENTER);
      fill(50);
      text(start, gameWidth/2, gameHeight/2+(textAscent()/2));
    }
  }
  
  boolean isStartButtonClicked(){
    boolean isClickInXRange = playerPosX >= buttonXLeft && playerPosX <= buttonXRight;
    boolean isClickInYRange = playerPosY >= buttonYTop && playerPosY <= buttonYBottom;
    return isClickInXRange && isClickInYRange;
  }
  
}