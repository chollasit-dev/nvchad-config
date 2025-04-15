-- defaults: lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

local servers = {
  "bashls",
  "cssls",
  "docker_compose_language_service",
  "dockerls",
  "html",
  "jsonls",
  "pyright",
  "ruff",
  "tailwindcss",
  "ts_ls",
  "yamlls",
}

-- lsps with defaults
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- language specific

-- go
lspconfig.gopls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    gopls = {
      usePlaceholders = true,
      analyses = {
        unusedParams = true,
      },
    },
  },
}
