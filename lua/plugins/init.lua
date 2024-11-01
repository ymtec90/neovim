return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim"
        }
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("neo-tree").setup({
                close_if_last_window = true,
                window = {
                    width = 30,
                },
                buffers = {
                    follow_current_file = {
                        enabled = true
                    },
                },
                filesystem = {
                    follow_current_file = {
                        enabled = true
                    },
                    filtered_items = {
                        hide_dotfiles = false,
                        hide_gitignored = false,
                        hide_by_name = {
                            "node_modules"
                        },
                        never_show = {
                            ".DS_Store",
                            "thumbs.db"
                        },
                    },
                },
                event_handlers = {
                    {
                        event = "file_open_requested",
                        handler = function()
                            require("neo-tree.command").execute({ action = "close" })
                        end
                    },
                },
            })
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    },
    {
        "akinsho/bufferline.nvim",
        version = "*", 
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        }
    },
    {
        "neoclide/coc.nvim",
        branch = "release",
        lazy = false,
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
        opts = {},
    },
    {
        "tpope/vim-commentary",
        event = "BufRead",
    },
    {
        "tpope/vim-fugitive",
        cmd = {
            "G",
            "Git",
            "Gdiffsplit",
            "Gread",
            "Gwrite",
            "Ggrep",
            "GMove",
            "GDelete",
            "GBrowse",
            "GRemove",
            "GRename",
            "Glgrep",
            "Gedit",
        },
        ft = {"fugitive"}
    },
    {
        'airblade/vim-gitgutter',
        event = "BufRead",
        config = function()
            -- Disable vim-gitgutter by default
            vim.g.gitgutter_enabled = 1
            vim.g.gitgutter_map_keys = 0  -- Disable default mappings

            -- Custom highlight groups for line numbers
            vim.cmd([[
            highlight GitGutterAddLineNr guifg=#A6E22E
            highlight GitGutterChangeLineNr guifg=#66D9EF
            highlight GitGutterDeleteLineNr guifg=#F92672
            ]])

            -- Link line number colors to git changes
            vim.cmd([[
            autocmd ColorScheme * highlight GitGutterAddLineNr guifg=#A6E22E
            autocmd ColorScheme * highlight GitGutterChangeLineNr guifg=#66D9EF
            autocmd ColorScheme * highlight GitGutterDeleteLineNr guifg=#F92672
            ]])

            vim.fn.sign_define('GitGutterAdd', { linehl = '', numhl = 'GitGutterAddLineNr' })
            vim.fn.sign_define('GitGutterChange', { linehl = '', numhl = 'GitGutterChangeLineNr' })
            vim.fn.sign_define('GitGutterDelete', { linehl = '', numhl = 'GitGutterDeleteLineNr' })
        end
    },
}
