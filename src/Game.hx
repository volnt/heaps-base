class Game {
    public static var game: Game;

    var engine: h3d.Engine;
    var layers: h2d.Layers;

    public static function init(scene: h2d.Scene, engine: h3d.Engine) {
        Game.game = new Game(scene, engine);
    }

    function new(scene: h2d.Scene, engine: h3d.Engine) {
        this.engine = engine;

        layers = new h2d.Layers(scene);
        layers.add(new h2d.Bitmap(hxd.Res.house.toTile()), 100);
    }

    /**
        Handle events
    **/
    public function events() {
    }

    /**
        Called on every Game loop at a rate depending on the target host performances
     **/
    public function update() {
    }

    /**
       Called at a fixed rate of `Constants.Mspf` (if the target host performance are good enough)
     **/
    public function fixedUpdate() {
    }

}
