" Vim syntax file for the Bit programming language

if exists("b:current_syntax")
  finish
endif

syntax keyword bitKeyword let fn type use as return raise bail if else for while in break continue
syntax match   bitBoolean /\<\(true\|false\|null\)\>/
syntax match   bitNumber  /\<[0-9]\+\(\.[0-9]\+\)\?\>/
syntax match   bitSelf    /\<self\>/
syntax match   bitType    /\<[A-Z][a-zA-Z0-9_]*\>/
syntax match   bitString  /"[^"]*"/
syntax match   bitComment /#[^\[].*/
syntax region  bitComment start=/#\[/ end=/\]#/ contains=bitComment

highlight bitKeyword guifg=#fe95d4
highlight bitBoolean guifg=#fe95d4
highlight bitComment guifg=#99c3c4
highlight bitString  guifg=#fed395
highlight bitNumber  guifg=#b5cea8
highlight bitType    guifg=#4ec9b0
highlight bitSelf    guifg=#9cdcfe

let b:current_syntax = "bit"
