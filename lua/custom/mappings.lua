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
    ["<CR>"] = { "i<CR><ESC>", "Add newline"},
  },
  v = {
    [">"] = { ">gv", "indent" },
    ["M"] = { ":m '<-2<CR>gv=gv", "move line up" },
    ["m"] = { ":m '>+1<CR>gv=gv", "move line down" },
  },
}

-- more keybinds!

return M
