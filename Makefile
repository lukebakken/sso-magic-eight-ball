.PHONY: clean lint format
PROJDIR := $(realpath $(CURDIR))

MOCHA_RUNNER ?= $(PROJDIR)/node_modules/mocha/bin/mocha

$(MOCHA_RUNNER):
	npm install

mocha: $(MOCHA_RUNNER)

lint:
	$(PROJDIR)/node_modules/jshint/bin/jshint $(PROJDIR)/lib $(PROJDIR)/test

test: lint mocha
	$(MOCHA_RUNNER)

format:
	$(PROJDIR)/node_modules/.bin/prettier --write '**/*.js'

clean:
	rm -rf $(PROJDIR)/node_modules
