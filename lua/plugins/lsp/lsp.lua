--[[vim.lsp.config = {
    ["ocamllsp"] = {
        cmd = {"ocamllsp"},
        filetypes = {"ocaml"},
        capabilities = capabilities,
    },
    ["rust-analyzer"] = {
        cmd = {"rust-analyzer"},
        filetypes = {"rust"}, 
        capabilities = capabilities,
    },
    ["lua_ls"] = {
        cmd = {"lua-language-server"},
        filetypes = {"lua"},
        capabilities = capabilities,
    }
}]]

local lua = vim.lsp.config.lua_ls
local rust = vim.lsp.config.rust_analyzer
local ocaml = vim.lsp.config.ocamllsp 
vim.lsp.config("lua_ls", lua)
vim.lsp.config("rust_analyzer", rust)
vim.lsp.config("ocamllsp", ocaml)

vim.lsp.enable({
    "ocamllsp",
    "rust_analyzer",
    "lua_ls"
})

require("plugins.lsp.lspconfig")
require("plugins.lsp.cmp")

-- Neovim 默认诊断配置
vim.diagnostic.config({
    virtual_text = true,    -- 显示行尾错误信息
    signs = true,           -- 显示符号（你看到的 "E"）
    underline = true,       -- 下划线
})
