<!-- SPDX-FileCopyrightText: 2020-2021 Sotiris Papatheodorou -->
<!-- SPDX-License-Identifier: GPL-3.0-or-later -->

# today

`today` is a Python 3 script that makes it easier to keep a daily journal. It
creates a file for each day and opens it in your favorite editor. The initial
motivation was to create an easy to use daily work journal.



## Usage

`today` creates a journal file `YYYYMMDD.md` named with the current date. The
file is opened with `$VISUAL` or `$EDITOR` if the former is not defined. The
journal files are stored in the first directory that exists among `$TODAY_DIR`,
`$XDG_DATA_HOME/today` and `$HOME/.local/share/today`.

The `today` repository contains symbolic links to `today` under various names
which act as shortcuts for common tasks.

``` sh
today     # Edit today's journal
yesterday # Edit yesterday's journal
tomorrow  # Edit tomorrow's journal
prevday   # Edit the most recent journal excluding today's journal
nextday   # Edit the closest future journal
week      # Pretty print this week's journals
prevweek  # Pretty print the previous week's journals
nextweek  # Pretty print the next week's journals
month     # Pretty print this month's journals
prevmonth # Pretty print the previous month's journals
nextmonth # Pretty print the next month's journals
```

See the `today` manpage for more detailed information.



## Installation

To install the script and its manpage:

``` sh
sudo make install
```



## License

Copyright 2020-2021 Sotiris Papatheodorou

This program is Free Software: You can use, study share and improve it at your
will. Specifically you can redistribute and/or modify it under the terms of the
[GNU General Public License](https://www.gnu.org/licenses/gpl.html) as
published by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

