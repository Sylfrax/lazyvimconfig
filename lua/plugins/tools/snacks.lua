local snacks = require("snacks")

snacks.setup({
    bigfilr = {enabled = true},
    explorer = {enabled = true, replace_netrw = true},
    indent = {
        enabled = true,
        hl = "SnacksIndent",
        only_current = true,
    },
    scope = {
        enabled = true,
        hl = "SnacksIndentScope",
        highlight = "indent",
    },
    picker = {enabled = true},
    notifier = {enabled = true},
    zen = {enabled = true},

})
