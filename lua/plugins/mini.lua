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
	{'echasnovski/mini.diff',
		config = function()
			require('mini.diff').setup()
		end
	},
	{'echasnovski/mini.splitjoin',
		config = function()
    require('mini.splitjoin').setup()
    local function map(m, k, v)
      vim.keymap.set(m, k, v, { silent = false })
    end
    map('n', "ghs", ':lua MiniDiff.toggle_overlay()<CR>')
		end
	}
}
