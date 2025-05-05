return {
	'ribru17/bamboo.nvim',
	lazy = false,
	priority = 1000,
	config = function()
		require('bamboo').load()
    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	end,
}

