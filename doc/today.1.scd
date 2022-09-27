today(1) "today 3.0.0"

# NAME

today - keep a daily journal



# SYNOPSIS

*today* [[[_YYYY-_]_MM-_]_DD_] ...++
*today* *-h*


# DESCRIPTION

*today* [[[_YYYY-_]_MM-_]_DD_] ... opens the journal file for the specified date
for editing by running $*TODAY_CMD*. If multiple dates are supplied all
respective files are shown in $*PAGER*. With no arguments a file with today's
date is opened for editing. If year and month are omitted they default to the
current year and month.

A to-do file is used for notes that persist between days.

If a journal file is empty after being edited it's deleted.

Journal files are stored in $*TODAY_DIR* with a _YYYY-MM-DD_ basename and a
$*TODAY_SUFFIX* suffix. The to-do file is also stored in $*TODAY_DIR* with a
*todo* basename and a $*TODAY_SUFFIX* suffix.

See the *ENVIRONMENT VARIABLES* section for how to configure *today*.


# OPTIONS

*-h*
	Show the program help.


# ENVIRONMENT VARIABLES

*TODAY_CMD*
	If $*TODAY_CMD* is set, its value is passed to *eval*(1) when editing
	a journal file. It can be used to customize the command used for editing
	a journal file. In addition to any environment variables, the following
	variables can be used in the command stored in $*TODAY_CMD*:

	- $*TODAY_FILE*    The path to the journal file to be edited.
	- $*TODAY_TODO*    The path to the todo file.
	- $*TODAY_DIR*     See *TODAY_DIR* below. Contains the default value if unset in the environment.
	- $*TODAY_SUFFIX*  See *TODAY_SUFFIX* below. Contains the default value if unset in the environment.

	By default the following value is used:
	```
	vim -c "abo sp $TODAY_TODO" -c "tabe $TODAY_DIR" -c "tabr" "$TODAY_FILE"
	```

*TODAY_DIR*
	If $*TODAY_DIR* is set, its value is the directory where journal files
	are stored. By default $*XDG_DATA_HOME/today* is used if
	$*XDG_DATA_HOME* is set, otherwise $*HOME/.local/share/today* is used.

*TODAY_SUFFIX*
	If $*TODAY_SUFFIX* is set, its value is the suffix to be added after the
	date in journal filenames. By default *.gmi* is used.

*PAGER*
	If $*PAGER* is set, its value is used as the program used to display
	multiple journal files. By default *less*(1) is used.


# AUTHOR

Written and maintained by Sotiris Papatheodorou.++
Up-to-date sources can be found at https://git.sr.ht/~sotirisp/today.++
Bugs and patches can be submitted by email to
~sotirisp/public-inbox@lists.sr.ht.


# SEE ALSO

*eval*(1), *less*(1)


# LICENSE

Copyright 2020-2022 Sotiris Papatheodorou

This program is Free Software: You can use, study share and improve it at your
will. Specifically you can redistribute and/or modify it under the terms of the
GNU General Public License https://www.gnu.org/licenses/gpl.html as published
by the Free Software Foundation, either version 3 of the License, or (at your
option) any later version.

; SPDX-FileCopyrightText: 2020-2022 Sotiris Papatheodorou
; SPDX-License-Identifier: GPL-3.0-or-later
