import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.Stack; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class CatcherTutorial extends PApplet {


Game game;
PFont font;
float playerPosX;
float playerPosY;
float gameHeight;
float gameWidth;
float textWidth;

public void setup() {
  //fullScreen();
  
  font = createFont("Arial",16,true);
  textWidth = 22;
  textFont(font,textWidth);
  gameWidth = width;
  gameHeight = height;
  game = new Game();
  game.init();
}

public void draw() {
  if(mousePressed){
    playerPosX = mouseX;
    playerPosY = mouseY;
  }
  game.start();
}
class Catcher{
  PShape c;
  float yPos;
  float xPos;
  float catcherWidth;
  float catcherHeight;

  public Catcher( ) {
    rectMode(CENTER);
    init();
  }

  public void init( ) {
    catcherWidth = 30;
    catcherHeight = 10;
    c = createShape(RECT, 0, 0, catcherWidth, catcherHeight);
    yPos = gameHeight-(gameWidth/8);
    xPos = gameWidth/2;
  }

  public void draw(){
    xPos = playerPosX;
    shape(c, xPos, yPos);
  }

}
class Coin{

  PShape c;
  float xPos;
  float yPos;
  float coinWidth;
  float coinHeigth;
  float speed;
  int yellow = color(255, 255, 0);

  public Coin(){
    ellipseMode(CENTER);
    init();
  }

  public void display( ) {
      shape(c, xPos, 0);
      c.translate(0,speed);
      yPos += speed;
  }

  public void init( ) {
    xPos = random(coinWidth,gameWidth-coinWidth);
    yPos = 0;
    coinWidth = 10;
    coinHeigth = 10;
    c = createShape(ELLIPSE, 0, 0, coinWidth, coinHeigth);
    c.setFill(yellow);
  }

}

class CoinShower{

  Stack<Coin> waitingStack = new Stack();

  int interval = 500;
  int savedTime = millis();


  public void start(ArrayList<Coin> ingameCoins, float difficulty) {
    if(isTimeForNextOne()){
      if(waitingStack.empty()){
        waitingStack.push(new Coin());
      }
      Coin coin = waitingStack.pop();
      coin.speed = difficulty;
      ingameCoins.add(coin);
    }
  }

  public boolean isTimeForNextOne( ) {
    int currentTime = millis();
    if(savedTime + interval < currentTime){
      savedTime = currentTime;
      return true;
    }
    return false;
  }

}
class Game{

  int lives;
  int score;
  float difficulty;
  int darkGrey = color(45,50,50);
  Catcher catcher;
  CoinShower shower;
  StatsPrinter statsPrinter;
  ArrayList<Coin> ingameCoins = new ArrayList<Coin>();

  public void init(){
    lives = 5;
    score = 0;
    difficulty = 2;
    catcher = new Catcher();
    shower = new CoinShower();
    statsPrinter = new StatsPrinter();
  }

  public boolean gameOver(){
    return lives <= 0;
  }

  public void start(){
    background(darkGrey);
    if(!gameOver()){
      catcher.draw();
      shower.start(ingameCoins, difficulty);
      checkIngameCoins();
    }
    statsPrinter.print(lives, score);
    setDifficulty();
  }

  public void checkIngameCoins( ) {
    for(int i = 0; i < ingameCoins.size()-1; i++){
      Coin coin = ingameCoins.get(i);
      boolean isCatched = isInCatcherZone(coin);
      boolean isOut = isInOutZone(coin);
      if(isCatched) score++;
      if(isOut) lives--;

      if(isCatched || isOut){
        coin.init();
        shower.waitingStack.push(coin);
        ingameCoins.remove(coin);
      }else{
        coin.display();
      }
    }
  }


  public boolean isInCatcherZone(Coin coin){
    return isInYZone(coin) && isInXZone(coin);
  }

  public boolean isInOutZone(Coin coin){
    return coin.yPos >= gameHeight;
  }

  public boolean isInYZone(Coin coin) {
    boolean coinLowerBound =
    coin.yPos + coin.coinHeigth/2 >= catcher.yPos - catcher.catcherHeight/2 &&
    coin.yPos + coin.coinHeigth/2 <= catcher.yPos + catcher.catcherHeight/2;
    boolean coinUpperBound =
    coin.yPos - coin.coinHeigth/2 >= catcher.yPos - catcher.catcherHeight/2 &&
    coin.yPos - coin.coinHeigth/2 <= catcher.yPos + catcher.catcherHeight/2;
    return coinLowerBound || coinUpperBound;
  }

  public boolean isInXZone(Coin coin) {
    boolean coinRightBound =
    coin.xPos + coin.coinWidth/2 >= catcher.xPos - catcher.catcherWidth/2 &&
    coin.xPos + coin.coinWidth/2 <= catcher.xPos + catcher.catcherWidth/2;
    boolean coinLeftBound =
    coin.xPos - coin.coinWidth/2 >= catcher.xPos - catcher.catcherWidth/2 &&
    coin.xPos - coin.coinWidth/2 <= catcher.xPos + catcher.catcherWidth/2;
    return coinRightBound || coinLeftBound;
  }


    public void setDifficulty( ) {
      if(score > 20){
        difficulty = 2.3f;
      }
      if(score > 50){
        difficulty = 2.6f;
      }
      if(score > 100){
        difficulty = 3;
      }
    }

}
class StatsPrinter{

  float offset = 5;
  String scoreText;
  String livesText;

  public void print(int lives, int score){
    scoreText= "Score: "+score;
    livesText = "Leben: "+lives;
    textAlign(LEFT);
    text(scoreText,0+offset,textWidth+offset);
    textAlign(RIGHT);
    text(livesText,gameWidth-offset,textWidth+offset);
  }
}
  public void settings() {  size(400, 640); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "CatcherTutorial" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
