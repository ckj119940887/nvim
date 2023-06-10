local status, nvim_tree = pcall(require, "mason")
if not status then
  vim.notify("Not Found nvim-tree")
  return
end

require("mason").setup {}
require("mason-lspconfig").setup {}
