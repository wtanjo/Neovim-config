local opt = vim.opt

-- 添加行号
opt.number = true

-- 缩进
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 显示光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 支持系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口位于右方和下方
opt.splitright = true
opt.splitbelow = true

-- 代码搜索区分大小写
opt.ignorecase = false
opt.smartcase = true

-- 启用终端真颜色
opt.termguicolors = true

-- 左侧增多一列
opt.signcolumn = "yes"
