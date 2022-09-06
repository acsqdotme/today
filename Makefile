# SPDX-FileCopyrightText: 2020-2022 Sotiris Papatheodorou
# SPDX-License-Identifier: CC0-1.0

PREFIX = /usr/local
BINDIR = $(PREFIX)/bin
MANDIR = $(PREFIX)/share/man

doc/today.1: doc/today.1.scd

.PHONY: install
install: doc/today.1
	install -D -m 755 today $(DESTDIR)$(BINDIR)
	install -D -m 644 doc/today.1 $(DESTDIR)$(MANDIR)/man1

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(BINDIR)/today $(DESTDIR)$(MANDIR)/man1/today.1

%.1: %.1.scd
	scdoc < $< > $@
