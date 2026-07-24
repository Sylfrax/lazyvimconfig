local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config = {
    ["ocamllsp"] = {
        cmd = {"ocamllsp"},
        filetypes = {"ocaml"},
        capabilities = capabilities,
    }
}

vim.lsp.enable({
    "ocamllsp"
})

require("plugins.lsp.lspconfig")
require("plugins.lsp.cmp")

