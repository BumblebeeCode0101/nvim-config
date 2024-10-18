return {
    { 'nvim-treesitter/nvim-treesitter', build = 'TSUpdate' },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
        init = function()
            vim.g.lsp_zero_extend_cmp = 0
            vim.g.lsp_zero_extend_lspconfig = 0
        end,
    },

    {
        'williamboman/mason.nvim',
        lazy = false,
        config = true,
    },

    {
        'iguanacucumber/magazine.nvim',
	name = "nvim-cmp",
        event = 'InsertEnter',
        dependencies = {
            {
                "L3MON4D3/LuaSnip",
                dependencies = { "rafamadriz/friendly-snippets" },
            }
        },
    },

    {
        'neovim/nvim-lspconfig',
        cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
        event = { 'BufReadPre', 'BufNewFile' },
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'williamboman/mason-lspconfig.nvim' },
        },
        config = function()
            local lsp_zero = require('lsp-zero')
            lsp_zero.extend_lspconfig()

            lsp_zero.on_attach(function(client, bufnr)
                lsp_zero.default_keymaps({ buffer = bufnr })
            end)

            require('mason-lspconfig').setup({
                ensure_installed = {},
                handlers = {
                    lsp_zero.default_setup,
                    lua_ls = function()
                        local lua_opts = lsp_zero.nvim_lua_ls()
                        require('lspconfig').lua_ls.setup(lua_opts)
                    end,
                }
            })
        end
    },
    {
        'saadparwaiz1/cmp_luasnip',
    },
    {
	'hrsh7th/cmp-nvim-lsp-signature-help',
    },
    {
	'hrsh7th/cmp-path',
    },
    {
	'hrsh7th/cmp-nvim-lsp',
    },
    {
      	'nvim-telescope/telescope.nvim', 
      	tag = '0.1.8', 
      	branch = '0.1.x',
      	dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
