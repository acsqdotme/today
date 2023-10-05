today(1) "today 6.0.0"

# NAME

today - keep a daily journal


# SYNOPSIS

*today* [[[_YYYY-_]_MM-_]_DD_]++
*today* *grep* _argument_ ...++
*today* *log* [*-v*]++
*today* *-h*


# DESCRIPTION

*today* [[[_YYYY-_]_MM-_]_DD_] opens the journal file for the specified date for
editing by running the command in the $*TODAY_CMD* environment variable. If year
and month are omitted they default to the current year and month. With no
arguments a file with the current date is opened for editing.

*today* *grep* _argument_ ... searches through all journal files by calling
*grep*(1) with the supplied _argument_\s.

*today* *log* prints the contents of all journal files in reverse chronological
order on standard output. The contents of each file are preceded by the date in
the YYYY-MM-DD format and two newlines and followed by three newlines. If
standard output is connected to a terminal it will be piped to the program
specified in the $*PAGER* environment variable.

If a journal file is empty after being edited it's deleted.

Journal files are stored in the directory specified in the $*TODAY_DIR*
environment variable with a _YYYY-MM-DD_ basename and the contents of the
$*TODAY_SUFFIX* environment variable as a suffix.

Configuration is done through environment variables. This allows keeping
multiple different journals by creating aliases or wrapper scripts that set the
appropriate environment variables e.g. using *env*(1).


# OPTIONS

*-v*
	Reverse the file ordering in the *log* subcommand, i.e. print the
	contents of all journal files in chronological order.

*-h*
	Show the program help.


# ENVIRONMENT VARIABLES

*TODAY_CMD*
	The command used to edit a journal file. It is passed to *eval*(1). In
	addition to any environment variables, the following variables can be
	used in the command stored in $*TODAY_CMD*:

	- $*TODAY_FILE*    The path to the journal file to be edited.
	- $*TODAY_DIR*     See *TODAY_DIR*. Contains the default value if unset in the environment.
	- $*TODAY_SUFFIX*  See *TODAY_SUFFIX*. Contains the default value if unset in the environment.

	The command may be modified to edit any other arbitrary files if
	supported by $*EDITOR*, i.e. keeping a file with notes that persist
	between days. If unset or empty the following value is used:
	```
	$EDITOR "$TODAY_FILE"
	```

*TODAY_DIR*
	The directory where journal files are stored. If unset it defaults to
	$*XDG_DATA_HOME/today* if $*XDG_DATA_HOME* is set or
	$*HOME/.local/share/today* otherwise.

*TODAY_SUFFIX*
	The suffix added after the date in journal filenames. Defaults to *.md*
	if unset.

*EDITOR*
	The program used to edit journal files. Defaults to *vi*(1) if unset or
	empty.

*PAGER*
	The program to which the output of *today* *log* is piped. Defaults to
	*more*(1) if unset or empty.


# SEE ALSO

*grep*(1), *env*(1), *eval*(1), *vi*(1), *more*(1)


# AUTHOR

Written and maintained by Sotiris Papatheodorou. Up-to-date sources can be found
at https://sr.ht/~sotirisp/today. Bugs and patches can be submitted by email to
~sotirisp/today@lists.sr.ht.


# LICENSE

Copyright 2020-2023 Sotiris Papatheodorou

This program is Free Software: You can use, study share and improve it at your
will. Specifically you can redistribute and/or modify it under the terms of the
GNU General Public License https://www.gnu.org/licenses/gpl.html as published
by the Free Software Foundation, either version 3 of the License, or (at your
option) any later version.

; SPDX-FileCopyrightText: 2020-2023 Sotiris Papatheodorou
; SPDX-License-Identifier: GPL-3.0-or-later
