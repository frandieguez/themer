let g:indentLine_setColors  = 1
let g:indentLine_color_term = 8

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "seti"

let s:background = [ 16, "#0d1011" ]
let s:foreground = [ 17, "#f8fcf6" ]
let s:none       = [ "NONE", "" ]

" black
let s:color0  = [ 0, "#0f1317" ]
let s:color8  = [ 8, "#1d1d22" ]

" red
let s:color1  = [ 1, "#cd3f45" ]
let s:color9  = [ 9, "#cd3f45" ]

" green
let s:color2  = [ 2, "#1ad732" ]
let s:color10 = [ 10, "#9fca56" ]

" yellow
let s:color3  = [ 3, "#e6cd69" ]
let s:color11 = [ 11, "#e6cd69" ]

" blue
let s:color4  = [ 4, "#55b5db" ]
let s:color12 = [ 12, "#55b5db" ]

" magenta
let s:color5  = [ 5, "#5d3d7d" ]
let s:color13 = [ 13, "#aa00aa" ]

" cyan
let s:color6  = [ 6, "#55dbbe" ]
let s:color14 = [ 14, "#55dbbe" ]

" white
let s:color7  = [ 7, "#405159" ]
let s:color15 = [ 15, "#f8fcf6" ]

let s:color16 = [ 16, "#db7b55" ]
let s:color17 = [ 17, "#8a553f" ]
let s:color18 = [ 18, "#8ec43d" ]
let s:color19 = [ 19, "#3b758c" ]
let s:color20 = [ 20, "#43a5d5" ]
let s:color21 = [ 21, "#eeeeee" ]

function! <SID>set_hi(name, fg, bg, style)
  execute "hi " . a:name . " ctermfg=" . a:fg[0] . " ctermbg=" . a:bg[0] " cterm=" . a:style
  if a:fg[1] != ""
    execute "hi " . a:name . " guifg=" . a:fg[1]
  endif
  if a:bg[1] != ""
    execute "hi " . a:name . " guibg=" . a:bg[1]
  endif
  execute "hi " . a:name . " gui=" . a:style
endfun

call <SID>set_hi("Normal", s:color15, s:background, "NONE")
call <SID>set_hi("Cursor", s:none, s:color14, "NONE")
call <SID>set_hi("Visual", s:color3, s:color8, "NONE")
call <SID>set_hi("CursorLine", s:none, s:color0, "NONE")
call <SID>set_hi("CursorLineNR", s:color15, s:color0, "NONE")
call <SID>set_hi("CursorColumn", s:none, s:color5, "NONE")
call <SID>set_hi("ColorColumn", s:none, s:color0, "NONE")
call <SID>set_hi("LineNr", s:color7, s:color0, "NONE")
call <SID>set_hi("VertSplit", s:color8, s:color0, "NONE")
call <SID>set_hi("MatchParen", s:color1, s:none, "bold")
call <SID>set_hi("StatusLine", s:color15, s:color0, "bold")
call <SID>set_hi("StatusLineNC", s:color15, s:color0, "NONE")
call <SID>set_hi("Pmenu", s:none, s:color0, "NONE")
call <SID>set_hi("PmenuSel", s:none, s:color14, "NONE")
call <SID>set_hi("IncSearch", s:color15, s:color7, "NONE")
call <SID>set_hi("Search", s:color15, s:color7, "NONE")
call <SID>set_hi("Directory", s:color4, s:none, "NONE")
call <SID>set_hi("FoldColumn", s:color14, s:color0, "NONE")
call <SID>set_hi("Folded", s:color14, s:none, "NONE")
call <SID>set_hi("DiffAdd", s:color2, s:none, "bold")
call <SID>set_hi("DiffDelete", s:color1, s:none, "bold")
call <SID>set_hi("DiffChange", s:color3, s:none, "NONE")
call <SID>set_hi("DiffText", s:color3, s:color8, "NONE")
call <SID>set_hi("ErrorMsg", s:none, s:color1, "NONE")
call <SID>set_hi("NonText", s:color4, s:background, "NONE")
call <SID>set_hi("WarningMsg", s:color11, s:none, "NONE")

