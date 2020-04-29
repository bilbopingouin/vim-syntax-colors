" Vim color file
" Debian version (Wheezy): darkblue
" Maintainer:	Bohdan Vlasyuk <bohdan@vstu.edu.ua>
" Last Change:	2008 Jul 18
" Peronalised version: darkblue_t
" Last modification by bilbopingouin -- 04.2020

" darkblue -- for those who prefer dark background
" [note: looks bit uglier with some terminal palettes,
" but is fine on default linux console palette.]

"set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "darkblue_t"

if &background == "dark"
  hi Normal	guifg=#c0c0c0 guibg=#000028				ctermfg=gray	  ctermbg=black
else
  hi Normal	guifg=#000020 guibg=#c0c0c0				ctermfg=black	  ctermbg=white
endif
hi ErrorMsg	guifg=#ffffff guibg=#287eff				ctermfg=red	  ctermbg=lightblue
hi Visual	guifg=#8080ff guibg=fg		gui=reverse		ctermfg=lightblue ctermbg=darkred   cterm=reverse
hi VisualNOS	guifg=#8080ff guibg=fg		gui=reverse,underline	ctermfg=lightblue ctermbg=fg	    cterm=reverse,underline
hi Todo		guifg=#d14a14 guibg=#1248d1				ctermfg=red	  ctermbg=darkblue  cterm=bold
hi Search	guifg=#90fff0 guibg=#2050d0				ctermfg=white	  ctermbg=darkblue  cterm=underline term=underline
hi IncSearch	guifg=#b0ffff guibg=#2050d0				ctermfg=darkblue  ctermbg=gray

hi SpecialKey	guifg=cyan						ctermfg=darkcyan
hi Directory	guifg=cyan						ctermfg=cyan
hi Title	guifg=magenta			gui=none		ctermfg=magenta			    cterm=bold
hi WarningMsg	guifg=red						ctermfg=red
hi WildMenu	guifg=yellow  guibg=black				ctermfg=yellow	  ctermbg=black	    cterm=none	    term=none
hi ModeMsg	guifg=#22cce2						ctermfg=lightblue
hi MoreMsg								ctermfg=darkgreen
hi Question	guifg=green			gui=none		ctermfg=green			    cterm=none
hi NonText	guifg=#0030ff						ctermfg=darkblue

" Statusline
hi StatusLine	guifg=blue    guibg=darkgray	gui=none		ctermfg=white     ctermbg=darkcyan  cterm=none	    term=none
hi StatusLineNC	guifg=black   guibg=darkgray	gui=none		ctermfg=darkgray  ctermbg=darkgray  cterm=none 	    term=none
hi StatusLineFile							ctermfg=black	  ctermbg=lightgray cterm=none	    term=none
hi StatusNonFile guifg=blue   guibg=darkgray	gui=none		ctermfg=lightgray ctermbg=darkgray  cterm=none	    term=none
hi StatusLineMode							ctermfg=white	  ctermbg=darkcyan  cterm=bold	    term=none
hi StatusLineDetails							ctermfg=lightgray ctermbg=darkgray  cterm=none	    term=none
hi VertSplit	guifg=black   guibg=darkgray	gui=none		ctermfg=black	  ctermbg=gray 	    cterm=none 	    term=none

hi Folded	guifg=#808080 guibg=#000040				ctermfg=darkgrey  ctermbg=black	    cterm=bold	    term=bold
hi FoldColumn	guifg=#808080 guibg=#000040				ctermfg=darkgrey  ctermbg=black	    cterm=bold 	    term=bold
hi LineNr	guifg=#90f020						ctermfg=green			    cterm=none

" hi DiffAdd		      guibg=darkblue						  ctermbg=darkblue  cterm=none	    term=none 
" hi DiffChange		      guibg=darkmagenta						  ctermbg=magenta   cterm=none
" hi DiffDelete	guifg=Blue    guibg=DarkCyan	gui=bold 		ctermfg=blue	  ctermbg=cyan	  
" hi DiffText		      guibg=Red		gui=bold				  ctermbg=red	    cterm=bold 

hi Cursor	guifg=black   guibg=yellow				ctermfg=black	  ctermbg=yellow
hi lCursor	guifg=black   guibg=white				ctermfg=black	  ctermbg=white

" TabLine colors
hi TabLine                                                              ctermfg=black     ctermbg=gray      cterm=none
hi TabLineFill                                                          ctermfg=black     ctermbg=gray      cterm=none
hi TabLineSel                                                           ctermfg=white     ctermbg=darkcyan  cterm=bold

hi Comment	guifg=#80a0ff						ctermfg=darkgray
hi Constant	guifg=#ffa0a0						ctermfg=magenta			    cterm=none
hi Special	guifg=Orange 			gui=none		ctermfg=brown			    cterm=none 
hi Identifier	guifg=#40ffff						ctermfg=cyan			    cterm=none
if &background == "dark"
  hi Statement	guifg=#ffff60			gui=none		ctermfg=yellow			    cterm=none 
else
  hi Statement	guifg=#ffff60			gui=none		ctermfg=blue			    cterm=none 
endif
hi PreProc	guifg=#ff80ff			gui=none 		ctermfg=darkblue		    cterm=bold
hi type		guifg=#60ff60			gui=none 		ctermfg=green			    cterm=none
hi Underlined												    cterm=underline term=underline
hi Ignore	guifg=bg						ctermfg=bg
hi String								ctermfg=darkred

" suggested by tigmoid, 2008 Jul 18 & removed by T. Le Bleis
" hi Pmenu	guifg=#c0c0c0 guibg=#404080
" hi PmenuSel	guifg=#c0c0c0 guibg=#2050d0
" hi PmenuSbar	guifg=blue    guibg=darkgray
" hi PmenuThumb	guifg=#c0c0c0

" For spaces/tabs
highlight NonText	guifg=darkgrey					ctermfg=darkgrey
highlight SpecialKey	guifg=darkgrey					ctermfg=darkgrey

" Some syntax specific
hi htmlH1								ctermfg=grey	  ctermbg=darkred   cterm=bold
hi htmlH2								ctermfg=196			    cterm=bold
hi htmlH3								ctermfg=124			    cterm=bold
hi htmlH4								ctermfg=lightblue		    cterm=bold
hi htmlH5								ctermfg=lightgreen		    cterm=bold
hi htmlH6								ctermfg=lightred		    cterm=bold
hi markdownRule								ctermfg=darkgrey  ctermbg=black	    cterm=none
hi markdownListMarker							ctermfg=yellow			    cterm=none
hi htmlTagName								ctermfg=cyan			    cterm=underline
hi markdownUrl								ctermfg=cyan			    cterm=underline
hi htmlItalic								ctermfg=yellow			    cterm=italic
hi markdownItalic							ctermfg=yellow			    cterm=italic
hi htmlBold								ctermfg=darkgreen		    cterm=bold
hi markdownBold								ctermfg=darkgreen		    cterm=bold
hi htmlBoldItalic							ctermfg=black	  ctermbg=yellow    cterm=bold,italic 
hi markdownBoldItalic							ctermfg=black	  ctermbg=yellow    cterm=bold,italic 

" Vimdiff
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

" Some elements for the GUI version
set guifont=Noto\ Mono\ 10
