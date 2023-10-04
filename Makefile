# SPDX-FileCopyrightText: 2020-2023 Sotiris Papatheodorou
# SPDX-License-Identifier: CC0-1.0
.POSIX:

PREFIX = /usr/local
BINDIR = $(DESTDIR)$(PREFIX)/bin
MANDIR = $(DESTDIR)$(PREFIX)/share/man

doc/today.1:

install: doc/today.1
	mkdir -p $(BINDIR) $(MANDIR)/man1
	cp -f today $(BINDIR)
	cp -f doc/today.1 $(MANDIR)/man1
	chmod +x $(BINDIR)/today

uninstall:
	rm -f $(BINDIR)/today $(MANDIR)/man1/today.1

clean:
	rm -f doc/today.1

.SUFFIXES: .scd
.scd:
	scdoc < $< > $@
