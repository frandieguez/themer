let s:color0   = [ '#3B4252', 0 ]
let s:color1   = [ '#BF616A', 1 ]
let s:color2   = [ '#A3BE8C', 2 ]
let s:color3   = [ '#EBCB8B', 3 ]
let s:color4   = [ '#81A1C1', 4 ]
let s:color5   = [ '#B48EAD', 5 ]
let s:color6   = [ '#88C0D0', 6 ]
let s:color7   = [ '#E5E9F0', 7 ]
let s:color8   = [ '#4C566A', 8 ]
let s:color9   = [ '#BF616A', 9 ]
let s:color10  = [ '#A3BE8C', 10 ]
let s:color11  = [ '#EBCB8B', 11 ]
let s:color12  = [ '#81A1C1', 12 ]
let s:color13  = [ '#B48EAD', 13 ]
let s:color14  = [ '#8FBCBB', 14 ]
let s:color15  = [ '#ECEFF4', 15 ]
let s:color16  = [ '#2E3440', 16 ]

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

let s:p.tabline.left    = [ [ s:color15, s:color0 ] ]
let s:p.tabline.tabsel  = [ [ s:color15, s:color8 ] ]
let s:p.tabline.middle  = [ [ s:color15, s:color0 ] ]
let s:p.tabline.right   = copy(s:p.tabline.tabsel)

let g:lightline#colorscheme#fox#palette = lightline#colorscheme#flatten(s:p)

let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '', 'right': '' }
let g:lightline.tabline_separator = { 'left': '', 'right': '' }
let g:lightline.tabline_subseparator = { 'left': '', 'right': '' }

let g:lightline.colorscheme = 'fox'
