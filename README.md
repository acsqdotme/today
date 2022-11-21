# today

`today` is a POSIX shell script that makes it easier to keep a daily journal.
The motivation for it was creating an easy to use daily work journal.

`today` stores each daily journal as a file whose basename is the corresponding
date. It allows opening the file with the corresponding date in your favorite
editor. It also creates a to-do file for notes that persist between days. It's
configurable through environment variables. This makes it easier to keep
multiple journals on the same computer.


## Installation

To install the script and its manpage run `make install`. You might need to run
it as root.


## Usage

``` sh
# Open today's journal file.
today
# Open the journal file for the 5th of the current month.
today 05
# Open the journal file for the 14th of October of the current year.
today 10-14
# Search all journal files using the regular expression "^Today".
today grep ^Today
# Show the contents of all journal files in a pager.
today log
```
 
See the [today(1) manpage](https://git.sr.ht/~sotirisp/today/tree/master/item/doc/today.1.scd)
for details.


## License

Copyright 2020-2022 Sotiris Papatheodorou

This program is Free Software: You can use, study share and improve it at your
will. Specifically you can redistribute and/or modify it under the terms of the
[GNU General Public License](https://www.gnu.org/licenses/gpl.html) as
published by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

<!-- SPDX-FileCopyrightText: 2020-2022 Sotiris Papatheodorou -->
<!-- SPDX-License-Identifier: GPL-3.0-or-later -->
