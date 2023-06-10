local status, navigator = pcall(require, "Navigator")
if not status then
  vim.notify("Not Found Navigator")
  return
end

navigator.setup {

}
