return {
	{
		"simrat39/rust-tools.nvim",
		lazy = false,
		config = function()
			local rt = require("rust-tools")
			rt.setup({
				server = {
					on_attach = function(_, bufnr)
					end
				},
				tools = {
					hover_actions = {
						auto_focus = true,
					},
					inlay_hints = {
						auto = true,
						only_current_line = false,
						show_parameter_hints = true,
						parameter_hints_prefix = "󰞘 ",
						other_hints_prefix = "󰞘 ",
						max_len_align = false,
						max_len_align_padding = 1,
						right_align = false,
						right_align_padding = 7,
						highlight = "Comment",
					},
				}
			})
		end
	}
}
