require('keys/aliases')

-- LSP
mapNormal('gk', '<cmd>lua vim.lsp.buf.hover()<CR>' )                      -- Hover
mapNormal('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')                -- Code action
mapNormal('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')                     -- Rename object

-- NvimTree
mapNormal('<leader>v', '<cmd>Neotree filesystem reveal left toggle<CR>')

-- Trouble
mapNormal('<leader>x', '<cmd>TroubleToggle<CR>')                         -- Open Trouble menu
mapNormal('gr', '<cmd>Trouble lsp_references<CR>')                       -- LSP references
