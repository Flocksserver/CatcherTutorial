

var playerPosX;
var playerPosY;
var darkGrey;
var yellow;

var startscreen;
var game;
var highscore;


var gameWidth;
var gameHeight;
var textWidthNormal;
var textWidthBig;


var stateWaitToStart = 0;
var stateGameRunning = 1;
var stateWaitToRestart = 2;
var stateHighscoreRunning = 3;
var stateGameRestart = 4;
var state = stateWaitToStart;

var normalFont;
var bigFont;
var scale;

//function preload() {
//    normalFont = loadFont('assets/AvenirNextLTPro-Demi.otf');
//}


function setup() {
    var params = getURLParams();
    var paramWidth = params.width;
    var paramHeight = params.height;
    if(paramWidth && paramHeight){
        createCanvas(paramWidth, paramHeight);
    }else{
        createCanvas(windowWidth, windowHeight);
    }
    playerPosX = width/2;
    darkGrey = color(45, 50, 50);
    yellow = color(255, 255, 0);
    gameWidth = width;
    gameHeight = height;
    scale = 1 + gameWidth / 1000;
    textWidthNormal = 22 * scale;
    textWidthBig = 100 * scale;
    normalFont = textWidthNormal;
    bigFont = textWidthBig;

    startscreen = new Startscreen();
    game = new Game();
    highscore = new Highscore();

}

function draw() {
    background(darkGrey);
    if (mouseIsPressed) {
        if(mouseX < width && mouseY < height)
        playerPosX = mouseX;
        playerPosY = mouseY;
    }
    if (state === stateWaitToStart) {
        startscreen.execute();
    }
    if (state === stateGameRunning) {
        game.execute();
    }
    if (state === stateWaitToRestart) {
        playerPosX = 0;
        playerPosY = 0;
        state = stateHighscoreRunning;
    }
    if (state === stateHighscoreRunning) {
        highscore.execute(game.score);
    }
    if (state === stateGameRestart) {
        game.init();
        state = stateGameRunning;
    }
}

function windowResized() {
    var params = getURLParams();
    var paramWidth = params.width;
    var paramHeight = params.height;
    var newWidth = windowWidth;
    var newHeight = windowHeight;
    if(paramWidth && paramHeight){
        if(newWidth > paramWidth) newWidth = paramWidth;
        if(newHeight > paramHeight) newHeight = paramHeight;
    }
    createCanvas(newWidth, newHeight);
    playerPosX = newWidth/2;
    darkGrey = color(45, 50, 50);
    yellow = color(255, 255, 0);
    gameWidth = newWidth;
    gameHeight = newHeight;
    scale = 1 + gameWidth / 1000;
    textWidthNormal = 22 * scale;
    textWidthBig = 100 * scale;
    normalFont = textWidthNormal;
    bigFont = textWidthBig;
    startscreen.init();
    game.reInit();
    highscore.init();
}
