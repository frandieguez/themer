let s:color0   = [ '#0f1317', 0 ]
let s:color3   = [ '#fee89a', 3 ]
let s:color4   = [ '#78b2d5', 4 ]
let s:color6   = [ '#0396f7', 6 ]
let s:color7   = [ '#6d8086', 7 ]
let s:color8   = [ '#1d1d22', 8 ]
let s:color9   = [ '#cc3e43', 9 ]
let s:color10  = [ '#1bfc7a', 10 ]
let s:color11  = [ '#fed02e', 11 ]
let s:color12  = [ '#0396f7', 12 ]
let s:color14  = [ '#89ddf9', 14 ]
let s:color15  = [ '#d6d6d6', 15 ]

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

let s:p.tabline.left    = [ [ s:color15, s:color0 ] ]
let s:p.tabline.tabsel  = [ [ s:color15, s:color6 ] ]
let s:p.tabline.middle  = [ [ s:color15, s:color0 ] ]
let s:p.tabline.right   = copy(s:p.normal.right)

let g:lightline#colorscheme#seti#palette = lightline#colorscheme#flatten(s:p)
