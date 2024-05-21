---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

-- Function to get 3-char status from Coedium
local function getCodeiumStatus()
  return "%#St_LspStatus#" .. "󱠀" .. vim.api.nvim_call_function("codeium#GetStatusString", {}) .. " "
end

-- Function to get relative path to current file
local function getRelativePath(file_string)
  -- Copy file icon from original string
  local starts_with_icon = string.gsub(file_string,"%%#St_file_info# ", "")
  local icon = string.match(starts_with_icon, "%S+")
  -- Return similar string with the relative path to file
  return "%#St_file_info#" .. icon .. " " .. vim.fn.fnamemodify(vim.fn.expand "%", ":~:.") .. "%#St_file_sep#"
end

M.ui = {
  theme = "tokyonight",
  theme_toggle = { "tokyonight", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    -- default = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" }
    overriden_modules = function (modules)
      modules[2] = getRelativePath(modules[2])
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
