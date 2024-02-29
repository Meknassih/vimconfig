---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

-- Function to get 3-char status from Coedium
local function getCodeiumStatus()
  return "%#St_LspStatus#" .. "󱠀" .. vim.api.nvim_call_function("codeium#GetStatusString", {}) .. " "
end

M.ui = {
  theme = "tokyodark",
  theme_toggle = { "tokyodark", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    overriden_modules = function (modules)
      table.insert(
        modules,
        7,
        getCodeiumStatus()
      )
    end
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
