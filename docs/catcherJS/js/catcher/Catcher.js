class Catcher {

    constructor() {
        this.init();
    }

    init(){
        this.catcherHeight = gameHeight/100;
        this.catcherWidth = gameWidth/8;
        this.yPos = gameHeight-(gameHeight/8);
        this.xPos = gameWidth/2;
    }

    display() {
        fill(250);
        this.xPos = playerPosX;
        rectMode(CENTER);
        rect(this.xPos, this.yPos, this.catcherWidth, this.catcherHeight);
    }

}
