-- local colorscheme = "darkplus"
-- local colorscheme = "tokyonight"
local colorscheme = "spacedark"

-- vim.g.tokyonight_style = "night"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
