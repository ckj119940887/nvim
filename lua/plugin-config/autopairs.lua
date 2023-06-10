local status, autopairs = pcall(require, "nvim-autopairs")
if not status then
  vim.notify("Not Found autopairs")
  return
end

autopairs.setup {

}

