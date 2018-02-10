class StatsPrinter {

    constructor() {
        this.init();
    }

    init(){
        textSize(normalFont);
        this.dynamicTextHeight = textAscent();
        this.offset = 5 * scale;
        this.scoreText = 0;
        this.livesText = 0;
    }


    print(lives, score) {
        this.scoreText= "Score: "+score;
        this.livesText = "Lives: "+lives;
        fill(255);
        textSize(normalFont);
        this.dynamicTextHeight = textAscent();
        textAlign(LEFT);
        text(this.scoreText, this.offset, this.dynamicTextHeight+this.offset);
        textAlign(RIGHT);
        text(this.livesText, gameWidth - this.offset, this.dynamicTextHeight+this.offset);
    }
}
