local status, surround = pcall(require, "surround")
if not status then
  vim.notify("Not Found surround")
  return
end

surround.setup({
  mappings_style = "surround",
})
