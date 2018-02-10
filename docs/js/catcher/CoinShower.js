class CoinShower {

    constructor() {
        this.waitingStack = [];
        this.interval = 1000;
        this.savedTime = millis();
    }

    start(ingameCoins) {
        if (this.isTimeForNextOne()) {
        if (this.waitingStack.length === 0) {
            this.waitingStack.push(new Coin());
        }
        var coin = this.waitingStack.pop();
        ingameCoins.push(coin);
        }
    }

    isTimeForNextOne(){
        var currentTime = millis();
        if (this.savedTime + this.interval < currentTime) {
            this.savedTime = currentTime;
            return true;
        }
        return false;
    }

}

