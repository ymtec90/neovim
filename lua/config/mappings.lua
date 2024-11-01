local builtin = require("telescope.builtin")

-- Plugins mappings
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<c-n>", vim.cmd.Neotree, { desc = "Open Neotree Explorer"})

-- My preffered mappings
vim.keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode" }) 
vim.keymap.set("n", "o", "o<ESC>", { desc = "Create new line below" })
vim.keymap.set("n", "O", "O<ESC>", { desc = "Create new line above" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("n", "n", "nzz", { desc = "Find below" })
vim.keymap.set("n", "N", "Nzz", { desc = "Find above" })
vim.keymap.set("n", "Y", "y$", { desc = "Yank the rest of the line" })
vim.keymap.set("n", "<c-j>", "<c-w>j", { desc = "Move cursor down" })
vim.keymap.set("n", "<c-k>", "<c-w>k", { desc = "Move cursor up" })
vim.keymap.set("n", "<c-h>", "<c-w>h", { desc = "Move cursor left" })
vim.keymap.set("n", "<c-l>", "<c-w>l", { desc = "Move cursor right" })

-- Disable arrow keys
vim.keymap.set("n", "<Up>", "<Nop>")
vim.keymap.set("n", "<Down>", "<Nop>")
vim.keymap.set("n", "<Right>", "<Nop>")
vim.keymap.set("n", "<Left>", "<Nop>")
