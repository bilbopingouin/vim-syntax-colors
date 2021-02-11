" Vim color file
" Peronalised version: nature
" Last modification by bilbopingouin: 02.2021

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "nature"

"
" Keys for highlight
" - term (normal terminal)
"   * term=
"     bold, underline, undercurl*, strikethrough*, reverse, inverse
"     italic, standout, nocombine, NONE
"   * start= / stop=
" - cterm (color-terminal)
"   * cterm=
"   * ctermfg= foreground colour
"   * ctermbg= background colour
"   * ctermul= unterline colour
" - gui
"   * gui=
"   * guifg=
"   * guibg=
"   * guisp= undercurl/strikethrough
"   * font=
"

"""""""""""""""""""""""""""""""""""""""""""""""
" General Configuration
"""""""""""""""""""""""""""""""""""""""""""""""

" Normal/Default text
if &background == "dark"
  hi Normal	guifg=#c6d4dd	  guibg=#2a2a36
  hi Normal	ctermfg=gray	  ctermbg=235
else
  hi Normal	guifg=#000020	  guibg=#c0c0c0
  hi Normal	ctermfg=235	  ctermbg=251
endif

" Error messages on the command line
hi ErrorMsg	guifg=#ffffff	  guibg=#287eff
hi ErrorMsg	ctermfg=22	  ctermbg=159

" Visual selection
hi Visual	guifg=#8080ff	  guibg=fg	    gui=reverse
hi Visual	ctermfg=251	  ctermbg=22	    cterm=reverse

" Visual selection - 'Not Owning the Selection'
hi VisualNOS	guifg=#8080ff	  guibg=fg	    gui=reverse,underline
hi VisualNOS	ctermfg=249	  ctermbg=fg	    cterm=reverse,underline

" TODO highlighting
hi Todo		guifg=#d14a14	  guibg=#1248d1
hi Todo		ctermfg=18	  ctermbg=22	    cterm=bold

" Last search pattern highlighting
hi Search	guifg=#90fff0	  guibg=#2050d0
hi Search	ctermfg=white	  ctermbg=darkblue  cterm=underline
hi Search	term=underline

" 'incsearch' highlighting: when typing
hi IncSearch	guifg=#b0ffff	  guibg=#2050d0
hi IncSearch	ctermfg=darkblue  ctermbg=gray

" Meta and special keys from :map or from listchars
hi SpecialKey	guifg=darkgrey
hi SpecialKey	ctermfg=darkgrey

" Directory name and other special names in listings
hi Directory	guifg=cyan
hi Directory	ctermfg=darkcyan

" Titles for outputs of :set all/:autocmd/..
hi Title	guifg=magenta			      gui=none
hi Title	ctermfg=69			      cterm=bold

" Warning messages
hi WarningMsg	guifg=red
hi WarningMsg	ctermfg=99

" Current match in the wildmenu
hi WildMenu	guifg=yellow	    guibg=black
hi WildMenu	ctermfg=114	    ctermbg=black	cterm=none
hi WildMenu	term=none

" Show mode message, e.g. -- INSERT --
hi ModeMsg	guifg=#22cce2
hi ModeMsg	ctermfg=darkcyan

" |more-prompt|
hi MoreMsg	guifg=darkgreen
hi MoreMsg	ctermfg=darkcyan

" |hit-enter| ask with the yes/no question
hi Question	guifg=green			    gui=none
hi Question	ctermfg=green			    cterm=none

" Special characters, like @ to mark the line kipping, also for listchars
hi NonText	guifg=darkgrey
hi NonText	ctermfg=darkgrey

" Line separting the vertiall-split windows
hi VertSplit	guifg=black	  guibg=darkgray    gui=none
hi VertSplit	ctermfg=black	  ctermbg=gray 	    cterm=none
hi VertSplit	term=none

" :number :# :number :relativenumber
hi LineNr	guifg=#90f020
hi LineNr	ctermfg=green			    cterm=none

" Comments colours
hi Comment	ctermfg=darkgray
hi Comment	guifg=#808080

" Constants: includes: String, Character, Number, Boolean, Floar
hi Constant	guifg=#ffa0a0
hi Constant	ctermfg=75			    cterm=none

" Special characters, includes: SpecialChar, Tag, Delimiter, SpecialComment, Debug
hi Special	guifg=Orange			    gui=none
hi Special	ctermfg=130			    cterm=none

" Any variable name, includes: Function
hi Identifier	guifg=#40ffff
hi Identifier	ctermfg=34			    cterm=none

