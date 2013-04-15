%header("\"")
syn match todoString /"[^"]\+"/
hi link todoString String

syn match todoComment /%#.*/
hi link todoComment Comment

syn match todoCategory /^@.\+/
"hi todoCategory ctermfg=red guifg=red
hi link todoCategory String

syn match todoDate /^\d\{4}-\d\{2}-\d\{2}/
hi link todoDate Identifier
