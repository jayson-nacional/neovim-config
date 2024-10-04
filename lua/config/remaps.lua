vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<leader>F", function ()
	vim.lsp.buf.format({ async = false })
end)
