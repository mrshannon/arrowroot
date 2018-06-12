PREFIX = /usr/local

BINPROGS = arrowroot

BASH = bash

all: $(BINPROGS)

check: all
	@for f in $(BINPROGS); do bash -O extglob -n $$f; done
	@for f in $(BINPROGS); do shellcheck $$f; done

install: all
	install -dm755 $(DESTDIR)$(PREFIX)/bin
	install -m755 $(BINPROGS) $(DESTDIR)$(PREFIX)/bin

uninstall:
	for f in $(BINPROGS); do $(RM) $(DESTDIR)$(PREFIX)/bin/$$f; done

.PHONY: all install uninstall
