class Game {

    constructor() {
        this.init();
    }


    init() {
        this.catcher = new Catcher();
        this.shower = new CoinShower();
        this.statsPrinter = new StatsPrinter();
        this.lives = 5;
        this.score = 0;
        this.difficulty = gameHeight/900;
        this.coinListInGame = [];
    }

    reInit(){
        this.catcher.init();
        this.statsPrinter.init();
        for (var i = 0; i < this.coinListInGame.length; i++) {
            this.coinListInGame[i].reInit();
        }
    }

    gameOver() {
        return this.lives <= 0;
    }

    execute() {
        if (!this.gameOver()) {
            this.catcher.display();
            this.shower.start(this.coinListInGame);
            this.checkIngameCoins();
            this.displayCoins();
            this.setDifficulty();
            this.statsPrinter.print(this.lives, this.score);
        }else {
            state = stateWaitToRestart;
        }
    }

    displayCoins(){
        for (var i = 0; i < this.coinListInGame.length; i++) {
            this.coinListInGame[i].display();
        }
    }

    checkIngameCoins( ) {
        for (var i = 0; i < this.coinListInGame.length; i++) {
            var coin = this.coinListInGame[i];
            var isCatched = this.isInCatcherZone(coin);
            var isOut = this.isInOutZone(coin);
            if (isCatched) this.score++;
            if (isOut) this.lives--;
            if (isCatched || isOut) {
                coin.init();
                this.shower.waitingStack.push(coin);
                this.coinListInGame.splice(i,1);
            } else {
                coin.velocity = this.difficulty;
                coin.move();
            }
        }
    }

    isInOutZone(coin) {
        return coin.yPos + coin.coinHeight/2 >= gameHeight-1;
    }

    isInCatcherZone(coin) {
        return this.isInYZone(coin) && this.isInXZone(coin);
    }

    isInYZone(coin) {
        var coinLowerBound =
            coin.yPos + coin.coinHeight/2 >= this.catcher.yPos - this.catcher.catcherHeight/2 &&
            coin.yPos + coin.coinHeight/2 <= this.catcher.yPos + this.catcher.catcherHeight/2;
        var coinUpperBound =
            coin.yPos - coin.coinHeight/2 >= this.catcher.yPos - this.catcher.catcherHeight/2 &&
            coin.yPos - coin.coinHeight/2 <= this.catcher.yPos + this.catcher.catcherHeight/2;
        return coinLowerBound || coinUpperBound;
    }

    isInXZone(coin) {
        var coinRightBound =
            coin.xPos + coin.coinWidth/2 >= this.catcher.xPos - this.catcher.catcherWidth/2 &&
            coin.xPos + coin.coinWidth/2 <= this.catcher.xPos + this.catcher.catcherWidth/2;
        var coinLeftBound =
            coin.xPos - coin.coinWidth/2 >= this.catcher.xPos - this.catcher.catcherWidth/2 &&
            coin.xPos - coin.coinWidth/2 <= this.catcher.xPos + this.catcher.catcherWidth/2;
        return coinRightBound || coinLeftBound;
    }
    setDifficulty( ) {
        if (this.score > 20) {
            this.difficulty = (gameHeight/900) * 1.3;
        }
        if (this.score > 50) {
            this.difficulty = (gameHeight/900) * 1.6;
        }
        if (this.score > 100) {
            this.difficulty = (gameHeight/900) * 2;
        }
    }
}
