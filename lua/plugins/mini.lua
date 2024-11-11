return {
	{ 'echasnovski/mini.nvim' },
	{'echasnovski/mini.indentscope',
		config = function()
			require('mini.indentscope').setup()
		end
	},
	{'echasnovski/mini.pairs',
		config = function()
			require('mini.pairs').setup()
		end
	},
}
