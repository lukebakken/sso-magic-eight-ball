.PHONY: clean

MOCHA_RUNNER ?= ./node_modules/mocha/bin/mocha

$(MOCHA_RUNNER):
	@npm install

mocha: $(MOCHA_RUNNER)

test: mocha
	@$(MOCHA_RUNNER)

clean:
	@rm -rf ./node_modules