" Any statement, includes: Conditional, Repeat, Label, Operator, Keyword, Exception
if &background == "dark"
  hi Statement	guifg=#ffff60			    gui=none
  hi Statement	ctermfg=107			    cterm=none
else
  hi Statement	guifg=#ffff60			    gui=none
  hi Statement	ctermfg=blue			    cterm=none
endif

" Generic pre-processors, includes: Include, Define, Macro, PreCondit (#if, #else...)
hi PreProc	guifg=#ff80ff			    gui=none
hi PreProc	ctermfg=darkblue		    cterm=bold

" Type declaration (int, double), includes: StorageClass (static, register, volatile), Structure (struct, union, enum), Typedef (typedef)
hi Type		guifg=#60ff60			    gui=none
hi Type		ctermfg=179			    cterm=none

" Text that stands out, html links, etc.
hi Underlined					    cterm=underline
hi Underlined					    term=underline

" left-blank, hidden |hl-Ignore|
hi Ignore	guifg=bg
hi Ignore	ctermfg=bg

" Strings, sub-category of Constants
hi String	guifg=darkred
hi String	ctermfg=28

" Some elements for the GUI version
"set guifont=Consolas:h9:cANSI:qDRAFT


"""""""""""""""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""""""""""""""

" Statusline of the current window
hi StatusLine	guifg=white	  guibg=darkcyan	gui=none
hi StatusLine	ctermfg=white     ctermbg=darkcyan	cterm=none
hi StatusLine	term=none

" Status line of the non current window (e.g. split window)
hi StatusLineNC	guifg=black	  guibg=darkgray	gui=none
hi StatusLineNC	ctermfg=darkgray  ctermbg=darkgray	cterm=none
hi StatusLineNC	term=none

" StatusLineTerm: current window if it is a terminal
" StatusLineTermNC: non-current window if it is not a terminal

" Specific colors for the status line defined here that I use
hi StatusLineFile guifg=black guibg=lightgray	gui=none
hi StatusLineFile ctermfg=black	  ctermbg=lightgray cterm=none
hi StatusLineFile term=none

hi StatusNonFile guifg=lightgray guibg=darkgray	gui=none
hi StatusNonFile ctermfg=lightgray ctermbg=darkgray  cterm=none
hi StatusNonFile term=none

hi StatusLineMode guifg=white guibg=darkcyan	gui=bold
hi StatusLineMode ctermfg=white	  ctermbg=darkcyan  cterm=bold
hi StatusLineMode term=none

hi StatusLineDetails guifg=lightgray guibg=darkgray gui=none
hi StatusLineDetails ctermfg=lightgray ctermbg=darkgray  cterm=none
hi StatusLineDetails term=none


"""""""""""""""""""""""""""""""""""""""""""""""
" Folds
"""""""""""""""""""""""""""""""""""""""""""""""

" Line used for folded lines
hi Folded	guifg=#808080 guibg=#000040	gui=bold
hi Folded	ctermfg=darkgrey  ctermbg=235	    cterm=bold
hi Folded	term=bold

" |foldcolumn| a column on the side which indicates that there are folds
hi FoldColumn	guifg=#808080 guibg=#000040	gui=bold
hi FoldColumn	ctermfg=darkgrey  ctermbg=235	    cterm=bold
hi FoldColumn	term=bold


"""""""""""""""""""""""""""""""""""""""""""""""
" Diffs
"""""""""""""""""""""""""""""""""""""""""""""""

" Added line, default: hi DiffAdd	  ctermbg=4 guibg=darkblue
hi DiffAdd	  guifg=yellow    guibg=darkblue    gui=bold
hi DiffAdd	  ctermfg=10	  ctermbg=17	    cterm=bold
" Changed line, default: hi DiffChange	  term=bold ctermbg=13 guibg=darkmagenta
hi DiffChange	  guifg=yellow    guibg=darkblue    gui=none
hi DiffChange	  ctermfg=10	  ctermbg=17	    cterm=none
" Deleted line, default: hi DiffDelete	  term=bold ctermfg=12 ctermbg=14 gui=bold guifg=Blue guibg=DarkCyan
hi DiffDelete	  guifg=yellow	  guibg=darkblue    gui=bold
hi DiffDelete	  ctermfg=10	  ctermbg=17	    cterm=bold
" Text change within a changed line, default: hi DiffText	  term=reverse cterm=bold ctermbg=9 gui=bold guibg=Red
hi DiffText	  guifg=yellow    guibg=darkred	    gui=bold
hi DiffText	  ctermfg=10	  ctermbg=88	    cterm=bold
hi DiffText	  term=reverse


"""""""""""""""""""""""""""""""""""""""""""""""
" Cursor
"""""""""""""""""""""""""""""""""""""""""""""""

" Normal cursor colour
hi Cursor	guifg=black   guibg=yellow
hi Cursor	ctermfg=black	  ctermbg=yellow

" Cursor colour when language mapping are used
hi lCursor	guifg=black   guibg=white
hi lCursor	ctermfg=black	  ctermbg=white


"""""""""""""""""""""""""""""""""""""""""""""""
" Tabline
"""""""""""""""""""""""""""""""""""""""""""""""

" Not active tab label
hi TabLine      guifg=black	  guibg=gray	    gui=none
hi TabLine      ctermfg=black     ctermbg=gray      cterm=none

" Tab line when there are not label
hi TabLineFill	guifg=black	  guibg=gray	    gui=none
hi TabLineFill	ctermfg=black     ctermbg=gray      cterm=none

" Active tab page label
hi TabLineSel	guifg=white	  guibg=darkcyan    gui=none
hi TabLineSel	ctermfg=white     ctermbg=darkcyan  cterm=bold


"""""""""""""""""""""""""""""""""""""""""""""""
" Pop-up menu
"""""""""""""""""""""""""""""""""""""""""""""""

" suggested by tigmoid, 2008 Jul 18 & removed by bilbopingouin
" Normal item
" hi Pmenu	guifg=#c0c0c0 guibg=#404080
"
" Selected item
" hi PmenuSel	guifg=#c0c0c0 guibg=#2050d0
"
" Scroll-bar
" hi PmenuSbar	guifg=blue    guibg=darkgray
"
" Thumb of the scrollbar
" hi PmenuThumb	guifg=#c0c0c0


"""""""""""""""""""""""""""""""""""""""""""""""
" HTML
"""""""""""""""""""""""""""""""""""""""""""""""

" HTML titles
hi htmlH1	guifg=#ff0000			    gui=bold
hi htmlH1	ctermfg=27	                    cterm=bold

hi htmlH2	guifg=#00ff8b			    gui=bold
hi htmlH2	ctermfg=84			    cterm=bold

hi htmlH3	guifg=#f9ff71			    gui=bold
hi htmlH3	ctermfg=142			    cterm=bold

hi htmlH4	guifg=#71d5ec			    gui=bold
hi htmlH4	ctermfg=39			    cterm=bold

hi htmlH5	guifg=#fb9bda			    gui=bold
hi htmlH5	ctermfg=147			    cterm=bold

hi htmlH6	guifg=#bd55ee			    gui=bold
hi htmlH6	ctermfg=129			    cterm=bold

" Tag names
hi htmlTagName	guifg=cyan			    gui=underline
hi htmlTagName	ctermfg=cyan			    cterm=underline

" Italic/bold text
hi htmlItalic	guifg=yellow			    gui=italic
hi htmlItalic	ctermfg=yellow			    cterm=italic

hi htmlBold	guifg=darkgreen			    gui=bold
hi htmlBold	ctermfg=darkgreen		    cterm=bold

hi htmlBoldItalic guifg=black	  guibg=yellow	    gui=bold,italic
hi htmlBoldItalic ctermfg=black	  ctermbg=yellow    cterm=bold,italic


"""""""""""""""""""""""""""""""""""""""""""""""
" Markup
"""""""""""""""""""""""""""""""""""""""""""""""

hi markdownRule	guifg=darkgrey	  guibg=#282828	    gui=none
hi markdownRule	ctermfg=darkgrey  ctermbg=233	    cterm=none

hi markdownListMarker guifg=yellow		    gui=none
hi markdownListMarker ctermfg=yellow		    cterm=none

hi markdownUrl	guifg=cyan			    gui=underline
hi markdownUrl	ctermfg=cyan			    cterm=underline

" Italic/bold text
hi markdownItalic guifg=yellow			    gui=italic
hi markdownItalic ctermfg=yellow		    cterm=italic

hi markdownBold	guifg=darkgreen			    gui=bold
hi markdownBold	ctermfg=darkgreen		    cterm=bold

hi markdownBoldItalic guifg=black     guibg=yellow      gui=bold,italic
hi markdownBoldItalic ctermfg=black   ctermbg=yellow    cterm=bold,italic

"""""""""""""""""""""""""""""""""""""""""""""""
" Terminal
"""""""""""""""""""""""""""""""""""""""""""""""
hi Terminal	guifg=#282828
hi Terminal	ctermbg=233
