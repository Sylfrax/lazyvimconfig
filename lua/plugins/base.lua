
---@param name string
---@param repo string
---@return string
local gh = function (name, repo)
    return "https://github.com/"..name.."/"..repo 
end

local plugins = {

    --color scheme
    --gh .. "olimorris/onedarkpro.nvim",
    --lsp config
    { src = gh("neovim", "nvim-lspconfig") },
    --auto pairs
    { src = gh("windwp", "nvim-autopairs") },
    --lsp cmp
    { src = gh("hrsh7th", "nvim-cmp") },
    { src = gh("hrsh7th", "cmp-nvim-lsp") },
    { src = gh("hrsh7th", "cmp-path") },
    { src = gh("hrsh7th", "cmp-buffer") },
    { src = gh("L3MON4D3", "LuaSnip") },
    { src = gh("saadparwaiz1", "cmp_luasnip") },
    { src = gh("rafamadriz", "friendly-snippets") },
    -- lualine
    { src = gh("nvim-lualine", "lualine.nvim") },

    { src = gh("folke", "snacks.nvim") },

    { src = gh("nvim-treesitter", "nvim-treesitter") },
    
    { src = gh("saghen", "blink.lib") },
    { src = gh("saghen", "blink.cmp") }
}


vim.pack.add(plugins)


require("plugins.lsp.autopairs")
require("plugins.lsp.lsp")

require("plugins.embellish.colorscheme")
require("plugins.embellish.lualine")
require("plugins.tools.snacks")

