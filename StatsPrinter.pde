/*
Helper class printing the current game state on screen
 by Flocksserver http://flocksserver.de
 */
class StatsPrinter {

  float offset = textAscent();
  String scoreText;
  String livesText;

  void print(int lives, int score) {
    scoreText= "Score: "+score;
    livesText = "Leben: "+lives;
    textAlign(LEFT);
    text(scoreText, 0+offset, textWidth+offset);
    textAlign(RIGHT);
    text(livesText, gameWidth-offset, textWidth+offset);
  }
}