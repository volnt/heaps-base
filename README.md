# Getting started

1. Install [Haxe](https://haxe.org/download/)
2. Install the dependencies : `make install`
3. Compile the game : `make`
4. Run the game : `xdg-open build/index.html`

# Feature set

* Barebone framework with update / fixedUpdate method
* Display a sample png on the screen
* Github workflow to transpile the project to webgl and publish it on Github pages (the gh-pages branch must be created manually the very first time)

# Makefile targets

* `make`: build the webgl target
* `make watch`: build the webgl target everytime a source or res file is updated
* `make install`: install the dependencies defined in webgl.hxml
