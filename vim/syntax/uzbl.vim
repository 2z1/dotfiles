" Vim syntax file
" Language:     Uzbl config syntax
" Maintainer:   Mason Larobina <mason.larobina@gmail.com> and grodzik
" Version:      0.1

" To install this syntax file place it in your `~/.vim/syntax/` directory.
" To enable automatic uzbl-config file type detection create a new file
" `~/.vim/ftdetect/uzbl.vim` with the following line inside:
"
"    au BufRead,BufNewFile  ~/.config/uzbl/*  set filetype=uzbl
" Or
"    au BufRead,BufNewFile  ~/.config/uzbl/config  set filetype=uzbl

" Issues:
"   1. The `sh` keyword is hilighted in script filenames (I.e. `download.sh`)
"   2. Hilighting inside @[]@, @()@, @<>@ and string regions would be nice.
"

if exists("b:current_syntax")
    finish
endif

syn keyword uzblKeyword back forward scroll reload reload_ign_cache stop zoom_in zoom_out toggle_zoom_type uri js script toggle_status spawn sync_spawn sh sync_sh talk_to_socket exit search search_reverse search_clear dehilight set dump_config dump_config_as_events chain print event request menu_add menu_link_add menu_image_add menu_editable_add menu_separator menu_link_separator menu_image_separator menu_editable_separator menu_remove menu_link_remove menu_image_remove menu_editable_remove hardcopy include

" Comments
syn match uzblTodo /TODO:/
syn region uzblComment start="^#" end="$" contains=uzblTodo

" Comment headings
syn region uzblSection start="^# ===" end="$"
syn region uzblSubSection start="^# ---" end="$"

" Integer and float matching
syn match uzblInt '\d\+'
syn match uzblFloat '\d\+\.\d*'

" Matches @INTERNAL_VAR and @{INTERNAL_VAR}
syn match uzblInternalExpand /@[A-Z_]\+/
syn match uzblInternalExpand /@{[A-Z_]}\+/

" Matches $ENVIRON_VAR
syn match uzblEnvironVariable /$[A-Za-z0-9_]\+/

" Matches @some_var and @{some_var}
syn match uzblExpand /@[A-Za-z0-9_]\+/

" Matches @command_alias at the beginning of a line.
syn match uzblMacroExpand /^@[A-Za-z0-9_]\+/
syn match uzblMacroExpand /^@{[A-Za-z0-9_]}\+/

" Matches \, \\, \@var and \@{var}
syn match uzblEscape /\\\\/
syn match uzblEscape /\\@/
syn match uzblEscape /\\@[A-Za-z0-9_]\+/
syn match uzblEscape /\\@{[A-Za-z0-9_]\+}/

" Match @[ xml data ]@ regions
syn region uzblXMLEscape start=+@\[+ end=+\]@+ end=+$+
syn region uzblEscape start=+\\@\[+ end=+\]\\@+

" Match @( shell command )@ regions
syn region uzblShellExec start=+@(+ end=+)@+ end=+$+
syn region uzblEscape start=+\\@(+ end=+)\\@+

" Match @< javascript command >@ regions
syn region uzblJSExec start=+@<+ end=+>@+ end=+$+
syn region uzblEscape start=+\\@<+ end=+>\\@+

" Match quoted regions
syn region uzblString start=+'+ end=+'+ end=+$+ contains=uzblExpand,uzblEscape
syn region uzblString start=+"+ end=+"+ end=+$+ contains=uzblExpand,uzblEscape

hi def link uzblComment Comment
hi def link uzblTodo Todo

hi def link uzblSection LineNr
hi def link uzblSubSection Special

hi def link uzblKeyword Keyword

hi def link uzblInt Number
hi def link uzblFloat Number

hi def link uzblExpand Type
hi def link uzblMacroExpand Macro
hi def link uzblEnvironVariable Number
hi def link uzblInternalExpand Identifier

hi def link uzblXMLEscape Macro
hi def link uzblShellExec Macro
hi def link uzblJSExec Macro

hi def link uzblEscape Special

hi def link uzblString Constant
