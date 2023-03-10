local opt = vim.opt

pcall(vim.cmd, "autocmd TermOpen * startinsert")
pcall(vim.cmd, "autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE")
-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- mouse
opt.mouse = "a"
opt.mousemoveevent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipbaord
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

-- opt.lcs = opt.lcs + "space:·"
opt.listchars = opt.listchars + "eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:."
opt.list = true

-- timeoutlen for which-key
opt.timeoutlen = 500
