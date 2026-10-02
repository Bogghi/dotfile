require("nvchad.configs.lspconfig").defaults()

-- vue_ls runs in hybrid mode: it forwards TS requests to ts_ls, which needs
-- the @vue/typescript-plugin loaded and 'vue' added to its filetypes.
local vue_typescript_plugin = vim.fn.stdpath "data" .. "/mason/packages/vue-language-server/node_modules/@vue/typescript-plugin"

vim.lsp.config("ts_ls", {
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = vue_typescript_plugin,
        languages = { "vue" },
      },
    },
  },
})

local servers = { "html", "cssls", "ts_ls", "vue_ls", "eslint", "emmet_language_server" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
