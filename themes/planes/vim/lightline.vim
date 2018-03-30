let s:color0   = [ '#27282c', 0 ]
let s:color1   = [ '#f0593f', 1 ]
let s:color2   = [ '#70a058', 2 ]
let s:color3   = [ '#efe169', 3 ]
let s:color4   = [ '#4164a3', 4 ]
let s:color5   = [ '#8a4398', 5 ]
let s:color6   = [ '#5ee5fb', 6 ]
let s:color7   = [ '#ffffff', 7 ]
let s:color8   = [ '#636363', 8 ]
let s:color9   = [ '#f0593f', 9 ]
let s:color10  = [ '#70a058', 10 ]
let s:color11  = [ '#efe169', 11 ]
let s:color12  = [ '#4164a3', 12 ]
let s:color14  = [ '#5ee5fb', 14 ]
let s:color15  = [ '#ffffff', 15 ]

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
let s:p.tabline.tabsel  = [ [ s:color15, s:color4 ] ]
let s:p.tabline.middle  = [ [ s:color15, s:color0 ] ]
let s:p.tabline.right   = copy(s:p.normal.right)

let g:lightline#colorscheme#planes#palette = lightline#colorscheme#flatten(s:p)
