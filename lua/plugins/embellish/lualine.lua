--local lualine = require("lualine")
vim.api.nvim_create_autocmd("VimEnter", {
    once = true,
    callback = function()
        vim.pack.add({ gh("nvim-lualine", "lualine.nvim") })
        print("lualine load")
        require("lualine").setup({
            options = {
                theme = "auto",
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
            }
        })
    end
})

