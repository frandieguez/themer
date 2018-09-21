let s:color0   = [ '#172226', 0 ]
let s:color1   = [ '#DE425B', 1 ]
let s:color2   = [ '#B5EEA2', 2 ]
let s:color3   = [ '#FFFFA0', 3 ]
let s:color4   = [ '#2D869F', 4 ]
let s:color5   = [ '#AB8AC9', 5 ]
let s:color6   = [ '#17BEBB', 6 ]
let s:color7   = [ '#a5a5a5', 7 ]
let s:color8   = [ '#202D35', 8 ]
let s:color9   = [ '#DE425B', 9 ]
let s:color10  = [ '#B5EEA2', 10 ]
let s:color11  = [ '#FFFFA0', 11 ]
let s:color12  = [ '#2D869F', 12 ]
let s:color13  = [ '#AB8AC9', 13 ]
let s:color14  = [ '#17BEBB', 14 ]
let s:color15  = [ '#F6F6F6', 15 ]
let s:color16  = [ '#0F1819', 16 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.error    = [ [ s:color0, s:color9 ] ]
let s:p.insert.error    = [ [ s:color10, s:color0 ] ]
let s:p.replace.error   = [ [ s:color9, s:color0 ] ]
let s:p.visual.error    = [ [ s:color3, s:color0 ] ]

let s:p.normal.left     = [ [ s:color0, s:color15 ], [ s:color15, s:color8 ] ]
let s:p.insert.left     = [ [ s:color0, s:color10 ], [ s:color10, s:color8 ] ]
let s:p.replace.left    = [ [ s:color0, s:color9 ], [ s:color9, s:color8 ] ]
let s:p.visual.left     = [ [ s:color0, s:color3 ], [ s:color3, s:color8 ] ]
let s:p.inactive.left   = [ [ s:color15, s:color0 ], [ s:color7, s:color0 ] ]

let s:p.normal.middle   = [ [ s:color15, s:color0 ] ]

let s:p.normal.right    = [ [ s:color0, s:color15 ], [ s:color15, s:color8 ] ]
let s:p.insert.right    = [ [ s:color0, s:color10 ], [ s:color10, s:color8 ] ]
let s:p.replace.right   = [ [ s:color0, s:color9 ], [ s:color9, s:color8 ] ]
let s:p.visual.right    = [ [ s:color0, s:color3 ], [ s:color3, s:color8 ] ]
let s:p.inactive.right  = [ [ s:color15, s:color0 ], [ s:color15, s:color0 ] ]

let s:p.normal.warning  = [ [ s:color0, s:color11 ] ]
let s:p.insert.warning  = [ [ s:color10, s:color0 ] ]
let s:p.replace.warning = [ [ s:color9, s:color0 ] ]
let s:p.visual.warning  = [ [ s:color11, s:color0 ] ]

let s:p.tabline.left    = [ [ s:color7, s:color0 ] ]
let s:p.tabline.tabsel  = [ [ s:color15, s:color16 ] ]
let s:p.tabline.middle  = [ [ s:color7, s:color0 ] ]
let s:p.tabline.right   = copy(s:p.tabline.tabsel)

let g:lightline#colorscheme#fox#palette = lightline#colorscheme#flatten(s:p)

let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '', 'right': '' }
let g:lightline.tabline_separator = { 'left': '', 'right': '' }
let g:lightline.tabline_subseparator = { 'left': '', 'right': '' }

let g:lightline.colorscheme = 'fox'
