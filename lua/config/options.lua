-- 允许编辑文件
vim.o.modifiable = true

-- 使用utf-8编码
vim.g.encoding = "utf-8"
vim.o.fileencoding = "utf-8"

-- 字体
vim.o.guifont = "CaskaydiaMono Nerd Font:h15"

-- 添加行号
vim.o.number = true

-- 缩进
vim.bo.softtabstop = 4
vim.o.shiftwidth = 4
vim.bo.expandtab = true
vim.bo.autoindent = true
vim.bo.smartindent = true

-- 防止折行显示文本
vim.o.wrap = false

-- 默认新窗口位于右方和下方
vim.o.splitright = true
vim.o.splitbelow = true

-- 光标移动的时候始终保持上下左右至少8个空格间隔
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- 显示光标行
vim.wo.cursorline = true

-- 启用鼠标
vim.opt.mouse:append("a")

-- 支持系统剪贴板
vim.opt.clipboard:append("unnamedplus")

-- 代码搜索区分大小写
vim.o.ignorecase = false
vim.o.smartcase = true

-- 输入的同时搜索
vim.g.incsearch = true

-- 启用自动补全，自动选中但不自动插入
--vim.o.completeopt = "menu, preview"

-- 补全增强
--vim.o.wildmenu = true

-- 启用终端真颜色
vim.o.termguicolors = true

-- 左侧增多一列来显示指示图标
vim.wo.signcolumn = "yes"

-- 命令行（模式）显示高为2行
vim.o.cmdheight = 2

-- 使用增强状态栏插件后不需要neovim的模式提示
vim.g.showmode = false

-- 当文件被外部程序修改时，自动加载修改后的内容
vim.bo.autoread = true
vim.g.autoread = true
