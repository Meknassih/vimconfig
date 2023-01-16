return function(use)
  use { -- Shows suggestions for command keystrokes
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use {
    'windwp/nvim-ts-autotag',
    branch = 'main',
    requires = {
      'nvim-treesitter/nvim-treesitter',
    },
    config = function ()
      require('nvim-ts-autotag').setup()
    end
  }
end

