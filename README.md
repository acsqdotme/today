# today

`today` is a POSIX shell script for keeping a daily journal. Each daily journal
is stored as a file whose basename is the corresponding date. It allows
editing, searching through and viewing journal files.


## Usage

``` sh
# Edit the journal file for the current day.
today
# Edit the journal file for the 5th of the current month.
today 05
# Edit the journal file for the 14th of October of the current year.
today 10-14
# Search all journal files using the regular expression "^Today".
today grep ^Today
# Show the contents of all journal files in $PAGER.
today log
```

`today` is configurable through environment variables which allows keeping
multiple journals on the same computer by creating aliases with the appropriate
environment variables set. See the
[today(1) manpage](https://git.sr.ht/~sotirisp/today/tree/master/item/doc/today.1.scd)
for details.


## Installation

The dependencies are a POSIX system and `scdoc` to build the manpage. To build
the manpage run `make`. To install the script and its manpage run `make
install` (you might need to run it as root).


## Contributing

Patches, bug reports or feature suggestions can be sent by email to
[~sotirisp/today@lists.sr.ht](mailto:~sotirisp/today@lists.sr.ht). If you're
not familiar with sending patches over email see
[here](https://git-send-email.io/).


## License

Copyright 2020-2022 Sotiris Papatheodorou

This program is Free Software: You can use, study share and improve it at your
will. Specifically you can redistribute and/or modify it under the terms of the
[GNU General Public License](https://www.gnu.org/licenses/gpl.html) as
published by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

<!-- SPDX-FileCopyrightText: 2020-2022 Sotiris Papatheodorou -->
<!-- SPDX-License-Identifier: GPL-3.0-or-later -->
