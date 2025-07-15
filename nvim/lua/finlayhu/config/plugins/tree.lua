return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup {
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
			},

			update_focused_file = {
				enable = true,
				update_root = {
					enable = true,
					ignore_list = {},
				},
				exclude = false,
			},

		}
	end,
}

