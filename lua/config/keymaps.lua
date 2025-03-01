-- 主键
vim.g.mapleader = " "

----- 视觉模式 
-- 单行及多行上下移动
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv")

----- 正常模式
-- 分屏
vim.keymap.set("n", "<leader>sv", "<C-w>s")
vim.keymap.set("n", "<leader>sh", "<C-w>v")

-- "；"等同于"："
vim.keymap.set("n", ";", ":")
