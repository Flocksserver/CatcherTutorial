/*
Helper class printing the current game state on screen
 by Flocksserver http://flocksserver.de
 */
class StatsPrinter {

  float dynamicTextHeight;
  float offset;
  String scoreText;
  String livesText;

  public StatsPrinter() {
    textFont(normalFont);
    dynamicTextHeight = textAscent();
    offset = 5 * scale;
  }

  void print(int lives, int score) {
    scoreText= "Score: "+score;
    livesText = "Lives: "+lives;
    fill(255);
    textAlign(LEFT);
    text(scoreText, offset, dynamicTextHeight+offset);
    textAlign(RIGHT);
    text(livesText, gameWidth - offset, dynamicTextHeight+offset);
  }
}