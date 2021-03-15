class Main extends hxd.App {
    var dtBuffer = 0;
    var game: Game;

    override function init() {
        Game.init(s2d, engine);

        this.game =  Game.game;
    }

    override function update(dt_: Float) {
        var dt = (Math.round(dt_ * 1000));

        dt += this.dtBuffer;

        var nFrames = Math.round(dt / Constants.Mspf);

        this.game.events();

        this.game.update();

        for (_ in 0...nFrames) {
            Timer.frameCount += 1;
            this.game.fixedUpdate();
        }

        this.dtBuffer = dt % Constants.Mspf;
    }

    static function main() {
        hxd.Res.initEmbed();
        new Main();
    }
}
