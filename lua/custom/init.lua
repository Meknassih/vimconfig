local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt.shiftwidth = 0 -- means use tabstop value
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.relativenumber = true
  end,
})

vim.o.showbreak = "↪ "
vim.opt.listchars = {
  eol = "↵",
  tab = "→ ",
  nbsp = "␣",
  trail = "•",
  lead = "•",
  extends = "⟩",
  precedes = "⟨",
}
vim.opt.list = true
vim.opt.clipboard = ""

-- Folding with Treesitter
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldenable = false
