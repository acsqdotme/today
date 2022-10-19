" SPDX-FileCopyrightText: 2022 Sotiris Papatheodorou
" SPDX-License-Identifier: CC0-1.0

setlocal path=.,$TODAY_DIR
" Use execute to expand the environment variable.
execute 'setlocal suffixesadd+=' . $TODAY_SUFFIX
