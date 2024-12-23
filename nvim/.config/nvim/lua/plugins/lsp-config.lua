return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls","pyright","clangd","zls","jdtls",}
        })
        end
  },

 {
  "neovim/nvim-lspconfig",
  lazy = false,
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    local lspconfig = require("lspconfig")

    local on_attach = function(client, bufnr)
      local opts = { noremap=true, silent=true, buffer=bufnr }
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    end

    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig.pyright.setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig.clangd.setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    --  lspconfig.textlsp.setup({
    --   capabilities = capabilities,
    --   on_attach = on_attach,
    -- })

		lspconfig.texlab.setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

     lspconfig.jdtls.setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

	lspconfig.zls.setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })


	
  end,
	},

  {
  "lervag/vimtex",
  init = function()
    -- Use init for configuration, don't use the more common "config".
  end
},
}
