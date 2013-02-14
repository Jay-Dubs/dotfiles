set background=dark
hi clear

if exists("syntax on")
    syntax reset
endif

let g:colors_name="jdub"

"
" preferred groups
" (see `:h w18`)
"
hi Normal          ctermfg=255    ctermbg=233    cterm=NONE
hi Comment         ctermfg=102

hi Constant        ctermfg=186    guibg=NONE    guisp=NONE
hi String          ctermfg=185    guibg=NONE    guisp=NONE
hi Character       ctermfg=185    guibg=NONE    guisp=NONE
hi Number          ctermfg=13     guibg=NONE    guisp=NONE
hi Boolean         ctermfg=185    guibg=NONE    guisp=NONE
hi Float           ctermfg=179    guibg=NONE    guisp=NONE

hi Identifier      ctermfg=182    guibg=NONE    guisp=NONE
hi Function        ctermfg=210    guibg=NONE    guisp=NONE

hi Statement       ctermfg=110    guibg=NONE    guisp=NONE
hi Conditional     ctermfg=111    guibg=NONE    guisp=NONE
hi Repeat          ctermfg=110    guibg=NONE    guisp=NONE
hi Label           ctermfg=135    guibg=NONE    guisp=NONE
hi Operator        ctermfg=75     guibg=NONE    guisp=NONE
hi Keyword         ctermfg=174    guibg=NONE    guisp=NONE
hi Exception       ctermfg=110    guibg=NONE    guisp=NONE

hi PreProc         ctermfg=150    guibg=NONE    guisp=NONE
hi Include         ctermfg=150    guibg=NONE    guisp=NONE
hi Define          ctermfg=150    guibg=NONE    guisp=NONE
hi Macro           ctermfg=150    guibg=NONE    guisp=NONE
hi PreCondit       ctermfg=150    guibg=NONE    guisp=NONE

hi Type            ctermfg=147    guibg=NONE    guisp=NONE
hi StorageClass    ctermfg=66     guibg=NONE    guisp=NONE
hi Structure       ctermfg=66     guibg=NONE    guisp=NONE
hi Typedef         ctermfg=66     guibg=NONE    guisp=NONE

hi Special         ctermfg=110    guibg=NONE    guisp=NONE
hi SpecialChar     ctermfg=1      guibg=NONE    guisp=NONE
hi Tag             ctermfg=1      guibg=NONE    guisp=NONE
hi Delimiter       ctermfg=1      guibg=NONE    guisp=NONE
hi SpecialComment  ctermfg=1      guibg=NONE    guisp=NONE
hi Debug           ctermfg=1      guibg=NONE    guisp=NONE

hi Underlined      ctermfg=fg
hi Ignore          ctermfg=bg
hi Error           ctermfg=231    ctermbg=167
hi Todo            ctermfg=167    ctermbg=bg     cterm=NONE

"
" minor groups
"
hi StatusLine      ctermfg=fg     ctermbg=237    cterm=NONE
hi StatusLineNC    ctermfg=244    ctermbg=237    cterm=NONE
hi TabLine         ctermfg=fg     ctermbg=237    cterm=NONE
hi TabLineSel      ctermfg=253    ctermbg=238    cterm=NONE
hi TabLineFill     ctermfg=fg     ctermbg=237    cterm=NONE

hi Pmenu           ctermfg=fg     ctermbg=237    guifg=fg
hi PmenuSel        ctermfg=231    ctermbg=244    guifg=#FFFFFF
hi PmenuSbar       ctermfg=231    ctermbg=244    guifg=#FFFFFF
hi WildMenu        ctermfg=71     ctermbg=237    cterm=NONE

hi Visual          ctermfg=bg     ctermbg=117    guifg=bg
hi VisualNOS       ctermfg=bg     ctermbg=116    guifg=bg
hi VertSplit       ctermfg=244    ctermbg=237    cterm=NONE
hi LineNr          ctermfg=59    ctermbg=16

hi Title           ctermfg=109
hi SpecialKey      ctermfg=114
hi NonText         ctermfg=244
hi MatchParen      ctermfg=122     ctermbg=bg
hi Directory       ctermfg=103

hi ErrorMsg        ctermfg=210    ctermbg=bg
hi WarningMsg      ctermfg=140
hi MoreMsg         ctermfg=72
hi ModeMsg         ctermfg=222

hi Search          ctermfg=9      ctermbg=bg cterm=underline
hi IncSearch       ctermfg=231    ctermbg=168     cterm=NONE    guifg=#FFFFFF    guibg=#D75F87    gui=NONE
hi Question        ctermfg=38

hi Folded          ctermfg=244    ctermbg=bg
hi FoldColumn      ctermfg=79     ctermbg=237
hi SignColumn      ctermfg=79     ctermbg=237
hi ColorColumn     ctermfg=79     ctermbg=237

hi CursorColumn    ctermbg=237    cterm=NONE
hi CursorLine      ctermbg=237    cterm=NONE

hi vimFold         ctermfg=244
hi vimCommentTitle ctermfg=fg    guifg=fg
hi helpHyperTextJump ctermfg=74

hi htmlTag         ctermfg=147
hi htmlEndTag      ctermfg=147
hi htmlTagName     ctermfg=175
hi htmlString      ctermfg=144

hi diffFile        ctermfg=244
hi diffLine        ctermfg=244
hi diffAdded       ctermfg=107
hi diffRemoved     ctermfg=175
hi diffChanged     ctermfg=179

hi diffAdd         ctermfg=16     ctermbg=149
hi diffDelete      ctermfg=231    ctermbg=fg
hi diffText        ctermfg=16     ctermbg=211
hi diffChange      ctermfg=16     ctermbg=217
hi diffOldLine     ctermfg=104

hi SpellBad        ctermfg=210    ctermbg=bg      cterm=underline
hi SpellCap        ctermfg=174    ctermbg=bg      cterm=underline
hi SpellRare       ctermfg=181    ctermbg=bg      cterm=underline
hi SpellLocal      ctermfg=180    ctermbg=bg      cterm=underline

hi mkdCode         ctermfg=244
hi mkdURL          ctermfg=111
hi mkdLink         ctermfg=181

hi def link mailSubject Title
hi def link mailSignature Comment
hi def link mailQuoted2 mailQuoted1
hi def link perlSharpBang Comment
