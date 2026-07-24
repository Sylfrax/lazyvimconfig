local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config = {
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
}

vim.lsp.enable({
    "ocamllsp",
    "rust-analyzer",
})

require("plugins.lsp.lspconfig")
require("plugins.lsp.cmp")

-- Neovim 默认诊断配置
vim.diagnostic.config({
    virtual_text = true,    -- 显示行尾错误信息
    signs = true,           -- 显示符号（你看到的 "E"）
    underline = true,       -- 下划线
})
