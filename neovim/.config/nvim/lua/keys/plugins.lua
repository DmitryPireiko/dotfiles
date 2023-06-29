require('keys/aliases')

-- LSP
mapNormal('gk', '<cmd>lua vim.lsp.buf.hover()<CR>' )                      -- Hover
mapNormal('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')                -- Code action
mapNormal('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')                     -- Rename object

-- NvimTree
mapNormal('<leader>v', '<cmd>Neotree filesystem reveal left toggle<CR>')

-- Telescope
mapNormal('gd', '<cmd>Telescope lsp_definitions<CR>')                       -- LSP define
mapNormal('<leader>p', '<cmd>Telescope oldfiles<CR>')                       -- Recently used
mapNormal('<leader>o', '<cmd>Telescope git_files<CR>')                      -- Search file
mapNormal('<leader>b', '<cmd>Telescope git_branches<CR>')                   -- Git branches
mapNormal('<leader>f', '<cmd>Telescope live_grep<CR>')                      -- Search string
mapNormal('<leader>q', '<cmd>Telescope buffers<CR>')                        -- Buffers

-- Formatter
mapNormal('<leader>l', '<cmd>Format<CR>')

-- Trouble
mapNormal('<leader>x', '<cmd>TroubleToggle<CR>')                         -- Open Trouble menu
mapNormal('gr', '<cmd>Trouble lsp_references<CR>')                       -- LSP references
