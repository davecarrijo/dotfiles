-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  transparency = true,
	theme = "rosepine",
	theme_toggle = { "rosepine", "palenight" },
	lsp = {
	  signature = false,
	  hover = false,
	},
  nvdash = {
    load_on_startup = true,
  },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

-- clipboard
local in_wsl = os.getenv "WSL_DISTRO_NAME" ~= nil

if in_wsl then
  vim.g.clipboard = {
    name = "wsl clipboard",
    copy = {
      ["+"] = "win32yank.exe -i",
      ["*"] = "win32yank.exe -i",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = true,
  }
end

return M
