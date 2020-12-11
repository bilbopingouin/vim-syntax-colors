" Vim color file
" Based on
"
" Debian version (Wheezy): darkblue
" Maintainer:	Bohdan Vlasyuk <bohdan@vstu.edu.ua>
" Last Change:	2008 Jul 18
"
" But heavily modified
" Peronalised version: darkblue_t
" Last modification by bilbopingouin: 12.2020

"set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "darkblue_t"

"""""""""""""""""""""""""""""""""""""""""""""""
" General Configuration
"""""""""""""""""""""""""""""""""""""""""""""""

" Normal/Default text
if &background == "dark"
  hi Normal	guifg=#c0c0c0 guibg=#282828				ctermfg=gray	  ctermbg=235
else
  hi Normal	guifg=#000020 guibg=#c0c0c0				ctermfg=black	  ctermbg=white
endif

" Error messages on the command line
hi ErrorMsg	guifg=#ffffff guibg=#287eff				ctermfg=red	  ctermbg=lightblue

" Visual selection
hi Visual	guifg=#8080ff guibg=fg		gui=reverse		ctermfg=lightblue ctermbg=darkred   cterm=reverse

" Visual selection - 'Not Owning the Selection'
hi VisualNOS	guifg=#8080ff guibg=fg		gui=reverse,underline	ctermfg=lightblue ctermbg=fg	    cterm=reverse,underline

" TODO highlighting
hi Todo		guifg=#d14a14 guibg=#1248d1				ctermfg=18	  ctermbg=220  cterm=bold

" Last search pattern highlighting
hi Search	guifg=#90fff0 guibg=#2050d0				ctermfg=white	  ctermbg=darkblue  cterm=underline term=underline

" 'incsearch' highlighting: when typing
hi IncSearch	guifg=#b0ffff guibg=#2050d0				ctermfg=darkblue  ctermbg=gray

" Meta and special keys from :map or from listchars
"hi SpecialKey	guifg=cyan						ctermfg=darkcyan
hi SpecialKey	guifg=darkgrey						ctermfg=darkgrey

" Directory name and other special names in listings
hi Directory	guifg=cyan						ctermfg=cyan

" Titles for outputs of :set all/:autocmd/..
hi Title	guifg=magenta			gui=none		ctermfg=magenta			    cterm=bold

" Warning messages
hi WarningMsg	guifg=red						ctermfg=red

" Current match in the wildmenu
hi WildMenu	guifg=yellow  guibg=black				ctermfg=yellow	  ctermbg=black	    cterm=none	    term=none

" Show mode message, e.g. -- INSERT --
hi ModeMsg	guifg=#22cce2						ctermfg=lightblue

" |more-prompt|
hi MoreMsg								ctermfg=darkgreen

" |hit-enter| ask with the yes/no question
hi Question	guifg=green			gui=none		ctermfg=green			    cterm=none

" Special characters, like @ to mark the line kipping, also for listchars
"hi NonText	guifg=#0030ff						ctermfg=darkblue
hi NonText	guifg=darkgrey					ctermfg=darkgrey

" Line separting the vertiall-split windows
hi VertSplit	guifg=black   guibg=darkgray	gui=none		ctermfg=black	  ctermbg=gray 	    cterm=none 	    term=none

" :number :# :number :relativenumber
hi LineNr	guifg=#90f020						ctermfg=green			    cterm=none

" Comments colours
hi Comment	guifg=#80a0ff						ctermfg=darkgray

" Constants: includes: String, Character, Number, Boolean, Floar
hi Constant	guifg=#ffa0a0						ctermfg=magenta			    cterm=none

" Special characters, includes: SpecialChar, Tag, Delimiter, SpecialComment, Debug
hi Special	guifg=Orange 			gui=none		ctermfg=brown			    cterm=none 

" Any variable name, includes: Function
hi Identifier	guifg=#40ffff						ctermfg=cyan			    cterm=none

" Any statement, includes: Conditional, Repeat, Label, Operator, Keyword, Exception
if &background == "dark"
  hi Statement	guifg=#ffff60			gui=none		ctermfg=yellow			    cterm=none 
else
  hi Statement	guifg=#ffff60			gui=none		ctermfg=blue			    cterm=none 
endif

" Generic pre-processors, includes: Include, Define, Macro, PreCondit (#if, #else...)
hi PreProc	guifg=#ff80ff			gui=none 		ctermfg=darkblue		    cterm=bold

" Type declaration (int, double), includes: StorageClass (static, register, volatile), Structure (struct, union, enum), Typedef (typedef)
hi Type		guifg=#60ff60			gui=none 		ctermfg=green			    cterm=none

" Text that stands out, html links, etc.
hi Underlined												    cterm=underline term=underline

" left-blank, hidden |hl-Ignore|
hi Ignore	guifg=bg						ctermfg=bg

" Strings, sub-category of Constants
hi String								ctermfg=darkred

" Some elements for the GUI version
set guifont=Noto\ Mono\ 10

