return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional, nicer vim.ui.select popups
    },
    config = function()
      require("flutter-tools").setup({
        decorations = {
          statusline = {
            app_version = true,
            device = true,
          },
        },
        lsp = {
          -- color = { enabled = true }, -- inline color swatches for Dart colors
        },
        debugger = {
          enabled = true,
          run_via_dap = true,
        },
      })
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    -- master branch is archived and breaks on nvim 0.12 (query directives expect single nodes)
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      pcall(function()
        dofile(vim.g.base46_cache .. "syntax")
        dofile(vim.g.base46_cache .. "treesitter")
      end)
      require("nvim-treesitter").install {
        "vim", "lua", "luadoc", "printf", "vimdoc",
        "html", "css", "json",
        "javascript", "typescript", "tsx", "vue",
      }
      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          pcall(vim.treesitter.start, args.buf)
        end,
      })
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server", "vue-language-server",
        "eslint-lsp", "prettier", "emmet-language-server",
      },
    },
  },
}
