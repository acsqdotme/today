today(1) "today 1.1.1"

# NAME

today - keep a daily journal



# SYNOPSIS

*today*     [_OPTION_]... [_YYYYMMDD_]++
*yesterday* [_OPTION_]... [_YYYYMMDD_]++
*tomorrow*  [_OPTION_]... [_YYYYMMDD_]++
*lastday*   [_OPTION_]... [_YYYYMMDD_]++
*nextday*   [_OPTION_]... [_YYYYMMDD_]++
*week*      [_OPTION_]... [_FILE_]...++
*lastweek*  [_OPTION_]... [_FILE_]...++
*nextweek*  [_OPTION_]... [_FILE_]...



# DESCRIPTION

*today* is a Python 3 script that makes it easier to keep a daily journal. It
creates a file for each day and opens it in your favorite editor. The initial
motivation was to create an easy to use daily work journal.

*today*/*yesterday*/*tomorrow* opens file YYYYMMDD.md with
today's/yesterday's/tomorrow's date using _VISUAL_.

*lastday* opens the most recent journal file excluding today's file using
_VISUAL_.

*nextday* opens the closest future journal file using _VISUAL_.

*week*/*lastweek*/*nextweek* renders all the journal files for this/the last/the
next week using _PAGER_.

If a date in the _YYYYMMDD_ format is provided, that date is used instead of the
one inferred from the program name.

If a _FILE_ is provided, that file is rendered instead of the files inferred
from the program name.

If a journal file is empty or contains only whitespace after being edited it
will be deleted.

The journal files are stored in the first directory among _$TODAYDIR_,
_$XDG_DATA_HOME/today_ and _$HOME/.local/share/today_ that exists.



# OPTIONS

*-c, --carry-regex*=[REGEX]
	Move all text between the line matching the REGEX and the end of the file
	inclusive from the _lastday_ to the _today_ file. The default REGEX is
	*'^#+TODO$'*. This option is only available for _today_.

*-s, --suffix*=_SUFFIX_
	Change the journal file suffix from *.md* to _SUFFIX_.

*-S, --special-regex*=_REGEX_
	Change the regular expression used to highlight special lines from *'^#+
	TODO$'* to _REGEX_.

*-h, --help*
	Show the program help.



# ENVIRONMENT VARIABLES

_TODAYDIR_
	Overrides the default journal storage directory. The first among
	_$XDG_DATA_HOME/today_ and _$HOME/.local/share/today_ that exists is used if
	it is unset.

_VISUAL_
	The editor to use for journal files.

_EDITOR_
	The editor to use for journal files if _VISUAL_ is unset. *nano* is used if
	it is unset.

_PAGER_
	The pager to use for displaying journal files. *less* is used if it is
	unset.



# AUTHOR

Written and maintained by Sotiris Papatheodorou.++
Up-to-date sources can be found at https://git.sr.ht/~sotirisp/today.++
Bugs and patches can be submitted by email to
~sotirisp/public-inbox@lists.sr.ht.



# LICENSE

Copyright 2020-2021 Sotiris Papatheodorou

This program is Free Software: You can use, study share and improve it at your
will. Specifically you can redistribute and/or modify it under the terms of the
GNU General Public License https://www.gnu.org/licenses/gpl.html as published
by the Free Software Foundation, either version 3 of the License, or (at your
option) any later version.



; SPDX-FileCopyrightText: 2020-2021 Sotiris Papatheodorou
; SPDX-License-Identifier: GPL-3.0-or-later

