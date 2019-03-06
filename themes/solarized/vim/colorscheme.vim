let g:indentLine_setColors  = 1
let g:indentLine_color_term = 0

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "solarized"

let s:none       = [ "NONE", "" ]
let s:background = [ 8, "#1c1d22" ]
let s:foreground = [ 12, "#dbdcdd" ]
let s:color0     = [ 0,  "#073642" ]
let s:color1     = [ 1,  "#DC322F" ]
let s:color2     = [ 2,  "#859900" ]
let s:color3     = [ 3,  "#B58900" ]
let s:color4     = [ 4,  "#268BD2" ]
let s:color5     = [ 5,  "#D33682" ]
let s:color6     = [ 6,  "#2AA198" ]
let s:color7     = [ 7,  "#EEE8D5" ]
let s:color8     = [ 8,  "#002B36" ]
let s:color9     = [ 9,  "#CB4B16" ]
let s:color10    = [ 10, "#586E75" ]
let s:color11    = [ 11, "#657B83" ]
let s:color12    = [ 12, "#839496" ]
let s:color13    = [ 13, "#6C71C4" ]
let s:color14    = [ 14, "#93A1A1" ]
let s:color15    = [ 15, "#FDF6E3" ]

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

set fillchars=" "

" Editor
call <SID>set_hi("Cursor",                       s:none,       s:color11,    "NONE")
call <SID>set_hi("CursorLine",                   s:none,       s:color0,     "NONE")
call <SID>set_hi("CursorLineNR",                 s:color10,    s:color8,     "NONE")
call <SID>set_hi("LineNr",                       s:color10,    s:color0,     "NONE")
call <SID>set_hi("multiple_cursors_cursor",      s:none,       s:color11,    "NONE")
call <SID>set_hi("Normal",                       s:color12,    s:none,       "NONE")

" Number column
call <SID>set_hi("CursorColumn",                 s:none,       s:color5,     "NONE")
call <SID>set_hi("FoldColumn",                   s:color6,     s:none,       "NONE")
call <SID>set_hi("Folded",                       s:color6,     s:none,       "NONE")
call <SID>set_hi("SignColumn",                   s:color6,     s:none,       "NONE")

" Delimiter
call <SID>set_hi("ColorColumn",                  s:none,       s:color0,     "NONE")
call <SID>set_hi("VertSplit",                    s:background, s:background, "NONE")
call <SID>set_hi("TabLine",                      s:none,       s:none,       "NONE")
call <SID>set_hi("TabLineFill",                  s:none,       s:none,       "NONE")
call <SID>set_hi("TabLineSel",                   s:none,       s:none,       "NONE")

" File Navigation/Searching
call <SID>set_hi("Directory",                    s:color3,     s:none,       "NONE")
call <SID>set_hi("IncSearch",                    s:color0,     s:color3,     "NONE")
call <SID>set_hi("Search",                       s:color0,     s:color3,     "NONE")

" Completion menu
call <SID>set_hi("Pmenu",                        s:none,       s:color0,     "NONE")
call <SID>set_hi("PmenuSel",                     s:none,       s:color8,     "NONE")

" Status
call <SID>set_hi("StatusLine",                   s:color15,    s:color0,     "NONE")
call <SID>set_hi("StatusLineNC",                 s:none,       s:color0,     "NONE")
call <SID>set_hi("Title",                        s:color9,     s:none,       "NONE")

" Visual aid
call <SID>set_hi("MatchParen",                   s:color9,     s:none,       "NONE")
call <SID>set_hi("NonText",                      s:color0,     s:background, "NONE")
call <SID>set_hi("Visual",                       s:color3,     s:color0,     "NONE")
call <SID>set_hi("Todo",                         s:color3,     s:none,       "NONE")
call <SID>set_hi("Underlined",                   s:none,       s:none,       "underline")
call <SID>set_hi("Error",                        s:none,       s:color9,     "NONE")
call <SID>set_hi("ErrorMsg",                     s:none,       s:color9,     "NONE")
call <SID>set_hi("WarningMsg",                   s:color11,    s:none,       "NONE")
call <SID>set_hi("SpecialKey",                   s:foreground, s:color0,     "NONE")

