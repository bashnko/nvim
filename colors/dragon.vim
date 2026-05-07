if exists("syntax_on")
	syntax reset
endif

set background=dark
hi clear

if exists("g:colors_name")
	unlet g:colors_name
endif

let g:colors_name = "dragon"
hi Normal guifg=#c5c9c5 guibg=#0d0c0c
hi NormalNC guifg=#c5c9c5 guibg=#0d0c0c
hi EndOfBuffer guifg=#393836 guibg=#0d0c0c
hi NonText guifg=#393836 guibg=#0d0c0c
hi Comment guifg=#737c73 gui=italic
hi Constant guifg=#b6927b
hi String guifg=#8a9a7b
hi Character guifg=#8a9a7b
hi Number guifg=#a292a3
hi Float guifg=#a292a3
hi Boolean guifg=#c4746e
hi Identifier guifg=#c4b28a
hi Function guifg=#8ba4b0
hi Statement guifg=#8992a7 gui=bold
hi Conditional guifg=#8992a7 gui=bold
hi Repeat guifg=#8992a7 gui=bold
hi Label guifg=#8992a7 gui=bold
hi Operator guifg=#c4746e
hi Keyword guifg=#8992a7 gui=bold
hi Exception guifg=#c4746e gui=bold
hi PreProc guifg=#c4746e
hi Include guifg=#c4746e
hi Define guifg=#c4746e
hi Macro guifg=#c4746e
hi PreCondit guifg=#c4746e
hi Type guifg=#8ea4a2
hi StorageClass guifg=#8ea4a2
hi Structure guifg=#8ea4a2
hi Typedef guifg=#8ea4a2
hi Special guifg=#8ba4b0
hi SpecialChar guifg=#8ba4b0
hi Tag guifg=#8ba4b0
hi Delimiter guifg=#a6a69c
hi Underlined guifg=#8ba4b0 gui=underline
hi Ignore guifg=#282727
hi Error guifg=#0d0c0c guibg=#c4746e gui=bold
hi ErrorMsg guifg=#c4746e guibg=#12120f gui=bold
hi WarningMsg guifg=#c4b28a guibg=#12120f gui=bold
hi Todo guifg=#0d0c0c guibg=#c4b28a gui=bold

hi Cursor guifg=#0d0c0c guibg=#c5c9c5
hi CursorLine guibg=#12120f
hi CursorColumn guibg=#12120f
hi ColorColumn guibg=#1D1C19
hi Visual guibg=#282727
hi Search guifg=#0d0c0c guibg=#c4b28a gui=none
hi IncSearch guifg=#0d0c0c guibg=#b6927b gui=none
hi MatchParen guifg=#c4b28a guibg=#181616 gui=bold

hi LineNr guifg=#625e5a guibg=#0d0c0c
hi CursorLineNr guifg=#c4b28a guibg=#12120f gui=bold
hi SignColumn guifg=NONE guibg=#0d0c0c
hi FoldColumn guifg=#625e5a guibg=#0d0c0c
hi VertSplit guifg=#282727 guibg=#0d0c0c
hi WinSeparator guifg=#282727 guibg=#0d0c0c
hi StatusLine guifg=#c5c9c5 guibg=#282727 gui=none
hi StatusLineNC guifg=#a6a69c guibg=#1D1C19 gui=none
hi TabLine guifg=#a6a69c guibg=#1D1C19 gui=none
hi TabLineFill guifg=#a6a69c guibg=#0d0c0c gui=none
hi TabLineSel guifg=#c5c9c5 guibg=#282727 gui=bold

hi Pmenu guifg=#c5c9c5 guibg=#1D1C19
hi PmenuSel guifg=#0d0c0c guibg=#8ba4b0 gui=bold
hi PmenuSbar guibg=#181616
hi PmenuThumb guibg=#625e5a

hi NormalFloat guifg=#c5c9c5 guibg=#12120f
hi FloatBorder guifg=#625e5a guibg=#12120f
hi FloatTitle guifg=#c4b28a guibg=#12120f gui=bold

"TeleScope
hi TelescopeBorder guifg=#625e5a guibg=#12120f
hi TelescopeNormal guifg=#c5c9c5 guibg=#12120f
hi TelescopePromptNormal guifg=#c5c9c5 guibg=#12120f
hi TelescopePromptTitle guifg=#c5c9c5 guibg=#12120f gui=bold
hi TelescopeResultsTitle guifg=#c5c9c5 guibg=#1D1C19 gui=bold
hi TelescopePreviewTitle guifg=#c5c9c5 guibg=#12120f gui=bold
hi ModeMsg guifg=#c4b28a

