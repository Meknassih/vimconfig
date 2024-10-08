---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>cu"] = {
      function()
        require("treesitter-context").go_to_context()
      end,
      "jump to upward context",
    },
    ["<leader>df"] = { ":w !diff % -", "diff buffer vs disk", opts = { nowait = true } },
    ["<leader>fk"] = { "<cmd> Telescope keymaps <CR>", "Find keymap" },
    ["<leader>cw"] = { "<cmd> close <CR>", "Close window" },
    ["<leader>fs"] = { "<cmd> Telescope grep_string <CR>", "Live grep current word" },
    ["<C-B>"] = { '"+yy', "Copy line to 'synchronized with OS clipboard' register" },
    ["<leader>ai"] = {
      ':lua vim.api.nvim_call_function("codeium#Chat", {})<CR>',
      "Chat with AI",
      opts = { nowait = true, noremap = true, silent = true },
    },
    ["<leader>o"] = {
      "<cmd>Outline<CR>",
      "Toggle Outline",
      opts = { nowait = true, noremap = true, silent = true },
    },
    ["<leader>cb"] = {
      "<cmd> %bd|e#|bd# <CR>",
      "Close all but current buffer",
      opts = { nowait = true, noremap = true, silent = true },
    }
  },
  v = {
    [">"] = { ">gv", "indent" },
    ["M"] = { ":m '<-2<CR>gv=gv", "move line up" },
    ["m"] = { ":m '>+1<CR>gv=gv", "move line down" },
    ["p"] = { '"0p', "Paste from yank register", opts = { noremap = true } },
    ["P"] = { '"0P', "Paste from yank register", opts = { noremap = true } },
    ["<C-B>"] = { '"+y', "Copy to 'synchronized with OS clipboard' register" },
  },
  i = {
    ["<C-a>"] = {
      function() return vim.fn['codeium#Accept']() end,
      "Accept AI suggestion",
      opts = { nowait = true, expr = true },
    },
  }
}

-- more keybinds!

return M
