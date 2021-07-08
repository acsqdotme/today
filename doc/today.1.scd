today(1) "today 1.1.2"

# NAME

today - keep a daily journal



# SYNOPSIS

*today*     [_OPTION_]... [_YYYYMMDD_]++
*yesterday* [_OPTION_]...++
*tomorrow*  [_OPTION_]...++
*prevday*   [_OPTION_]...++
*nextday*   [_OPTION_]...++
*week*      [_OPTION_]...++
*prevweek*  [_OPTION_]...++
*nextweek*  [_OPTION_]...++
*month*      [_OPTION_]...++
*prevmonth*  [_OPTION_]...++
*nextmonth*  [_OPTION_]...



# DESCRIPTION

*today* is a Python 3 script that makes it easier to keep a daily journal. It
creates a file for each day and opens it in your favorite editor. The initial
motivation was to create an easy to use daily work journal.

*today*/*yesterday*/*tomorrow* opens file YYYYMMDD.md with
today's/yesterday's/tomorrow's date using _VISUAL_.

*today* _YYYYMMDD_ opens the journal file for the specified day instead of
today.

*prevday* opens the most recent journal file excluding today's file using
_VISUAL_.

*nextday* opens the closest future journal file using _VISUAL_.

*week*/*prevweek*/*nextweek* renders all the journal files for this/the
previous/the next week using _PAGER_.

*month*/*prevmonth*/*nextmonth* renders all the journal files for this/the
previous/the next month using _PAGER_.

If a journal file is empty or contains only whitespace after being edited it
will be deleted.

The journal files are stored in the first directory among _$TODAY_DIR_,
_$XDG_DATA_HOME/today_ and _$HOME/.local/share/today_ that exists.



# TODAY OPTIONS

The following options are only available for _today_.

*-c, --carry-regex*=[REGEX]
	Move all text between the line matching the REGEX and the end of the file
	inclusive from the _prevday_ to the _today_ file. The default REGEX is
	*^#+TODO$*.

*-v, --view*=_DATES_
	View all journal files for the date range _DATES_. _DATES_ can be
	_YYYYMMDD_, _START_DATE-_, _-END_DATE_ or _START_DATE-END_DATE_ where
	_START_DATE_ and _END_DATE_ are in the format _YYYYMMDD_.

# COMMON OPTIONS

*-h, --help*
	Show the program help.

*-V, --version*
	Show the program version.



# ENVIRONMENT VARIABLES

_TODAY_DIR_
	Overrides the default journal storage directory. The first among
	_$XDG_DATA_HOME/today_ and _$HOME/.local/share/today_ that exists is used if
	it is unset.

_TODAY_SUFFIX_
	The journal file suffix. *.md* is used if it is unset.

_TODAY_SPECIAL_REGEX_
	The regular expression used to highlight special lines. *^#+ TODO$* is used
	if it is unset.

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

