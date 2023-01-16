if !isdirectory('plenary.nvim')
  !git clone https://github.com/nvim-lua/plenary.nvim.git plenary.nvim
endif

set runtimepath+=plenary.nvim,.
set noswapfile
set noundofile

lua << EOF
local onedarkpro = require("onedarkpro")
onedarkpro.setup({
    cache_path = vim.fn.expand(vim.fn.stdpath("cache") .. "/onedarkpro_test/"),
    styles = {
        variables = "bold"
    },
    options = {
        terminal_colors = true,
        cursorline = true,
        highlight_inactive_windows = true,
    },
    filetypes = {
        all = false,
        javascript = true,
    },
    plugins = {
        all = false,
        op_nvim = true,
        treesitter = true,
    },
    colors = {
        onedark_vivid = {
            red = "#e06c75", -- Overwrite red to onedark's red
            oli_color = "#ff00ff",
            diff_add = "#ff0000"
        },
        onelight = {
            oli_color = "#f0f0f0",
        }
    },
    highlights = {
        Constant = {
            fg = "${blue}",
            blend = 100,
        },
        Directory = {
            style = "bold",
        },
        Repeat = {
            fg = "${blue}"
        },
        Statement = {
            fg = "${oli_color}"
        },
        TestHighlightGroup = {
            fg = "${red}"
        },
        TestHighlightGroup2 = { link = "Statement" }
    },
})
vim.cmd [[colorscheme onedark_vivid]]
EOF

runtime plugin/plenary.vim
command ConfigSpec PlenaryBustedFile tests/config_spec.lua
