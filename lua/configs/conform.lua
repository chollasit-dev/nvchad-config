local options = {
  formatters_by_ft = {
    ["markdown.mdx"] = { "prettierd", "markdownlint-cli2", "markdown-toc" },
    css = { "prettierd" },
    html = { "prettierd" },
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    lua = { "stylua" },
    markdown = { "prettierd", "markdownlint-cli2", "markdown-toc" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },

  formatters = {
    ["markdown-toc"] = {
      condition = function(_, ctx)
        for _, line in ipairs(vim.api.nvim_buf_get_lines(ctx.buf, 0, -1, false)) do
          if line:find "<!%-%- toc %-%->" then
            return true
          end
        end
      end,
    },
    ["markdownlint-cli2"] = {
      condition = function(_, ctx)
        local diag = vim.tbl_filter(function(d)
          return d.source == "markdownlint"
        end, vim.diagnostic.get(ctx.buf))
        return #diag > 0
      end,
    },
  },
}

return options
