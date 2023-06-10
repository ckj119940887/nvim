local status, persistence = pcall(require, "persistence")
if not status then
	vim.notify("Not Found persistence")
	return
end

persistence.setup({})

persistence.load({ last = true })
