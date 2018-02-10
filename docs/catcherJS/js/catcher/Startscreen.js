class Startscreen {

    constructor() {
        rectMode(CENTER);
        this.init();
    }


    init() {
        textSize(normalFont);
        this.start = 'START';
        this.startButtonWidth = textWidth(this.start)*3;
        this.startButtonHeight = textAscent()*3.5;
        this.buttonXLeft = (gameWidth/2)-(this.startButtonWidth/2);
        this.buttonXRight = (gameWidth/2)+(this.startButtonWidth/2);
        this.buttonYTop = (gameHeight/2)-(this.startButtonHeight/2);
        this.buttonYBottom = (gameHeight/2)+(this.startButtonHeight/2);
    }


    execute() {
        if (this.isStartButtonClicked()) {
            state = stateGameRunning;
        } else {
            fill(yellow);
            rect(gameWidth/2, gameHeight/2, this.startButtonWidth, this.startButtonHeight, 18);
            textAlign(CENTER);
            fill(50);
            text(this.start, gameWidth/2, gameHeight/2+(textAscent()/2));
        }
    }

    isStartButtonClicked() {
        var isClickInXRange = playerPosX >= this.buttonXLeft && playerPosX <= this.buttonXRight;
        var isClickInYRange = playerPosY >= this.buttonYTop && playerPosY <= this.buttonYBottom;
        return isClickInXRange && isClickInYRange;
    }
}