hi QuickFixLine guifg=#c5c9c5 guibg=#393836
hi qfLineNr guifg=#8ba4b0 guibg=#0d0c0c
hi qfSeparator guifg=#625e5a guibg=#0d0c0c
hi qfFileName guifg=#8ea4a2


" cmp-nvim completion menu
hi CmpItemAbbrDeprecated guifg=#625e5a gui=strikethrough
hi CmpItemAbbrMatch guifg=#c4b28a gui=bold
hi CmpItemAbbrMatchFuzzy guifg=#c4b28a gui=bold
hi CmpItemKindVariable guifg=#c5c9c5
hi CmpItemKindFunction guifg=#8ba4b0
hi CmpItemKindMethod guifg=#8ba4b0
hi CmpItemKindConstructor guifg=#c4b28a
hi CmpItemKindClass guifg=#8ea4a2
hi CmpItemKindStruct guifg=#8ea4a2
hi CmpItemKindEvent guifg=#c4746e
hi CmpItemKindEnum guifg=#b6927b
hi CmpItemKindUnit guifg=#b6927b
hi CmpItemKindModule guifg=#8ba4b0
hi CmpItemKindProperty guifg=#c5c9c5
hi CmpItemKindField guifg=#c5c9c5
hi CmpItemKindInterface guifg=#8ea4a2
hi CmpItemKindOperator guifg=#c4746e
hi CmpItemKindKeyword guifg=#8992a7
hi CmpItemKindConstant guifg=#b6927b
hi CmpItemKindSnippet guifg=#8a9a7b
hi CmpItemKindText guifg=#c5c9c5
hi CmpItemKindFolder guifg=#8ba4b0
hi CmpItemKindEnumMember guifg=#b6927b
hi CmpItemKindValue guifg=#c5c9c5
hi CmpItemMenuDefault guifg=#a6a69c

" Snippet box (LuaSnip)
hi SnippetTabstop guifg=#c4b28a guibg=#1D1C19

"oil
hi OilDir guifg=#8ba4b0
hi OilFile guifg=#c5c9c5
hi OilLink guifg=#8ea4a2
hi OilSocket guifg=#c4746e
hi OilPipe guifg=#c4746e
hi OilSpecialChar guifg=#625e5a
hi OilTrash guifg=#625e5a gui=strikethrough
hi OilSize guifg=#b6927b
hi OilDatetime guifg=#a6a69c
hi OilPermissions guifg=#737c73
hi OilOperator guifg=#c4746e

hi DiffAdd guifg=NONE guibg=#1f2a1f
hi DiffChange guifg=NONE guibg=#242335
hi DiffDelete guifg=NONE guibg=#2e1d23
hi DiffText guifg=NONE guibg=#2f3642 gui=bold

hi GitSignsAdd guifg=#8a9a7b guibg=#0d0c0c
hi GitSignsChange guifg=#c4b28a guibg=#0d0c0c
hi GitSignsDelete guifg=#c4746e guibg=#0d0c0c

hi DiagnosticError guifg=#c4746e
hi DiagnosticWarn guifg=#c4b28a
hi DiagnosticInfo guifg=#8ba4b0
hi DiagnosticHint guifg=#8ea4a2

let g:terminal_color_0 = "#0d0c0c"
let g:terminal_color_1 = "#c4746e"
let g:terminal_color_2 = "#8a9a7b"
let g:terminal_color_3 = "#c4b28a"
let g:terminal_color_4 = "#8ba4b0"
let g:terminal_color_5 = "#a292a3"
let g:terminal_color_6 = "#8ea4a2"
let g:terminal_color_7 = "#c5c9c5"
let g:terminal_color_8 = "#a6a69c"
let g:terminal_color_9 = "#e46876"
let g:terminal_color_10 = "#98bb6c"
let g:terminal_color_11 = "#c0a36e"
let g:terminal_color_12 = "#7e9cd8"
let g:terminal_color_13 = "#957fb8"
let g:terminal_color_14 = "#7aa89f"
let g:terminal_color_15 = "#c8c093"
