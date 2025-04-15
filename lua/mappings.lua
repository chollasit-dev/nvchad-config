require "nvchad.mappings"

-- set
local map = vim.keymap.set

-- quick command
map("n", "<leader>`", "<cmd>bNext<CR>", { desc = "go to next buffer" })
map("n", "<leader>n", "<cmd>Telescope notify<CR>", { desc = "telescope notify history" })

-- quit
map("n", "<leader>qq", "<cmd>qa<CR>", { desc = "quit all" })

-- tab
map("n", "<leader><Tab>d", "<cmd>tabclose<CR>", { desc = "close current tab" })

-- find
map("n", "<leader>:", "<cmd>Telescope command_history<CR>", { desc = "telescope command history" })
map("n", "<leader>fc", "<cmd>Telescope git_commits<CR>", { desc = "telescope find commit" })

-- search
map("n", "<leader>sC", "<cmd>Telescope commands<CR>", { desc = "telescope search commands" })
map("n", "<leader>sd", "<cmd>Telescope diagnostics<CR>", { desc = "telescope search diagnostics" })
map("n", "<leader>st", "<cmd>TodoTelescope<CR>", { desc = "todo Telescope" })
map("n", "<leader>sw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })

-- ui
map("n", "<leader>un", "<cmd>Noice dismiss<CR>", { desc = "noice dismiss" })
map("n", "<leader>fe", "<cmd>NvimTreeToggle<CR>", { desc = "neovim tree toggle" })

-- git
map("n", "<leader>gB", "<cmd>Gitsigns blame<CR>", { desc = "gitsigns blame" })
map("n", "<leader>gP", "<cmd>Neogit push<CR>", { desc = "neogit push" })
map("n", "<leader>gS", "<cmd>Neogit stash<CR>", { desc = "neogit stash" })
map("n", "<leader>gb", "<cmd>Telescope git_branches<CR>", { desc = "view branches" })
map("n", "<leader>gc", "<cmd>Neogit commit<CR>", { desc = "neogit commit" })
map("n", "<leader>gd", "<cmd>Neogit diff<CR>", { desc = "neogit diff" })
map("n", "<leader>gf", "<cmd>Neogit fetch<CR>", { desc = "neogit fetch" })
map("n", "<leader>gg", "<cmd>Neogit<CR>", { desc = "open neogit tab" })
map("n", "<leader>gl", "<cmd>Neogit log<CR>", { desc = "neogit log" })
map("n", "<leader>gp", "<cmd>Neogit pull<CR>", { desc = "neogit pull" })
map("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })

-- fterm
vim.keymap.set({ "n", "t" }, "<A-i>", function()
  require("FTerm").toggle()
end)

-- todo comments
local todo = require "todo-comments"
map("n", "]t", function()
  todo.jump_next()
end, { desc = "next todo comment" })
map("n", "[t", function()
  todo.jump_prev()
end, { desc = "previous todo comment" })

-- can also specify a list of valid jump keywords
-- vim.keymap.set("n", "]t", function()
--   require("todo-comments").jump_next { keywords = { "ERROR", "WARNING" } }
-- end, { desc = "Next error/warning todo comment" })

-- go.nvim
map("n", "<leader>pfs", "<cmd>GoFillStruct<CR>", { desc = "auto fill Go struct" })
map("n", "<leader>pie", "<cmd>GoIfErr<CR>", { desc = "add Go if err" })
map("n", "<leader>pat", "<cmd>GoAddTag<CR>", { desc = "add Go tag" })
