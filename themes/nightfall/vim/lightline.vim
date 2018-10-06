let s:color0   = [ '#1d141d', 0 ]
let s:color3   = [ '#ccbd8c', 3 ]
let s:color4   = [ '#3377aa', 4 ]
let s:color5   = [ '#ba77a9', 5 ]
let s:color6   = [ '#77a9ba', 6 ]
let s:color7   = [ '#d4d7d6', 7 ]
let s:color8   = [ '#302029', 8 ]
let s:color9   = [ '#ab3358', 9 ]
let s:color10  = [ '#a9ba77', 10 ]
let s:color11  = [ '#ccbd8c', 11 ]
let s:color12  = [ '#3377aa', 12 ]
let s:color14  = [ '#77a9ba', 14 ]
let s:color15  = [ '#d6d6d6', 15 ]
let s:color16 =  [ '#191119', 16 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.error    = [ [ s:color0, s:color9 ] ]
let s:p.insert.error    = [ [ s:color10, s:color0 ] ]
let s:p.replace.error   = [ [ s:color9, s:color0 ] ]
let s:p.visual.error    = [ [ s:color3, s:color0 ] ]

let s:p.normal.left     = [ [ s:color0, s:color15 ], [ s:color15, s:color0 ] ]
let s:p.insert.left     = [ [ s:color0, s:color10 ], [ s:color10, s:color0 ] ]
let s:p.replace.left    = [ [ s:color0, s:color9 ], [ s:color9, s:color0 ] ]
let s:p.visual.left     = [ [ s:color0, s:color3 ], [ s:color3, s:color0 ] ]
let s:p.inactive.left   = [ [ s:color7, s:color0 ], [ s:color7, s:color0 ] ]

let s:p.normal.middle   = [ [ s:color15, s:color0 ] ]

let s:p.normal.right    = [ [ s:color0, s:color15 ], [ s:color15, s:color0 ] ]
let s:p.insert.right    = [ [ s:color0, s:color10 ], [ s:color10, s:color0 ] ]
let s:p.replace.right   = [ [ s:color0, s:color9 ], [ s:color9, s:color0 ] ]
let s:p.visual.right    = [ [ s:color0, s:color3 ], [ s:color3, s:color0 ] ]
let s:p.inactive.right  = [ [ s:color7, s:color0 ], [ s:color7, s:color0 ] ]

let s:p.normal.warning  = [ [ s:color0, s:color11 ] ]
let s:p.insert.warning  = [ [ s:color10, s:color0 ] ]
let s:p.replace.warning = [ [ s:color9, s:color0 ] ]
let s:p.visual.warning  = [ [ s:color11, s:color0 ] ]

let s:p.tabline.left    = [ [ s:color7, s:color16 ] ]
let s:p.tabline.tabsel  = [ [ s:color15, s:color8 ] ]
let s:p.tabline.middle  = [ [ s:color15, s:color16 ] ]
let s:p.tabline.right   = [ [ s:color15, s:color8 ] ]

let g:lightline#colorscheme#nightfall#palette = lightline#colorscheme#flatten(s:p)
let g:lightline.colorscheme = 'nightfall'
