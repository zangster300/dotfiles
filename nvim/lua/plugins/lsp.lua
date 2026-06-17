-- Portable LSP + tooling config

return {
  -----------------------------------------------------------------------------
  -- LSP servers
  -----------------------------------------------------------------------------
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Go
        gopls = {},

        -- Lua
        lua_ls = {}, -- pkg: lua-language-server

        -- Web / markup
        emmet_language_server = {}, -- pkg: emmet-language-server
        superhtml = {}, -- HTML validator + LSP
        jsonls = {}, -- pkg: json-lsp

        -- JS / TS
        -- vtsls = { enabled = false },
        tsgo = {},
        oxlint = {},

        -- Docker
        dockerls = {}, -- pkg: dockerfile-language-server
        docker_compose_language_service = {}, -- pkg: docker-compose-language-service

        -- Markdown
        marksman = {},

        -- TOML
        taplo = {},

        -- templ (Go HTML templates)
        templ = {},

        -- Zig
        zls = {},

        -- Odin (ols isn't in Mason; use the binary on $PATH)
        ols = {
          mason = false,
          cmd = { "ols" },
          settings = {
            odin_command = "odin",
          },
        },
      },
    },
  },

  -----------------------------------------------------------------------------
  -- Formatters, linters, and CLIs (appended to LazyVim's stylua + shfmt)
  -----------------------------------------------------------------------------
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Go
        "gofumpt",
        "goimports",
        "golangci-lint", -- CLI linter, not the LSP

        -- Lua
        "stylua",

        -- Shell
        "shfmt",

        -- Docker
        "hadolint",

        -- JS / TS
        "oxfmt",

        -- Treesitter parser compiler (needed by nvim-treesitter's main branch)
        "tree-sitter-cli",
      },
    },
  },

  -----------------------------------------------------------------------------
  -- Formatting (conform.nvim)
  -- This block teaches conform to format odin files
  -----------------------------------------------------------------------------
  {
    "stevearc/conform.nvim",
    opts = {
      notify_on_error = false,
      formatters_by_ft = {
        odin = { "odinfmt" },
      },
    },
  },
}
