-- Competitive programming



-- Set output space.
vim.g.asyncrun_open = 6 
vim.g.asyncrun_bell = 1

local keymap = vim.api.nvim_set_keymap
opts = {noremap = false, silent = true}

if (vim.g.vscode)
    then
-- Add setting for vscode.
local options = {
    clipboard = "unnamedplus"
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

keymap("n", "ct", ":-1read ~/Documents/mycodes/template/template.cpp<cr>", opts)
end

-- Compiling commands.
if (not vim.g.vscode) 
then
keymap("n", "<F9>", ':w <cr>:AsyncRun g++ -std=c++17 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/a" -Wshadow -Wall -O2 -Wno-unused-result <cr>', opts)
keymap("i", "<F9>", '<ESC> :w <cr>:AsyncRun g++ -std=c++17 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/a" -Wshadow -Wall -O2 -Wno-unused-result <cr>', opts)

-- Copy template command.
keymap("n", "ct", ":-1read ~/Documents/mycodes/template/template.cpp<cr>", opts)

-- Change tab to 4 spaces.
vim.opt.tabstop = 4 -- size of a hard tabstop
vim.opt.softtabstop = 2
vim.opt.expandtab = true -- always uses spaces instead of tab characters 
vim.opt.shiftwidth = 4 -- size of an "indent"
vim.opt.smartindent = true -- Autoindent new lines

end


-- Press Space+A to copy all file.
keymap("n", "<C-a>", ":%y<cr>", opts)

-- Fuzzy find / Telescope.
keymap("n", "<F12>", ":Telescope find_files", opts)

