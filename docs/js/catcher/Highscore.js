class Highscore {

    constructor() {
        rectMode(CENTER);
        this.init();
    }

    init( ) {
        textSize(normalFont);
        this.restart = 'RESTART';
        this.restartButtonWidth = textWidth(this.restart)*3;
        this.restartButtonHeight = textAscent()*3.5;
        this.buttonXLeft = (gameWidth/2)-(this.restartButtonWidth/2);
        this.buttonXRight = (gameWidth/2)+(this.restartButtonWidth/2);
        this.buttonYTop = (gameHeight-(gameHeight/5))-(this.restartButtonHeight/2);
        this.buttonYBottom = (gameHeight-(gameHeight/5))+(this.restartButtonHeight/2);
    }


    execute(score) {
        if (this.isRestartButtonClicked()) {
            state = stateGameRestart;
        } else {
            fill(yellow);
            rect(gameWidth/2, gameHeight-(gameHeight/5), this.restartButtonWidth, this.restartButtonHeight, 18);
            textAlign(CENTER);
            textSize(normalFont);
            this.restartButtonHeight = textAscent()*3.5;
            fill(50);
            text(this.restart, gameWidth/2, gameHeight-(gameHeight/5)+(textAscent()/2));
            this.restartButtonHeight = textAscent()*3.5;
            textSize(bigFont);
            fill(yellow);
            text(score, gameWidth/2, gameHeight/2);
        }
    }

    isRestartButtonClicked() {
        var isClickInXRange = playerPosX >= this.buttonXLeft && playerPosX <= this.buttonXRight;
        var isClickInYRange = playerPosY >= this.buttonYTop && playerPosY <= this.buttonYBottom;
        return isClickInXRange && isClickInYRange;
    }
}
