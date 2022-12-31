vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

keymap.set("i", "jk", "<ESC>")

-- clear search highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- move line up / down
keymap.set("n", "[e", ":move -2<CR>")
keymap.set("n", "]e", ":move +1<CR>")


----------------------
-- Plugin Keybinds
----------------------

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary


-- Key Map groups using which key
-- import which-key plugin safely
local status, wk = pcall(require, "which-key")
if not status then
  return
end


-- Telescope Find Option
wk.register({
  f = {
    name = "find", -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
    s = { "<cmd>Telescope live_grep<cr>", "Find in Working Dir" },
    c = { "<cmd>Telescope grep_string<cr>", "Find cur_string in Working Dir" },
    b = { "<cmd>Telescope buffers<cr>", "List open buffers" },
    h = { "<cmd>Telescope help_tags<cr>", "List available help tags" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"}, --, noremap=false, buffer = 123 }, -- additional options for creating the keymap
  },
}, { prefix = "<leader>" })

-- vimspector debug keymaps

keymap.set("n", "<S-k>", ":call vimspector#StepOut()<cr>")
keymap.set("n", "<S-l>", ":call vimspector#StepInto()<cr>")
keymap.set("n", "<S-j>", ":call vimspector#StepOver()<cr>")

wk.register({
  d = {
    name = "debug",
    a = { "<cmd>call vimspector#Continue()<cr>", "Continue"},
    _ = { ":call vimspector#Reset()<cr>", "Reset"},
    s = { ":call vimspector#Restart()<cr>", "Restart"},
    n = { ":call vimspector#Continue()<cr>", "Continue"},
    rc = { ":call vimspector#RunToCursor()<cr>", "Run to Cursor"},
    h = { ":call vimspector#ToggleBreakpoint()<cr>", "Toggle Breakpoint"},
    e = { ":call vimspector#ToggleConditionalBreakpoint()<cr>", "Toggle Conditional Breakpoint"},
    x = { ":call vimspector#ClearBreakpoints()<cr>", "Clear Breakpoints"},
    K = { ":call vimspector#StepOut()<cr>", "Step Out"},
    L = { ":call vimspector#StepInto()<cr>", "Step Into"},
    J = { ":call vimspector#StepOver()<cr>", "Step Over"},   },
}, { prefix = "<leader>"})

-- window management

wk.register({
    s = {
        name = "Split Window",
        v = { "<C-w>v", "Split Vertically"}, -- split window vertically
        h = { "<C-w>s", "Split Horizontally"}, -- split window horizontally
        e = { "<C-w>=", "Equal Split"}, -- make split windows equal width & height
        x = { ":close<CR>", "Close Split"}, -- close current split window
        m = { ":MaximizerToggle<CR>", "Maximize"}, -- toggle split window maximization

    },
},
    { prefix = "<leader>"}
)

wk.register({
    t = {
        name = "Tabs",
        o = { ":tabnew<CR>", "Open New"}, -- open new tab
        x = { ":tabclose<CR>", "Close"}, -- close current tab
        n = { ":tabn<CR>", "Next"}, --  go to next tab
        p = { ":tabp<CR>", "Previous"}, --  go to previous tab
    },
},
    { prefix = "<leader>"}
)

-- using LineBuffer plugin
wk.register({
    b = {
        name = "Buffers",
        l = { ":BufferLineCycleNext<CR>", "Next"}, -- next buffer
        h = { ":BufferLineCyclePrev<CR>", "Previous"}, -- prev buffer
        p = { ":BufferLineTogglePin<CR>", "Pin"}, -- pin buffer
    },
},
    { prefix = "<leader>"}
)

for i = 1, 9 do
  keymap.set("n", "<leader>b" .. i, function()
    require("bufferline").go_to_buffer(i, true)
  end)
end
