let s:color0   = [ '#21232a', 0 ]
let s:color4   = [ '#185880', 4 ]
let s:color7   = [ '#b8babe', 7 ]
let s:color8   = [ '#23323e', 8 ]
let s:color9   = [ '#e15151', 9 ]
let s:color10  = [ '#58b164', 10 ]
let s:color11  = [ '#e2db23', 11 ]
let s:color12  = [ '#446980', 12 ]
let s:color14  = [ '#23bae2', 14 ]
let s:color15  = [ '#eceff4', 15 ]
let s:color208 = [ '#ffb86c', 208 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.error    = [ [ s:color0, s:color9 ] ]
let s:p.insert.error    = [ [ s:color14, s:color0 ] ]
let s:p.replace.error   = [ [ s:color9, s:color0 ] ]
let s:p.visual.error    = [ [ s:color208, s:color0 ] ]

let s:p.normal.left     = [ [ s:color0, s:color15 ], [ s:color15, s:color0 ] ]
let s:p.insert.left     = [ [ s:color0, s:color14 ], [ s:color14, s:color0 ] ]
let s:p.replace.left    = [ [ s:color0, s:color9 ], [ s:color9, s:color0 ] ]
let s:p.visual.left     = [ [ s:color0, s:color208 ], [ s:color208, s:color0 ] ]
let s:p.inactive.left   = [ [ s:color7, s:color0 ], [ s:color7, s:color0 ] ]

let s:p.normal.middle   = [ [ s:color15, s:color0 ] ]

let s:p.normal.right    = [ [ s:color0, s:color15 ], [ s:color15, s:color0 ] ]
let s:p.insert.right    = [ [ s:color0, s:color14 ], [ s:color14, s:color0 ] ]
let s:p.replace.right   = [ [ s:color0, s:color9 ], [ s:color9, s:color0 ] ]
let s:p.visual.right    = [ [ s:color0, s:color208 ], [ s:color208, s:color0 ] ]
let s:p.inactive.right  = [ [ s:color7, s:color0 ], [ s:color7, s:color0 ] ]

let s:p.normal.warning  = [ [ s:color0, s:color11 ] ]
let s:p.insert.warning  = [ [ s:color14, s:color0 ] ]
let s:p.replace.warning = [ [ s:color9, s:color0 ] ]
let s:p.visual.warning  = [ [ s:color208, s:color0 ] ]

let s:p.tabline.left    = [ [ s:color15, s:color0 ] ]
let s:p.tabline.tabsel  = [ [ s:color15, s:color12] ]
let s:p.tabline.middle  = [ [ s:color15, s:color0 ] ]
let s:p.tabline.right   = copy(s:p.normal.right)

let g:lightline#colorscheme#offline#palette = lightline#colorscheme#flatten(s:p)
