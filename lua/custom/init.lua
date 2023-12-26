local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt.shiftwidth = 4
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
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
