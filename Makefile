# SPDX-FileCopyrightText: 2020-2021 Sotiris Papatheodorou
# SPDX-License-Identifier: CC0-1.0

PREFIX ?= /usr/local
_INSTDIR = $(DESTDIR)$(PREFIX)
BINDIR ?= $(_INSTDIR)/bin
MANDIR ?= $(_INSTDIR)/share/man

.PHONY: all
all:
	ln -sf today prevday
	ln -sf today prevweek
	ln -sf today nextweek
	ln -sf today tomorrow
	ln -sf today week
	ln -sf today yesterday

.PHONY: test
test:
	mypy today

doc/today.1: doc/today.1.scd
	scdoc < $< > $@

.PHONY: doc
doc: doc/today.1

.PHONY: install
install: all
	install -D --target-directory $(BINDIR) prevday prevweek nextweek today tomorrow week yesterday
	install -D -m 644 doc/today.1 $(MANDIR)/man1/today.1

.PHONY: uninstall
uninstall:
	rm -f $(BINDIR)/prevday $(BINDIR)/prevweek $(BINDIR)/nextweek $(BINDIR)/today $(BINDIR)/tomorrow $(BINDIR)/week $(BINDIR)/yesterday $(MANDIR)/man1/today.1

