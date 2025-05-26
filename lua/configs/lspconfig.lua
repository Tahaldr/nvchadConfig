local nvlsp = require "nvchad.configs.lspconfig"
local on_attach = nvlsp.on_attach
local on_init = nvlsp.on_init
local capabilities = nvlsp.capabilities

local lspconfig = require "lspconfig"

nvlsp.defaults()

-- Define your installed servers with custom config for emmet_ls
local servers = {
  cssls = {},
  css_variables = {},
  docker_compose_language_service = {},
  dockerls = {},
  eslint = {},
  html = {},
  intelephense = {},
  jdtls = {},
  jsonls = {},
  lua_ls = {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
  },
  phpactor = {},
  pyright = {},
  quick_lint_js = {},
  stimulus_ls = {},
  tailwindcss = {},
  ts_ls = {},
  vtsls = {},
  yamlls = {},
  emmet_ls = {
    init_options = {
      html = {
        options = {
          ["output.selfClosingStyle"] = "xhtml",
        },
      },
      jsx = {
        options = {
          ["output.selfClosingStyle"] = "xhtml",
        },
      },
    },
    filetypes = {
      "css",
      "eruby",
      "html",
      "php",
      "javascript",
      "javascriptreact",
      "less",
      "sass",
      "scss",
      "pug",
      "typescriptreact",
      "blade",
    },
  },
}

-- LSP Setup loop
for server, config in pairs(servers) do
  lspconfig[server].setup(vim.tbl_extend("force", {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }, config))
end


-- read h vim.lsp.config for changing options of lsp servers 
