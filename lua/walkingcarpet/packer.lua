-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({ 
        'rose-pine/neovim', 
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,} 
     use('nvim-treesitter/playground')
     use('ThePrimeagen/harpoon')
     use("theprimeagen/refactoring.nvim")
     use('mbbill/undotree')
     use('tpope/vim-fugitive')
     use("nvim-treesitter/nvim-treesitter-context");

     use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v3.x',
            requires = {
                --- Uncomment these if you want to manage LSP servers from neovim
                {'williamboman/mason.nvim'},
                {'williamboman/mason-lspconfig.nvim'},

                -- LSP Support
                {'neovim/nvim-lspconfig'},
                -- Autocompletion
                {'hrsh7th/nvim-cmp'},
                {'hrsh7th/cmp-buffer'},
                {'hrsh7th/cmp-path'},
                {'hrsh7th/cmp-nvim-lsp'},
                {'hrsh7th/cmp-nvim-lua'},
                {'saadparwaiz1/cmp_luasnip'},
                -- Snippets
		        {'L3MON4D3/LuaSnip'},
		        {'rafamadriz/friendly-snippets'},
            }
        } 

     use("folke/zen-mode.nvim")
     use("github/copilot.vim")
     use("eandrju/cellular-automaton.nvim")
     use("laytan/cloak.nvim")
     use("ThePrimeagen/vim-be-good")
     use({
        'barrett-ruth/live-server.nvim',
        build = 'yarn global add live-server',
        config = function()
            require('live-server').setup(opts)
        end
    }
     )
    end)

