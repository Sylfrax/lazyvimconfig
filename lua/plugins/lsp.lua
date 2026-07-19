return {
  {
    "hrsh7th/nvim-cmp",
    enable = true,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/nvim-cmp", -- 确保 nvim-cmp 先加载
    },

    opts = {
      servers = {
        rust_analyzer = {
          cmd = { "rust-analyzer" },
        },
        ocamllsp = {
          cmd = {'ocamllsp'},
        },
        clangd = {
          cmd = {'clangd'}
        },
        nixd = {
          cmd = {'nixd'}
        },
        zls = {
          cmd = {'zls'}
        }
      },
    },
  },
}
