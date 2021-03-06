let s:color0   = [ '#073642', 0 ]
let s:color1   = [ '#DC322F', 1 ]
let s:color2   = [ '#859900', 2 ]
let s:color3   = [ '#B58900', 3 ]
let s:color4   = [ '#268BD2', 4 ]
let s:color5   = [ '#D33682', 5 ]
let s:color6   = [ '#2AA198', 6 ]
let s:color7   = [ '#EEE8D5', 7 ]
let s:color8   = [ '#002B36', 8 ]
let s:color9   = [ '#CB4B16', 9 ]
let s:color10  = [ '#586E75', 10 ]
let s:color11  = [ '#657B83', 11 ]
let s:color12  = [ '#839496', 12 ]
let s:color13  = [ '#6C71C4', 13 ]
let s:color14  = [ '#93A1A1', 14 ]
let s:color15  = [ '#FDF6E3', 15 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left     = [ [ s:color0,  s:color12 ], [ s:color12, s:color0 ] ]
let s:p.insert.left     = [ [ s:color0,  s:color2  ], [ s:color2,  s:color0 ] ]
let s:p.replace.left    = [ [ s:color0,  s:color9  ], [ s:color9,  s:color0 ] ]
let s:p.visual.left     = [ [ s:color0,  s:color3  ], [ s:color3,  s:color0 ] ]
let s:p.inactive.left   = [ [ s:color12, s:color0  ], [ s:color7,  s:color0 ] ]

let s:p.normal.middle   = [ [ s:color12, s:color0 ] ]

let s:p.normal.right    = [ [ s:color0,  s:color12 ], [ s:color12, s:color0 ] ]
let s:p.insert.right    = [ [ s:color0,  s:color2  ], [ s:color2,  s:color0 ] ]
let s:p.replace.right   = [ [ s:color0,  s:color9  ], [ s:color9,  s:color0 ] ]
let s:p.visual.right    = [ [ s:color0,  s:color3  ], [ s:color3,  s:color0 ] ]
let s:p.inactive.right  = [ [ s:color12, s:color0  ], [ s:color12, s:color0 ] ]

let s:p.tabline.left    = [ [ s:color12, s:color0  ] ]
let s:p.tabline.tabsel  = [ [ s:color0,  s:color12 ] ]
let s:p.tabline.middle  = [ [ s:color0,  s:color0  ] ]
let s:p.tabline.right   = copy(s:p.tabline.tabsel)

let s:p.normal.error    = [ [ s:color0,  s:color1 ] ]
let s:p.insert.error    = [ [ s:color2,  s:color0 ] ]
let s:p.replace.error   = [ [ s:color9,  s:color0 ] ]
let s:p.visual.error    = [ [ s:color3,  s:color0 ] ]

let s:p.normal.warning  = [ [ s:color0,  s:color3 ] ]
let s:p.insert.warning  = [ [ s:color10, s:color0 ] ]
let s:p.replace.warning = [ [ s:color9,  s:color0 ] ]
let s:p.visual.warning  = [ [ s:color3,  s:color0 ] ]

let g:lightline#colorscheme#solarized#palette = lightline#colorscheme#flatten(s:p)

let g:lightline.active.left  = [ [ 'fugitive', 'ctrlpitem' ], [ 'ctrlp', 'filename' ] ]
let g:lightline.active.right = [ [ 'lineinfo' ], [ 'paste', 'percent', 'debug', 'neomake' ] ]
let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '', 'right': '' }
let g:lightline.tabline_separator = { 'left': '', 'right': '' }
let g:lightline.tabline_subseparator = { 'left': '', 'right': '' }

let g:lightline.colorscheme = 'solarized'
