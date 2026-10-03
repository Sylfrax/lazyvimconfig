local lualine = require("lualine")
vim.api.nvim_create_autocmd("VimEnter", {
    once = true,
    callback = function()
        print("lualine load")
        lualine.setup({
            options = {
                theme = "auto",
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
            }
        })
    end
})

