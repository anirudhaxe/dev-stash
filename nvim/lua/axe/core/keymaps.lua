-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- save the file
keymap.set("n", "<leader>q", ":w<CR>", { desc = "Save the current file" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tl", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>th", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("n", "<leader>ba", "<cmd>Telescope buffers<CR>", { desc = "Show all open buffers in Telescope" })
keymap.set("n", "<leader>bl", "<cmd>bnext<CR>", { desc = "Go to next buffer" })
keymap.set("n", "<leader>bh", "<cmd>bprev<CR>", { desc = "Go to previous buffer" })
keymap.set("n", "<leader>bx", "<cmd>bd!<CR>", { desc = "Unload buffer and clear it from the buffer list" })
keymap.set("n", "<leader>bs", "<cmd>b#<CR>", { desc = "Switch to previous buffer" })

-- Map Option+Left to move backward by word in insert mode
keymap.set("i", "<ESC>b", "<C-o>b", { noremap = true, silent = true })
-- Map Option+Right to move forward by word in insert mode
keymap.set("i", "<ESC>f", "<C-o>w", { noremap = true, silent = true })
