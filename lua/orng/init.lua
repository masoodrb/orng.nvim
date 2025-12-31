local M = {}

-- Configuration with defaults
local config = {
  transparent_background = false,
  italic_comments = true,
  italic_keywords = false,
  italic_functions = false,
  italic_variables = false,
  bold_functions = false,
  bold_keywords = false,
  bold_variables = false,
  color_overrides = {},
  highlights_overrides = {}
}

function M.setup(opts)
  config = vim.tbl_deep_extend("force", config, opts or {})
end

function M.load()
  if vim.version().minor < 8 then
    vim.notify("orng.nvim requires Neovim 0.8+")
    return
  end

  -- Reset colors
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.g.colors_name = "orng"
  vim.o.termguicolors = true

  -- Load the colorscheme
  vim.cmd("runtime colors/orng.lua")
end

-- Convenience function
function M.colors()
  return require("orng.colors")
end

return M