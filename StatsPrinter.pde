/*
Helper class printing the current game state on screen
 by Flocksserver http://flocksserver.de
 */
class StatsPrinter {

  float offset;
  String scoreText;
  String livesText;
  
  public StatsPrinter(){
    textFont(font, textWidth * scale);
    offset = textAscent();
  }
  
  void print(int lives, int score) {
    scoreText= "Score: "+score;
    livesText = "Lives: "+lives;
    fill(255);
    textAlign(LEFT);
    text(scoreText, 0+offset, textWidth+offset);
    textAlign(RIGHT);
    text(livesText, gameWidth-offset, textWidth+offset);
  }
}