require "nvchad.mappings"

-- set
local map = vim.keymap.set

-- quick command
map("n", "<leader>`", ":bNext<CR>", { desc = "Go to next buffer" })
map("n", "<leader>n", ":Telescope notify<CR>", { desc = "Telescope notify history" })

-- quit
map("n", "<leader>qq", ":qa!<CR>", { desc = "Quit Neovim all force" })

-- tab
map("n", "<leader>dd", ":tabclose<CR>", { desc = "Close current tab" })

-- find
map("n", "<leader>:", ":Telescope command_history<CR>", { desc = "Telescope command history" })
map("n", "<leader>fc", ":Telescope git_commits<CR>", { desc = "Telescope find commit" })

-- search
map("n", "<leader>sC", ":Telescope commands<CR>", { desc = "Telescope search commands" })
map("n", "<leader>sd", ":Telescope diagnostics<CR>", { desc = "Telescope search diagnostics" })
map("n", "<leader>st", ":TodoTelescope<CR>", { desc = "Todo Telescope" })
map("n", "<leader>sw", ":Telescope live_grep<CR>", { desc = "Telescope live grep" })

-- ui
map("n", "<leader>un", ":Noice dismiss<CR>", { desc = "Noice dismiss" })
map("n", "<leader>fe", ":NvimTreeToggle<CR>", { desc = "Neovim tree toggle" })

-- git
map("n", "<leader>gB", ":Gitsigns blame<CR>", { desc = "Gitsigns blame" })
map("n", "<leader>gP", ":Neogit push<CR>", { desc = "Neogit push" })
map("n", "<leader>gS", ":Neogit stash<CR>", { desc = "Neogit stash" })
map("n", "<leader>gb", ":Telescope git_branches<CR>", { desc = "View branches" })
map("n", "<leader>gc", ":Neogit commit<CR>", { desc = "Neogit commit" })
map("n", "<leader>gd", ":Neogit diff<CR>", { desc = "Neogit diff" })
map("n", "<leader>gf", ":Neogit fetch<CR>", { desc = "Neogit fetch" })
map("n", "<leader>gg", ":Neogit<CR>", { desc = "Open neogit tab" })
map("n", "<leader>gl", ":Neogit log<CR>", { desc = "Neogit log" })
map("n", "<leader>gp", ":Neogit pull<CR>", { desc = "Neogit pull" })
map("n", "<leader>gs", ":Telescope git_status<CR>", { desc = "Telescope git status" })

-- fterm
vim.keymap.set({ "n", "t" }, "<A-i>", function()
  require("FTerm").toggle()
end)

-- todo comments
local todo = require "todo-comments"
map("n", "]t", function()
  todo.jump_next()
end, { desc = "Next todo comment" })
map("n", "[t", function()
  todo.jump_prev()
end, { desc = "Previous todo comment" })

-- can also specify a list of valid jump keywords

-- vim.keymap.set("n", "]t", function()
--   require("todo-comments").jump_next { keywords = { "ERROR", "WARNING" } }
-- end, { desc = "Next error/warning todo comment" })

-- go.nvim
map("n", "<leader>pfs", ":GoFillStruct<CR>", { desc = "Auto fill Go struct" })
map("n", "<leader>pie", ":GoIfErr<CR>", { desc = "Add Go if err" })
map("n", "<leader>pat", ":GoAddTag<CR>", { desc = "Add Go tag" })
