---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
    ["<leader>lvd"] = {vim.lsp.buf.hover, "Show floating definition"},
    ["<leader>lvr"] = {vim.lsp.buf.references, "Show references"}
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

return M
