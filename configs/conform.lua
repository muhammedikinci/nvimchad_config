--type conform.options
local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },
    svelte = { { "prettierd", "prettier" } },
    javascript = { { "prettierd", "prettier" } },
    typescript = { { "prettierd", "prettier" } },
    javascriptreact = { { "prettierd", "prettier" } },
    typescriptreact = { { "prettierd", "prettier" } },
    json = { { "prettierd", "prettier" } },
    graphql = { { "prettierd", "prettier" } },
    java = { "google-java-format" },
    kotlin = { "ktlint" },
    ruby = { "standardrb" },
    markdown = { { "prettierd", "prettier" } },
    erb = { "htmlbeautifier" },
    html = { "htmlbeautifier" },
    bash = { "beautysh" },
    proto = { "buf" },
    rust = { "rustfmt" },
    yaml = { "yamlfix" },
    toml = { "taplo" },
    css = { { "prettierd", "prettier" } },
    scss = { { "prettierd", "prettier" } },

    sh = { "shfmt" },
    go = { "gofumpt", "goimports_reviser", "golines" },
  },

  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  },

  format_after_save = {
    lsp_fallback = true,
  },

  -- adding same formatter for multiple filetypes can look too much work for some
  -- instead of the above code you could just use a loop! the config is just a table after all!

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
  --
}

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format { bufnr = args.buf }
  end,
})

require("conform").setup(options)
