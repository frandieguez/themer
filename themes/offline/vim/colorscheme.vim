" Vim color file
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "offline"

" special
"foreground      = "eceff4
"foreground_bold = "eceff4
"cursor          = "eceff4
let s:background = [ 16, "1a1b22" ]

" black
let s:color0 = [ 0, "21232a" ]
let s:color8 = [ 8, "23323e" ]

" red
let s:color1 = [ 1, "af4444" ]
let s:color9 = [ 9, "f07676" ]

" green
let s:color2 = [ 2, "0d7c6e" ]
let s:color10 = [ 10, "19ebd0" ]

" yellow
let s:color3 = [ 3, "737012" ]
let s:color11 = [ 11, "e2db23" ]

" blue
let s:color4 = [ 4, "185880" ]
let s:color12 = [ 12, "446980" ]

" magenta
let s:color5 = [ 5, "8e217f" ]
let s:color13 = [ 13, "ee8ae1" ]

" cyan
let s:color6 = [ 6, "136479" ]
let s:color14 = [ 14, "23bae2" ]

" white
let s:color7 = [ 7, "#b8babe" ]
let s:color15 = [ 15, "#eceff4" ]

let s:dark_gray = [236, "#303030"]
let s:mid_gray = [102, "#878787"]
let s:default_white = [231, "#FFFFFF"]

let s:lavender = [183, "#dfafff"]
let s:light_purple = [225, "#ffdfff"]
let s:gray_purple = [146, "#afafd7"]

let s:pink = [218, "#ffafdf"]
let s:light_blue = [159, "#afffff"]
let s:mint = [158, "#afffd7"]
let s:light_yellow = [229, "#ffffaf"]

let s:dark_pink = [197, "#ff005f"]
let s:dark_green = [29, "#00875f"]
let s:dark_blue = [31, "#0087af"]

let s:none = ["NONE", ""]

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
call <SID>set_hi("Visual", s:none, s:color12, "NONE")
call <SID>set_hi("CursorLine", s:none, s:color0, "NONE")
call <SID>set_hi("CursorLineNR", s:color14, s:color0, "NONE")
call <SID>set_hi("CursorColumn", s:none, s:color12, "NONE")
call <SID>set_hi("ColorColumn", s:none, s:color0, "NONE")
call <SID>set_hi("LineNr", s:color12, s:color0, "NONE")
call <SID>set_hi("VertSplit", s:color0, s:color0, "NONE")
call <SID>set_hi("MatchParen", s:color1, s:none, "bold")
call <SID>set_hi("StatusLine", s:color15, s:color0, "bold")
call <SID>set_hi("StatusLineNC", s:color15, s:color0, "NONE")
call <SID>set_hi("Pmenu", s:none, s:color0, "NONE")
call <SID>set_hi("PmenuSel", s:none, s:color12, "NONE")
call <SID>set_hi("IncSearch", s:color15, s:color14, "NONE")
call <SID>set_hi("Search", s:color15, s:color14, "NONE")
call <SID>set_hi("Directory", s:color4, s:none, "NONE")
call <SID>set_hi("Folded", s:color12, s:none, "NONE")
call <SID>set_hi("Define", s:color13, s:none, "NONE")
call <SID>set_hi("DiffAdd", s:color2, s:none, "bold")
call <SID>set_hi("DiffDelete", s:color1, s:none, "bold")
call <SID>set_hi("DiffChange", s:color5, s:none, "bold")
call <SID>set_hi("DiffText", s:color5, s:color13, "bold")
call <SID>set_hi("ErrorMsg", s:none, s:color1, "NONE")
call <SID>set_hi("WarningMsg", s:color11, s:none, "NONE")
call <SID>set_hi("Boolean", s:color13, s:none, "NONE")
call <SID>set_hi("Character", s:color13, s:none, "NONE")
call <SID>set_hi("Comment", s:color12, s:none, "NONE")
call <SID>set_hi("Conditional", s:color12, s:none, "NONE")
call <SID>set_hi("Constant", s:color2, s:none, "NONE")
call <SID>set_hi("Float", s:color13, s:none, "NONE")
call <SID>set_hi("Function", s:color13, s:none, "NONE")
call <SID>set_hi("Identifier", s:color14, s:none, "NONE")
call <SID>set_hi("Keyword", s:color15, s:none, "bold")
call <SID>set_hi("Label", s:light_yellow, s:none, "NONE")
call <SID>set_hi("NonText", s:color4, s:background, "NONE")
call <SID>set_hi("Number", s:color7, s:none, "NONE")
call <SID>set_hi("Operator", s:color15, s:none, "NONE")
call <SID>set_hi("PreProc", s:color14, s:none, "bold")
call <SID>set_hi("Special", s:light_purple, s:none, "NONE")
call <SID>set_hi("SpecialKey", s:default_white, s:dark_gray, "NONE")
call <SID>set_hi("Statement", s:pink, s:none, "NONE")
call <SID>set_hi("StorageClass", s:mint, s:none, "NONE")
call <SID>set_hi("String", s:color7, s:none, "NONE")
call <SID>set_hi("Tag", s:color11, s:none, "NONE")
call <SID>set_hi("Title", s:color7, s:none, "bold")
call <SID>set_hi("Todo", s:color11, s:none, "inverse,bold")
call <SID>set_hi("Type", s:color14, s:none, "bold")
call <SID>set_hi("Underlined", s:none, s:none, "underline")

