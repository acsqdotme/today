" SPDX-FileCopyrightText: 2022 Sotiris Papatheodorou
" SPDX-License-Identifier: CC0-1.0

if exists('g:loaded_vim_today')
	finish
endif
let g:loaded_vim_today = 1

if empty($TODAY_DIR)
	if empty($XDG_DATA_HOME)
		let $TODAY_DIR = '~/.local/share/today'
	else
		let $TODAY_DIR = $XDG_DATA_HOME . '/today'
	endif
endif

if empty($TODAY_SUFFIX)
	let $TODAY_SUFFIX = '.md'
endif
