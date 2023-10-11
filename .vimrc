"https://vimdoc.sourceforge.net/htmldoc/options.html  
if has("syntax")  
  syntax on  
endif

"vim theme  
"https://www.slant.co/topics/480/~best-vim-color-schemes  
colo onehalfdark

"This option has the effect of making Vim either more Vi-compatible, or  
"make Vim behave in a more useful way.  
"put it at the very start  
set nocompatible

"search keyword highlighting  
set hlsearch

"while typing a search command, show where the pattern matches
set incsearch

"print the line number in front of each line
set nu

"auto indenting when starting a new line  
set autoindent

"enables automatic C program indenting  
set cindent

"number of spaces that <Tab> in the file counts for, no more than 8  
set ts=4

"number of spaces that <Tab> counts for while performing editing operations, no more than 8  
set sts=4

"number of spaces to use for each step of (auto)indent  
set shiftwidth=4

"status bar on the bottom  
"0: never, 1: only if there are at least two windows, 2:always  
set laststatus=2

"ignore case in search patterns  
set ignorecase

"each item allows a way to backspace over autoindent, line breaks, the start of insert  
set bs=indent,eol,start

"the title of the window will be set to the value of 'titlestring'  
set title

"lines longer than the width of the window will wrap and displaying continues on the next line  
set nowrap

"when a bracket is inserted, briefly jump to the matching one  
set showmatch

"override the ignorecase option if the search pattern contains upper case char  
set smartcase

"a <Tab> in front of a line inserts blanks  
set smarttab

"do smart autoindenting when starting a new line  
set smartindent

"show the line and column number of the cursor position  
set ruler

"when a file is read, vim tries to use the first mentioned char encoding  
set fileencodings=utf8,euc-kr

"put vim in paste mode  
set paste

"move cursor to last file edited position  
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endi
