PREFIX ?= /usr/local

.PHONY: install
install:
	mkdir -p $(DESTDIR)$(PREFIX)/share/fnaify/
	cp fnaify $(DESTDIR)$(PREFIX)/bin/
	cp fnaify.dllmap.config $(DESTDIR)$(PREFIX)/share/fnaify/
	cp fnaify.1 $(DESTDIR)$(PREFIX)/man/man1/

readme: fnaify.1
	mandoc -mdoc -T markdown fnaify.1 > README.md

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/share/fnaify/fnaify.dllmap.config
