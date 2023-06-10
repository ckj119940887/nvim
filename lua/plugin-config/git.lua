local status, fugitive = pcall(require, "vim-fugitive")
if not status then
  vim.notify("Not Found vim-fugitive")
  return
end

fugitive.setup {
  vim.cmd.cnoreabbrev([[git Git]]),
	vim.cmd.cnoreabbrev([[gp Git push]])
}


local statu, gitsigns = pcall(require, "gitsigns")
if not statu then
  vim.notify("Not Found gitsigns")
  return
end

gitsigns.setup {

}
