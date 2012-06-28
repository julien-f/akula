prefix ?= /usr/local
bindir ?= $(prefix)/bin

.PHONY: install

install: bin/akula
	mkdir --parents $(bindir)
	cp --target-directory=$(bindir) $<
