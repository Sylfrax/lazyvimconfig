local auto = require("nvim-autopairs")
auto.setup({
    disable_in_macro = false,
    -- 是否禁用在视觉模式
    disable_in_visualblock = false,
    -- 是否在检测到CR时关闭
    check_ts = true,
})
