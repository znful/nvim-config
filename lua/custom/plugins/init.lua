return {
  {
    'AlexvZyl/poimandres.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      local p = require 'poimandres.palette'
      require('poimandres').setup {
        highlight_groups = {
          LspReferenceText = { bg = p.background1 },
          LspReferenceRead = { bg = p.background1 },
          LspReferenceWrite = { bg = p.background1 },
        },
        disable_background = true,
      }
    end,

    -- init = function()
    --   vim.cmd 'colorscheme poimandres'
    -- end,
  },

  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {

        dim_inactive_windows = false,
        styles = {
          transparency = true,
        },
      }
      vim.cmd 'colorscheme rose-pine'
    end,
  },

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
      require('catppuccin').setup {
        flavour = 'frappe',
        transparent_background = true,
        dim_inactive = {
          enabled = false,
        },
        no_italic = true,
      }
      -- vim.cmd 'colorscheme catppuccin'
    end,
  },

  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_transparent_background = 1
      -- vim.g.gruvbox_material_background = 'hard'
      -- vim.cmd.colorscheme 'gruvbox-material'
    end,
  },

  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,

    config = function()
      require('solarized-osaka').setup {
        transparent = true,
      }
    end,

    init = function()
      -- vim.cmd 'colorscheme solarized-osaka'
    end,
  },
  {
    'github/copilot.vim',
  },
}
