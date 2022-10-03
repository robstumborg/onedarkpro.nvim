local util = require("plenary.async.util")
local async = require("plenary.async.tests")

describe("Using the cache", function()
    async.before_each(function()
        vim.cmd(":e tests/stubs/test.txt")
        vim.o.background = "dark"
    end)

    async.it("it should be able to generate a file", function()
        util.scheduler()
        assert.equals(require("onedarkpro.lib.cache").exists(), false)
        vim.cmd("OnedarkproCache")
        assert.equals(require("onedarkpro.lib.cache").exists(), true)
    end)

    async.it("it should be able to generate a file which includes custom colors and groups", function()
        util.scheduler()

        local expected = [[-------------------------- AUTOGENERATED BY ONEDARKPRO -------------------------

if vim.g.colors_name then
  vim.cmd("hi clear")
end

vim.cmd("highlight Bold guifg=NONE guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Boolean guifg=#d19a66 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Character guifg=#98c379 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight ColorColumn guifg=NONE guibg=#2E323A gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Comment guifg=#5c6370 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Conditional guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Constant guifg=#d19a66 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Cursor guifg=#282c34 guibg=#c678dd gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight CursorColumn guifg=NONE guibg=#5c6370 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight CursorLine guifg=NONE guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight CursorLineNr guifg=#c678dd guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight CursorLineNrNC guifg=#5c6370 guibg=#2E323A gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Define guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Delimiter guifg=#abb2bf guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight DiffAdd guifg=NONE guibg=#003e4a gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight DiffChange guifg=NONE guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight DiffDelete guifg=NONE guibg=#501b20 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight DiffText guifg=NONE guibg=#005869 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Directory guifg=#61afef guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight EndOfBuffer guifg=#282c34 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Error guifg=#e06c75 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight ErrorMsg guifg=#e06c75 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Exception guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Float guifg=#d19a66 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight FloatBorder guifg=#5c6370 guibg=#22252C gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight FoldColumn guifg=#5c6370 guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Folded guifg=#5c6370 guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight FoldedNC guifg=#5c6370 guibg=#2E323A gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Function guifg=#61afef guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Identifier guifg=#e06c75 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight IncSearch guifg=#e5c07b guibg=#53565D gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Include guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Italic guifg=NONE guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Keyword guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Label guifg=#e06c75 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight LineNr guifg=#5c6370 guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight LineNrNC guifg=#5c6370 guibg=#2E323A gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Macro guifg=#61afef guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight MatchParen guifg=#56b6c2 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight MoreMsg guifg=#98c379 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight NonText guifg=#5c6370 guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Normal guifg=#abb2bf guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight NormalFloat guifg=NONE guibg=#22252C gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight NormalNC guifg=#abb2bf guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Number guifg=#d19a66 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight OneDarkPro guifg=#FF0000 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Operator guifg=#56b6c2 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Pmenu guifg=NONE guibg=#22252C gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight PmenuSbar guifg=NONE guibg=#2E323A gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight PmenuSel guifg=NONE guibg=#2E323A gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight PmenuThumb guifg=NONE guibg=#94969A gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight PreCondit guifg=#e5c07b guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight PreProc guifg=#e5c07b guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Question guifg=#5c6370 guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight QuickFixLine guifg=NONE guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Repeat guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Search guifg=#e5c07b guibg=#53565D gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight SignColumn guifg=NONE guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight SignColumnNC guifg=#5c6370 guibg=#2E323A gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Special guifg=#61afef guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight SpecialChar guifg=#d19a66 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight SpecialComment guifg=#5c6370 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight SpellBad guifg=#e06c75 guibg=NONE gui=undercurl guisp=#e06c75 blend=NONE")
vim.cmd("highlight SpellCap guifg=#e06c75 guibg=NONE gui=undercurl guisp=#e06c75 blend=NONE")
vim.cmd("highlight SpellLocal guifg=#e06c75 guibg=NONE gui=undercurl guisp=#e06c75 blend=NONE")
vim.cmd("highlight SpellRare guifg=#e06c75 guibg=NONE gui=undercurl guisp=#e06c75 blend=NONE")
vim.cmd("highlight Statement guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight StatusLine guifg=#abb2bf guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight StatusLineNC guifg=#abb2bf guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight StorageClass guifg=#e5c07b guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight String guifg=#98c379 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Structure guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Substitute guifg=#282c34 guibg=#e5c07b gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSAnnotation guifg=#e06c75 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSAttribute guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSConstBuiltin guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSConstructor guifg=#e5c07b guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSDanger guifg=#e06c75 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSEmphasis guifg=#abb2bf guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSField guifg=#abb2bf guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSFuncBuiltin guifg=#e5c07b guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSFuncMacro guifg=#61afef guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSFunction guifg=#61afef guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSInclude guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSKeyword guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSKeywordFunction guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSKeywordOperator guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSLabel guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSLiteral guifg=#abb2bf guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSMath guifg=#abb2bf guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSMethod guifg=#61afef guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSNamespace guifg=#e5c07b guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSNote guifg=#abb2bf guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSParameter guifg=#e06c75 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSParameterReference guifg=#e06c75 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSProperty guifg=#e06c75 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSPunctBracket guifg=#abb2bf guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSPunctSpecial guifg=#abb2bf guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSRepeat guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSStrike guifg=#abb2bf guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSString guifg=#98c379 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSStringEscape guifg=#56b6c2 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSStringRegex guifg=#98c379 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSStrong guifg=#abb2bf guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSSymbol guifg=#e06c75 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSTag guifg=#e06c75 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSText guifg=#abb2bf guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSTitle guifg=#abb2bf guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSType guifg=#e5c07b guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSTypeBuiltin guifg=#e5c07b guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSURI guifg=#61afef guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSUnderline guifg=#abb2bf guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSVariable guifg=#e06c75 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSVariableBuiltin guifg=#e5c07b guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TSWarning guifg=#e5c07b guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TabLine guifg=NONE guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TabLineFill guifg=#abb2bf guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TabLineSel guifg=#c678dd guibg=#5c6370 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TermCursor guifg=NONE guibg=#c678dd gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight TermCursorNC guifg=NONE guibg=#5c6370 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Title guifg=#98c379 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Todo guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Type guifg=#e5c07b guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Typedef guifg=#c678dd guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Underlined guifg=NONE guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight VertSplit guifg=#5c6370 guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Visual guifg=NONE guibg=#53565D gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight WarningMsg guifg=#e5c07b guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight Whitespace guifg=#5c6370 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight WildMenu guifg=#282c34 guibg=#61afef gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight WinBar guifg=#abb2bf guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight WinBarNC guifg=#abb2bf guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight WinSeparator guifg=#5c6370 guibg=#282c34 gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight diffAdded guifg=#98c379 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight diffChanged guifg=#e5c07b guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight diffFile guifg=#e5c07b guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight diffLine guifg=#61afef guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight diffNewFile guifg=#e5c07b guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight diffRemoved guifg=#e06c75 guibg=NONE gui=NONE guisp=NONE blend=NONE")
vim.cmd("highlight! link ModeMsg Normal")
vim.cmd("highlight! link MsgArea ModeMsg")
vim.cmd("highlight! link MsgSeparator ModeMsg")
vim.cmd("highlight! link TSBoolean Boolean")
vim.cmd("highlight! link TSCharacter Character")
vim.cmd("highlight! link TSComment Comment")
vim.cmd("highlight! link TSConditional Conditional")
vim.cmd("highlight! link TSConstMacro Constant")
vim.cmd("highlight! link TSConstant Constant")
vim.cmd("highlight! link TSEnvironment Macro")
vim.cmd("highlight! link TSEnvironmentName Type")
vim.cmd("highlight! link TSError Error")
vim.cmd("highlight! link TSException Exception")
vim.cmd("highlight! link TSFloat Float")
vim.cmd("highlight! link TSKeywordReturn TSKeyword")
vim.cmd("highlight! link TSNumber Number")
vim.cmd("highlight! link TSOperator Operator")
vim.cmd("highlight! link TSPunctDelimiter Delimiter")
vim.cmd("highlight! link TSStringSpecial Special")
vim.cmd("highlight! link TSTagAttribute TSProperty")
vim.cmd("highlight! link TSTagDelimiter Delimiter")
vim.cmd("highlight! link TSTextReference TSText")
vim.cmd("highlight! link VisualNOS Visual")

-------------------------------------// END ------------------------------------
]]

        local file = io.open(require("onedarkpro.config").config.cache_path .. "onedark.lua", "r"):read("*all")
        -- file:close()
        assert.are.same(expected, file)
    end)

    async.it("it should be able to delete the cache file", function()
        util.scheduler()
        assert.equals(require("onedarkpro.lib.cache").exists(), true)
        vim.cmd("OnedarkproClean")
        assert.equals(require("onedarkpro.lib.cache").exists(), false)
    end)
end)
