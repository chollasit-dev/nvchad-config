local opts = {
  formatters_by_ft = {
    ["markdown.mdx"] = { "prettierd", "markdownlint-cli2", "markdown-toc" },
    bash = { "shfmt" },
    css = { "prettierd" },
    gitconfig = { "shfmt" },
    go = { "goimports-reviser", "golines" },
    html = { "prettierd" },
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    json = { "prettierd" },
    lua = { "stylua" },
    markdown = { "prettierd", "markdownlint-cli2", "markdown-toc" },
    py = { "ruff" },
    sh = { "shfmt" },
    sql = { "sqruff" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    yaml = { "prettierd" },
    zsh = { "shfmt" },
  },

  -- If this is set, Conform will run the formatter on save.
  -- It will pass the table to conform.format().
  -- This can also be a function that returns the table.
  format_on_save = {
    -- I recommend these options. See :help conform.format for details.
    lsp_format = "fallback",
    timeout_ms = 500,
  },
}

return opts
