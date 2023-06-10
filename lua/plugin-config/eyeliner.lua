local status, eyeliner = pcall(require, "eyeliner")
if not status then
  vim.notify("Not Found eyeliner")
  return
end

eyeliner.setup({
  highlight_on_key = true, -- show highlights only after keypress
  dim = false,            -- dim all other characters if set to true (recommended!)
})
