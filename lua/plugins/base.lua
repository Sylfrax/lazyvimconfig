
local gh = "https://github.com/"

local plugins = {

    --color scheme
    gh .. "olimorris/onedarkpro.nvim",
    --auto pairs
    gh .. "windwp/nvim-autopairs",
    --lsp cmp
    gh .. "hrsh7th/nvim-cmp",
    gh .. "hrsh7th/cmp-nvim-lsp",
    gh .. "hrsh7th/cmp-path",
    gh .. "hrsh7th/cmp-buffer",
    gh .. "L3MON4D3/LuaSnip",
    gh .. "saadparwaiz1/cmp_luasnip",
    gh .. "rafamadriz/friendly-snippets",
    -- lualine
}


vim.pack.add(plugins)

require("plugins.colorscheme")
require("plugins.lsp.autopairs")
require("plugins.lsp.lsp")
