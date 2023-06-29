-- Aliase for short access to API
local map = vim.api.nvim_set_keymap

-- Mapping for each mode
function mapNormal(key, command) 
	map('n', key, command, {noremap = true})
end

function mapInput(key, command)
	map('i', key, command, {noremap = true})
end

function mapVisual(key, command)
	map('v', key, command, {noremap = true})
end

function mapTerminal(key, command)
	map('t', key, command, {noremap = true})
end