"""""""""""""""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""""""""""""""

" Statusline of the current window
hi StatusLine	guifg=blue    guibg=darkgray	gui=none		ctermfg=white     ctermbg=darkcyan  cterm=none	    term=none

" Status line of the non current window (e.g. split window)
hi StatusLineNC	guifg=black   guibg=darkgray	gui=none		ctermfg=darkgray  ctermbg=darkgray  cterm=none 	    term=none

" StatusLineTerm: current window if it is a terminal
" StatusLineTermNC: non-current window if it is not a terminal

" Specific colors for the status line defined here that I use
hi StatusLineFile							ctermfg=black	  ctermbg=lightgray cterm=none	    term=none
hi StatusNonFile guifg=blue   guibg=darkgray	gui=none		ctermfg=lightgray ctermbg=darkgray  cterm=none	    term=none
hi StatusLineMode							ctermfg=white	  ctermbg=darkcyan  cterm=bold	    term=none
hi StatusLineDetails							ctermfg=lightgray ctermbg=darkgray  cterm=none	    term=none


"""""""""""""""""""""""""""""""""""""""""""""""
" Folds
"""""""""""""""""""""""""""""""""""""""""""""""

" Line used for folded lines
hi Folded	guifg=#808080 guibg=#000040				ctermfg=darkgrey  ctermbg=235	    cterm=bold	    term=bold

" |foldcolumn| a column on the side which indicates that there are folds
hi FoldColumn	guifg=#808080 guibg=#000040				ctermfg=darkgrey  ctermbg=235	    cterm=bold 	    term=bold


"""""""""""""""""""""""""""""""""""""""""""""""
" Diffs
"""""""""""""""""""""""""""""""""""""""""""""""

" hi DiffAdd		      guibg=darkblue						  ctermbg=darkblue  cterm=none	    term=none 
" hi DiffChange		      guibg=darkmagenta						  ctermbg=magenta   cterm=none
" hi DiffDelete	guifg=Blue    guibg=DarkCyan	gui=bold 		ctermfg=blue	  ctermbg=cyan	  
" hi DiffText		      guibg=Red		gui=bold				  ctermbg=red	    cterm=bold 
"
" Added line, default: hi DiffAdd	  ctermbg=4 guibg=darkblue 
" hi DiffAdd		      guibg=darkblue						  ctermbg=darkblue  cterm=none	    term=none 
hi DiffAdd	  guifg=yellow    guibg=darkblue    gui=bold		ctermfg=10	  ctermbg=17	    cterm=bold
" Changed line, default: hi DiffChange	  term=bold ctermbg=13 guibg=darkmagenta 
" hi DiffChange		      guibg=darkmagenta						  ctermbg=magenta   cterm=none
hi DiffChange	  guifg=yellow    guibg=darkblue    gui=none		ctermfg=10	  ctermbg=17	    cterm=none
" Deleted line, default: hi DiffDelete	  term=bold ctermfg=12 ctermbg=14 gui=bold guifg=Blue guibg=DarkCyan 
" hi DiffDelete	guifg=Blue    guibg=DarkCyan	gui=bold 		ctermfg=blue	  ctermbg=cyan	  
hi DiffDelete	  guifg=yellow	  guibg=darkblue    gui=bold		ctermfg=10	  ctermbg=17	    cterm=bold 
" Text change within a changed line, default: hi DiffText	  term=reverse cterm=bold ctermbg=9 gui=bold guibg=Red 
" hi DiffText		      guibg=Red		gui=bold				  ctermbg=red	    cterm=bold 
hi DiffText	  guifg=yellow    guibg=darkred	    gui=bold		ctermfg=10	  ctermbg=88	    cterm=bold	    term=reverse


"""""""""""""""""""""""""""""""""""""""""""""""
" Cursor
"""""""""""""""""""""""""""""""""""""""""""""""

" Normal cursor colour
hi Cursor	guifg=black   guibg=yellow				ctermfg=black	  ctermbg=yellow

" Cursor colour when language mapping are used
hi lCursor	guifg=black   guibg=white				ctermfg=black	  ctermbg=white


"""""""""""""""""""""""""""""""""""""""""""""""
" Tabline
"""""""""""""""""""""""""""""""""""""""""""""""

" Not active tab label
hi TabLine                                                              ctermfg=black     ctermbg=gray      cterm=none

" Tab line when there are not label
hi TabLineFill                                                          ctermfg=black     ctermbg=gray      cterm=none

" Active tab page label
hi TabLineSel                                                           ctermfg=white     ctermbg=darkcyan  cterm=bold


"""""""""""""""""""""""""""""""""""""""""""""""
" Pop-up menu
"""""""""""""""""""""""""""""""""""""""""""""""

" suggested by tigmoid, 2008 Jul 18 & removed by T. Le Bleis
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
hi htmlH1								ctermfg=grey	  ctermbg=darkred   cterm=bold
hi htmlH2								ctermfg=196			    cterm=bold
hi htmlH3								ctermfg=124			    cterm=bold
hi htmlH4								ctermfg=lightblue		    cterm=bold
hi htmlH5								ctermfg=lightgreen		    cterm=bold
hi htmlH6								ctermfg=lightred		    cterm=bold

" Tag names
hi htmlTagName								ctermfg=cyan			    cterm=underline

" Italic/bold text
hi htmlItalic								ctermfg=yellow			    cterm=italic
hi htmlBold								ctermfg=darkgreen		    cterm=bold
hi htmlBoldItalic							ctermfg=black	  ctermbg=yellow    cterm=bold,italic 


"""""""""""""""""""""""""""""""""""""""""""""""
" Markup
"""""""""""""""""""""""""""""""""""""""""""""""

hi markdownRule								ctermfg=darkgrey  ctermbg=233	    cterm=none
hi markdownListMarker							ctermfg=yellow			    cterm=none
hi markdownUrl								ctermfg=cyan			    cterm=underline

" Italic/bold text
hi markdownItalic							ctermfg=yellow			    cterm=italic
hi markdownBold								ctermfg=darkgreen		    cterm=bold
hi markdownBoldItalic							ctermfg=black	  ctermbg=yellow    cterm=bold,italic 