call <SID>set_hi("rubyClass", s:color13, s:none, "NONE")
call <SID>set_hi("rubyFunction", s:color13, s:none, "NONE")
call <SID>set_hi("rubyInterpolationDelimiter", s:none, s:none, "NONE")
call <SID>set_hi("rubySymbol", s:color13, s:none, "NONE")
call <SID>set_hi("rubyConstant", s:color10, s:none, "NONE")
call <SID>set_hi("rubyStringDelimiter", s:color14, s:none, "NONE")
call <SID>set_hi("rubyBlockParameter", s:color13, s:none, "NONE")
call <SID>set_hi("rubyBlock", s:color13, s:none, "NONE")
call <SID>set_hi("rubyInstanceVariable", s:color13, s:none, "NONE")
call <SID>set_hi("rubyInclude", s:color13, s:none, "NONE")
call <SID>set_hi("rubyGlobalVariable", s:color11, s:none, "NONE")
call <SID>set_hi("rubyRegexp", s:color11, s:none, "NONE")
call <SID>set_hi("rubyRegexpDelimiter", s:color11, s:none, "NONE")
call <SID>set_hi("rubyEscape", s:color6, s:none, "NONE")
call <SID>set_hi("rubyControl", s:color6, s:none, "NONE")
call <SID>set_hi("rubyRepeat", s:color6, s:none, "NONE")
call <SID>set_hi("rubyConditional", s:color13, s:none, "NONE")
call <SID>set_hi("rubyClassVariable", s:color11, s:none, "NONE")
call <SID>set_hi("rubyOperator", s:color13, s:none, "NONE")
call <SID>set_hi("rubyException", s:color10, s:none, "NONE")
call <SID>set_hi("rubyPseudoVariable", s:color10, s:none, "NONE")
call <SID>set_hi("rubyRailsUserClass", s:color10, s:none, "NONE")
call <SID>set_hi("rubyRailsARAssociationMethod", s:color10, s:none, "NONE")
call <SID>set_hi("rubyRailsARMethod", s:color10, s:none, "NONE")
call <SID>set_hi("rubyRailsRenderMethod", s:color10, s:none, "NONE")
call <SID>set_hi("rubyRailsMethod", s:color10, s:none, "NONE")
call <SID>set_hi("rubyArrayDelimiter", s:color13, s:none, "NONE")
call <SID>set_hi("rubyInterpolation", s:color5, s:none, "NONE")
call <SID>set_hi("rubyInterpolationDelimiter", s:color13, s:none, "NONE")

call <SID>set_hi("erubyDelimiter", s:none, s:none, "NONE")
call <SID>set_hi("erubyRailsMethod", s:color10, s:none, "NONE")

call <SID>set_hi("htmlTag", s:none, s:none, "NONE")
call <SID>set_hi("htmlEndTag", s:none, s:none, "NONE")
call <SID>set_hi("htmlTagName", s:none, s:none, "NONE")
call <SID>set_hi("htmlArg", s:none, s:none, "NONE")
call <SID>set_hi("htmlSpecialChar", s:color14, s:none, "NONE")

call <SID>set_hi("javaScriptFunction", s:color10, s:none, "NONE")
call <SID>set_hi("javaScriptRailsFunction", s:color10, s:none, "NONE")
call <SID>set_hi("javaScriptBraces", s:none, s:none, "NONE")

call <SID>set_hi("yamlKey", s:color13, s:none, "NONE")
call <SID>set_hi("yamlAnchor", s:none, s:none, "NONE")
call <SID>set_hi("yamlAlias", s:none, s:none, "NONE")
call <SID>set_hi("yamlDocumentHeader", s:color11, s:none, "NONE")
call <SID>set_hi("yamlPlainScalar", s:color14, s:none, "NONE")
call <SID>set_hi("yamlBlockCollectionItemStart", s:color13, s:none, "NONE")

call <SID>set_hi("cssURL", s:color5, s:none, "NONE")
call <SID>set_hi("cssFunctionName", s:color10, s:none, "NONE")
call <SID>set_hi("cssColor", s:color6, s:none, "NONE")
call <SID>set_hi("cssPseudoClassId", s:color11, s:none, "NONE")
call <SID>set_hi("cssClassName", s:color11, s:none, "NONE")
call <SID>set_hi("cssValueLength", s:color4, s:none, "NONE")
call <SID>set_hi("cssCommonAttr", s:color10, s:none, "NONE")
call <SID>set_hi("cssBraces", s:none, s:none, "NONE")

call <SID>set_hi("jsThis", s:color13, s:none, "NONE")
call <SID>set_hi("jsBraces", s:color13, s:none, "NONE")
call <SID>set_hi("jsGlobalObjects", s:color10, s:none, "NONE")

call <SID>set_hi("coffeeCurly", s:color6, s:none, "NONE")
call <SID>set_hi("coffeeObjAssign", s:color13, s:none, "NONE")

call <SID>set_hi("cjsxAttribProperty", s:color13, s:none, "NONE")

call <SID>set_hi("markdownH1", s:color14, s:none, "NONE")
call <SID>set_hi("markdownH2", s:color14, s:none, "NONE")
call <SID>set_hi("markdownH3", s:color14, s:none, "NONE")
call <SID>set_hi("markdownH4", s:color14, s:none, "NONE")
call <SID>set_hi("markdownH5", s:color14, s:none, "NONE")
call <SID>set_hi("markdownH6", s:color14, s:none, "NONE")
call <SID>set_hi("markdownHeadingDelimiter", s:color14, s:none, "NONE")
call <SID>set_hi("markdownRule", s:color14, s:none, "NONE")
