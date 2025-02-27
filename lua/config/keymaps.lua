-- 主键
vim.g.mapleader = " "

local keymap = vim.keymap

----- 视觉模式 
-- 单行及多行上下移动
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

----- 正常模式
-- 分屏
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>sv", "<C-w>v")
