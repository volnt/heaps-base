BIN := build/app.js
MAP := build/app.js.map
SRC := $(shell find src/ -name "*.hx" | grep -v "\#") res/**

.PHONY: all
all: $(BIN)

.PHONY: clean-res
clean-res: $(shell find res/ -name "*~")
	rm -f res/**~

$(BIN): $(SRC) clean-res
	@printf "[$(shell date +%H:%M:%S)] Starting compilation of $@..."
	@d=$$(date +%s) && haxe webgl.hxml && printf " done in $$(($$(date +%s)-d))s.\n"

.PHONY: watch
watch:
	@fswatch -o $(SRC) --event Updated --event IsFile | xargs -n1 -I{} make --silent

.PHONY: clean
clean:
	rm -f $(BIN) $(MAP)

.PHONY: re
re: clean all

.PHONY: install
install:
	haxelib install webgl.hxml --always --quiet