" Diff
call <SID>set_hi("DiffAdd",                      s:color10,    s:none,       "NONE")
call <SID>set_hi("DiffDelete",                   s:color9,     s:none,       "NONE")
call <SID>set_hi("DiffChange",                   s:color3,     s:none,       "NONE")
call <SID>set_hi("DiffText",                     s:color3,     s:color0,     "NONE")

" Types
call <SID>set_hi("Boolean",                      s:color4,     s:none,       "NONE")
call <SID>set_hi("Character",                    s:color2,     s:none,       "NONE")
call <SID>set_hi("Constant",                     s:color6,     s:none,       "italic")
call <SID>set_hi("Float",                        s:color5,     s:none,       "NONE")
call <SID>set_hi("Function",                     s:color4,     s:none,       "NONE")
call <SID>set_hi("Identifier",                   s:color4,    s:none,       "NONE")
call <SID>set_hi("Number",                       s:color5,     s:none,       "NONE")
call <SID>set_hi("String",                       s:color6,     s:none,       "NONE")

" Language constructs
call <SID>set_hi("Comment",                      s:color10,    s:none,       "NONE")
call <SID>set_hi("Conditional",                  s:color2,     s:none,       "NONE")
call <SID>set_hi("Debug",                        s:color4,     s:none,       "NONE")
call <SID>set_hi("Delimiter",                    s:color1,     s:none,       "NONE")
call <SID>set_hi("Exception",                    s:color4,     s:none,       "NONE")
call <SID>set_hi("Keyword",                      s:color4,     s:none,       "NONE")
call <SID>set_hi("Noise",                        s:color1,     s:none,       "NONE")
call <SID>set_hi("Label",                        s:color11,    s:none,       "NONE")
call <SID>set_hi("Operator",                     s:color2,     s:none,       "NONE")
call <SID>set_hi("Repeat",                       s:color4,     s:none,       "NONE")
call <SID>set_hi("Special",                      s:color1,     s:none,       "NONE")
call <SID>set_hi("SpecialChar",                  s:color1,     s:none,       "NONE")
call <SID>set_hi("SpecialComment",               s:color4,     s:none,       "NONE")
call <SID>set_hi("Statement",                    s:color2,     s:none,       "NONE")
call <SID>set_hi("Tag",                          s:color1,     s:none,       "NONE")

" CtrpP
call <SID>set_hi("CtrlPMatch",                   s:color3,    s:none,       "NONE")

" Neomake
call <SID>set_hi("NeomakeWarning",               s:color3,     s:color0,     "NONE")
call <SID>set_hi("NeomakeError",                 s:color9,     s:color0,     "NONE")
call <SID>set_hi("NeomakeInfo",                  s:color4,     s:color0,     "NONE")

" C like
call <SID>set_hi("Define",                       s:color5,     s:none,       "NONE")
call <SID>set_hi("Include",                      s:color6,     s:none,       "NONE")
call <SID>set_hi("Macro",                        s:color5,     s:none,       "NONE")
call <SID>set_hi("PreCondit",                    s:color5,     s:none,       "NONE")
call <SID>set_hi("PreProc",                      s:color1,     s:none,       "NONE")
call <SID>set_hi("StorageClass",                 s:color14,    s:none,       "NONE")
call <SID>set_hi("Type",                         s:color3,     s:none,       "NONE")
call <SID>set_hi("Typedef",                      s:color11,    s:none,       "NONE")

" CSS
"call <SID>set_hi("cssClassName",                 s:color6,     s:none,       "NONE")
"call <SID>set_hi("cssClassNameDot",              s:color6,     s:none,       "NONE")
"call <SID>set_hi("cssValueName",                 s:color5,     s:none,       "NONE")
"call <SID>set_hi("cssValueNumber",               s:color5,     s:none,       "NONE")
"call <SID>set_hi("cssValueLength",               s:color5,     s:none,       "NONE")
"call <SID>set_hi("cssVendor",                    s:color4,     s:none,       "NONE")
"call <SID>set_hi("cssFunctionName",              s:color5,     s:none,       "NONE")
"call <SID>set_hi("cssUnitDecorators",            s:color3,     s:none,       "NONE")
"call <SID>set_hi("cssCommonAttr",                s:color4,     s:none,       "NONE")
"call <SID>set_hi("cssAttrRegion",                s:color4,     s:none,       "NONE")
"call <SID>set_hi("cssAttrComma",                 s:color15,    s:none,       "NONE")
"call <SID>set_hi("cssNoise",                     s:color4,     s:none,       "NONE")
"call <SID>set_hi("cssColor",                     s:color5,     s:none,       "NONE")
"call <SID>set_hi("cssPseudoClassFn",             s:color6,     s:none,       "NONE")
"call <SID>set_hi("cssPseudoClassId",             s:color6,     s:none,       "NONE")
"call <SID>set_hi("cssSelectorOp",                s:color15,    s:none,       "NONE")

