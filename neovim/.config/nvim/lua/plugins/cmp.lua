local cmp = require('cmp')
local lspkind = require('lspkind')
cmp.setup{
	
    snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			require'luasnip'.lsp_expand(args.body) -- Luasnip expand
		end,
	},

	mapping = {

		-- Show autocomplete (AC) menu
		['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<CR>'] = cmp.config.disable,
		['<C-y>'] = cmp.mapping.confirm({ select = true }),

		-- AC abort
		['<C-e>'] = cmp.mapping({
			i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
		}),
		['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
		['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
	},

	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'nvim_lsp_signature_help' },
		{ name = 'luasnip' },
		{ name = 'buffer' },
		{ name = 'path' },
		{ name = "emoji" },
	}, {
	}),
	formatting = {
		format = lspkind.cmp_format({
			mode = 'symbol',
			maxwidth = 50,
		})
	}
}