call <SID>set_hi("Boolean", s:color1, s:none, "NONE")
call <SID>set_hi("Character", s:color4, s:none, "NONE")
call <SID>set_hi("Comment", s:color4, s:none, "NONE")
call <SID>set_hi("Conditional", s:color2, s:none, "NONE")
call <SID>set_hi("Constant", s:color7, s:none, "NONE")
call <SID>set_hi("Define", s:color5, s:none, "NONE")
call <SID>set_hi("Float", s:color1, s:none, "NONE")
call <SID>set_hi("Function", s:color5, s:none, "NONE")
call <SID>set_hi("Identifier", s:color15, s:none, "NONE")
call <SID>set_hi("Keyword", s:color10, s:none, "bold")
call <SID>set_hi("Label", s:color11, s:none, "NONE")
call <SID>set_hi("Number", s:color1, s:none, "NONE")
call <SID>set_hi("Operator", s:color10, s:none, "NONE")
call <SID>set_hi("PreProc", s:color14, s:none, "bold")
call <SID>set_hi("Special", s:color15, s:none, "NONE")
call <SID>set_hi("SpecialKey", s:foreground, s:color8, "NONE")
call <SID>set_hi("Statement", s:color5, s:none, "NONE")
call <SID>set_hi("StorageClass", s:color10, s:none, "NONE")
call <SID>set_hi("String", s:color14, s:none, "NONE")
call <SID>set_hi("Tag", s:color11, s:none, "NONE")
call <SID>set_hi("Title", s:color1, s:none, "bold")
call <SID>set_hi("Todo", s:color4, s:none, "NONE")
call <SID>set_hi("Type", s:color11, s:none, "bold")
call <SID>set_hi("Underlined", s:none, s:none, "underline")

call <SID>set_hi("phpControlStructure", s:color10, s:none, "NONE")
call <SID>set_hi("phpNewObject", s:color10, s:none, "NONE")
call <SID>set_hi("phpTryStart", s:color9, s:none, "NONE")
call <SID>set_hi("phpTryCatch", s:color14, s:none, "NONE")
call <SID>set_hi("phpTryCatchedException", s:color9, s:none, "NONE")
call <SID>set_hi("phpTryFinally", s:color9, s:none, "NONE")
call <SID>set_hi("phpClasses", s:color13, s:none, "NONE")
call <SID>set_hi("phpOperator", s:color15, s:none, "NONE")
call <SID>set_hi("phpVariableSelector", s:color7, s:none, "NONE")
call <SID>set_hi("phpVariable", s:color15, s:none, "NONE")
call <SID>set_hi("phpKeywords", s:color15, s:none, "NONE")


call <SID>set_hi("phpComment", s:color4, s:none, "NONE")
call <SID>set_hi("phpDocComment", s:color4, s:none, "NONE")
call <SID>set_hi("phpDocTags", s:color17, s:none, "italic")
call <SID>set_hi("phpClass", s:color1, s:none, "NONE")
call <SID>set_hi("phpClasses", s:color5, s:none, "NONE")
call <SID>set_hi("phpFunction", s:color1, s:none, "NONE")
call <SID>set_hi("phpConstants", s:color1, s:none, "NONE")
call <SID>set_hi("phpKeyword", s:color11, s:none, "NONE")
call <SID>set_hi("phpStructureKeyword", s:color10, s:none, "NONE")
call <SID>set_hi("phpType", s:color19, s:none, "italic")
call <SID>set_hi("phpVarSelector", s:color4, s:none, "NONE")
call <SID>set_hi("phpMethodsVar", s:color13, s:none, "NONE")


hi rubyClass ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi rubyFunction ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi rubyConstant ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=208 ctermbg=NONE cterm=NONE guifg=#fd971f guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi rubyEscape ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi rubyControl ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi rubyException ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=95 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi javaScriptRailsFunction ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi cssURL ctermfg=208 ctermbg=NONE cterm=NONE guifg=#fd971f guibg=NONE gui=italic
hi cssFunctionName ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi cssColor ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi cssClassName ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi cssValueLength ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
