local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
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
opt.background = "light"
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
