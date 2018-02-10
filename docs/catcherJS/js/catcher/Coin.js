class Coin {

    constructor() {
        this.velocity = 1;
        this.init();
    }


    move(){
        ellipseMode(CENTER);
        fill(yellow);
        this.yPos = this.yPos + this.velocity;
    }

    display() {
        //push();
        //translate(0,this.velocity);
        ellipse(this.xPos, this.yPos, this.coinWidth, this.coinHeight);
        //pop();
    }

    init(){
        this.coinHeight = gameHeight/50;
        this.coinWidth = gameHeight/50;
        this.xPos = random(this.coinWidth/2, width-this.coinWidth/2);
        this.yPos = -this.coinHeight;
    }

    reInit(){
        this.coinHeight = gameHeight/50;
        this.coinWidth = gameHeight/50;
    }

}

