local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

wk.register({
  f = {
    name = "find", -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
--    s = { "<cmd>Telescope live_grep<cr>", "Find in Working Dir" },
--    c = { "<cmd>Telescope grep_string<cr>", "Find cur_string in Working Dir" },
--    b = { "<cmd>Telescope buffers<cr>", "List open buffers" },
--    h = { "<cmd>Telescope help_tags<cr>", "List available help tags" },
--    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false, buffer = 123 }, -- additional options for creating the keymap
  },
}, { prefix = "<leader>" })