" HTML
"call <SID>set_hi("htmlTag",                      s:color4,     s:none,       "NONE")
"call <SID>set_hi("htmlTagName",                  s:color4,     s:none,       "NONE")
"call <SID>set_hi("htmlArg",                      s:color14,    s:none,       "NONE")

" Javascript
"call <SID>set_hi("jsFunction",                   s:color11,    s:none,       "NONE")
"call <SID>set_hi("jsFuncCall",                   s:color4,     s:none,       "NONE")
"call <SID>set_hi("jsObjectProp",                 s:color13,    s:none,       "NONE")
"call <SID>set_hi("jsThis",                       s:color1,     s:none,       "NONE")
"call <SID>set_hi("jsNull",                       s:color9,     s:none,       "NONE")

" PHP
"call <SID>set_hi("phpClass",                     s:color7,     s:none,       "NONE")
"call <SID>set_hi("phpClasses",                   s:color5,     s:none,       "NONE")
"call <SID>set_hi("phpComment",                   s:color0,     s:none,       "NONE")
"call <SID>set_hi("phpConstants",                 s:color9,     s:none,       "italic")
"call <SID>set_hi("phpControlStructure",          s:color10,    s:none,       "NONE")
"call <SID>set_hi("phpDocComment",                s:color0,     s:none,       "NONE")
"call <SID>set_hi("phpDocTags",                   s:color14,    s:none,       "NONE")
"call <SID>set_hi("phpFunction",                  s:color15,    s:none,       "NONE")
"call <SID>set_hi("phpFunctions",                 s:color6,     s:none,       "NONE")
"call <SID>set_hi("phpKeyword",                   s:color4,     s:none,       "NONE")
"call <SID>set_hi("phpKeywords",                  s:color15,    s:none,       "NONE")
"call <SID>set_hi("phpMethodsVar",                s:color15,    s:none,       "NONE")
"call <SID>set_hi("phpNew",                       s:color4,     s:none,       "NONE")
"call <SID>set_hi("phpNewObject",                 s:color15,    s:none,       "NONE")
"call <SID>set_hi("phpOperator",                  s:color2,     s:none,       "NONE")
"call <SID>set_hi("phpStructureKeyword",          s:color10,    s:none,       "NONE")
"call <SID>set_hi("phpTryCatch",                  s:color6,     s:none,       "NONE")
"call <SID>set_hi("phpTryCatchedException",       s:color9,     s:none,       "NONE")
"call <SID>set_hi("phpTryFinally",                s:color9,     s:none,       "NONE")
"call <SID>set_hi("phpTryStart",                  s:color9,     s:none,       "NONE")
"call <SID>set_hi("phpType",                      s:color4,     s:none,       "italic")
"call <SID>set_hi("phpVarSelector",               s:color4,     s:none,       "NONE")
"call <SID>set_hi("phpVariable",                  s:color4,     s:none,       "NONE")
"call <SID>set_hi("phpParent",                    s:color15,    s:none,       "NONE")

" YAML
"call <SID>set_hi("yamlConstant",                 s:color9,     s:none,       "NONE")
"call <SID>set_hi("yamlBlockMappingKey",          s:color14,    s:none,       "NONE")
"call <SID>set_hi("yamlFlowMappingKey",           s:color14,    s:none,       "NONE")
"call <SID>set_hi("yamlKeyValueDelimiter",        s:color15,    s:none,       "NONE")
"call <SID>set_hi("yamlFlowIndicator",            s:color15,    s:none,       "NONE")
"call <SID>set_hi("yamlBlockCollectionItemStart", s:color15,    s:none,       "NONE")

" Vim
call <SID>set_hi("vimCommand",                   s:color3,     s:none,       "NONE")
call <SID>set_hi("vimUserFunc",                  s:color4,     s:none,       "NONE")
