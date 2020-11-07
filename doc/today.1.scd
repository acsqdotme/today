today(1) "today 1.0.0"

# NAME

today - keep a daily journal



# SYNOPSIS

*today*     [_OPTION_]... [_FILE_]...++
*yesterday* [_OPTION_]... [_FILE_]...++
*tomorrow*  [_OPTION_]... [_FILE_]...++
*lastday*   [_OPTION_]... [_FILE_]...++
*week*      [_OPTION_]... [_FILE_]...++
*lastweek*  [_OPTION_]... [_FILE_]...++
*nextweek*  [_OPTION_]... [_FILE_]...



# DESCRIPTION

*today* is a Python 3 script that makes it easier to keep a daily journal. It
creates a Markdown file for each day and opens it in your favorite editor. The
initial motivation was to create an easy to use daily work journal.

*today*/*yesterday*/*tomorrow* opens a Markdown file YYYYMMDD.md with
today's/yesterday's/tomorrow's date using _VISUAL_.

*lastday* opens the most recent journal file excluding today's file
using _VISUAL_.

*week*/*lastweek*/*nextweek* renders all the journal files for
this/the last/the next week using _PAGER_.

When _FILES_ are provided they are always rendered instead of edited.

The journal files are stored in the first directory among _$TODAYDIR_,
_$XDG_DATA_HOME/today_ and _$HOME/.local/share/today_ that exists.



# OPTIONS

*-d, --date*=_YYYYMMDD_
	Use the journal for YYYYMMDD instead of the date inferred from the program
	name.

*-r, --render*
	Render the journal instead of opening it for editing.

*-h, --help*
	Show the program help.

Mandatory or optional arguments to long options are also mandatory or optional
for any corresponding short options.



# ENVIRONMENT VARIABLES

_TODAYDIR_
	Overrides the default journal storage directory. The first among
	_$XDG_DATA_HOME/today_ and _$HOME/.local/share/today_ that exists is used if
	it is unset.

_VISUAL_
	The editor to use for journal files.

_EDITOR_
	The editor to use for journal files if _VISUAL_. *nano* is used if it is
	unset.

_PAGER_
	The pager to use for displaying journal files. *less* is used if it is
	unset.



# AUTHOR

Written and maintained by Sotiris Papatheodorou.++
Up-to-date sources can be found at https://git.sr.ht/~sotirisp/today.++
Bugs and patches can be submitted by email to
~sotirisp/public-inbox@lists.sr.ht.



# LICENSE

Copyright © 2020 Sotiris Papatheodorou

This program is Free Software: You can use, study share and improve it at your
will. Specifically you can redistribute and/or modify it under the terms of the
GNU General Public License https://www.gnu.org/licenses/gpl.html as published
by the Free Software Foundation, either version 3 of the License, or (at your
option) any later version.



; SPDX-FileCopyrightText: 2020 Sotiris Papatheodorou
; SPDX-License-Identifier: GPL-3.0-or-later

