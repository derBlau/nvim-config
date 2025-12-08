return { 
	"nvim-telescope/telescope.nvim", 
  tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
	  local builtin = require("telescope.builtin")

    local set = vim.keymap.set

	  -- Telescope keymaps 
    set("n", "<C-p>", builtin.find_files, {desc = "Find files in the cwd"})
	  set("n", "<leader>fg", builtin.live_grep, {})

    -- General keymaps
    set("n", "<C-s>", ":w<CR>", {desc = "Save file"})
    set("i", "<C-s>", "<C-o>:w<CR>", {desc = "Save file"})
    set({"n", "i", "v"}, "<C-j>", "<Esc>", {})
    set("n", "<C-l>", ":source %<CR>", {desc = "Source current buffer"})

	end 
}

