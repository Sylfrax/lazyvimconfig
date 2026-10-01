--[[vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    end,
})]]

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local opts = { buffer = ev.buf }

    -- 跳转
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)        -- 跳到定义
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)       -- 跳到声明
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)    -- 跳到实现
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)        -- 查看引用
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)   -- 跳到类型定义

    -- 信息
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)              -- 悬浮文档
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts) -- 函数签名帮助

    -- 修改
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)    -- 重命名
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- 代码操作(修复等)
    vim.keymap.set("n", "<leader>f", function()                    -- 格式化
      vim.lsp.buf.format({ async = true })
    end, opts)

    -- 诊断
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)      -- 上一个错误
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)      -- 下一个错误
    vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts) -- 显示错误详情
  end,
})
