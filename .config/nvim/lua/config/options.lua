vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = false


-- autodetect indentation type
vim.cmd [[
  filetype plugin indent on
  set smarttab
]]
