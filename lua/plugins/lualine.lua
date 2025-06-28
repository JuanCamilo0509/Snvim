return {
	'nvim-lualine/lualine.nvim',
	opts = {
		options = {
			theme = 'auto',
			component_separators = { left = ' ', right = ' ' },
			section_separators = { left = ' ', right = '' },
			disabled_filetypes = {
				statusline = {},
				winbar = {},
			},
			ignore_focus = {},
			always_divide_middle = false,
			globalstatus = true,
			refresh = {
				statusline = 1000,
				tabline = 1000,
				winbar = 1000,
			}
		},
		sections = {
			lualine_a = { 'filename' },
			lualine_b = { 'branch', 'diff' },
			lualine_c = { 'diagnostics' },
			lualine_x = {},
			lualine_y = {},
			lualine_z = {}
		}
	}
}
