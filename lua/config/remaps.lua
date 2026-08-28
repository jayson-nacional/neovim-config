vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<leader>F", function()
	vim.lsp.buf.format({ async = false })
end)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>cl", "<cmd>lsp restart<cr>", { desc = "Restart LSP" })
vim.keymap.set("n", "<leader>chl", "<cmd>checkhealth lsp<cr>", { desc = "Restart LSP" })

-- nvim dap
-- ========================================
vim.keymap.set("n", "<F9>", function()
	require("dap").toggle_breakpoint()
end, {
	desc = "Toggle Breakpoint",
	nowait = true,
	remap = false
})

vim.keymap.set("n", "<F5>", function()
	require("dap").continue()
end, {
	desc = "Continue",
	nowait = true,
	remap = false
})

vim.keymap.set("n", "<F11>", function()
	require("dap").step_into()
end, {
	desc = "Step Into",
	nowait = true,
	remap = false
})

vim.keymap.set("n", "<F10>", function()
	require("dap").step_over()
end, {
	desc = "Step Over",
	nowait = true,
	remap = false
})

vim.keymap.set("n", "<F12>", function()
	require("dap").step_out()
end, {
	desc = "Step Out",
	nowait = true,
	remap = false
})

vim.keymap.set("n", "<leader>dr", function()
	require("dap").repl.open()
end, {
	desc = "Open REPL",
	nowait = true,
	remap = false
})

vim.keymap.set("n", "<leader>dl", function()
	require("dap").run_last()
end, {
	desc = "Run Last",
	nowait = true,
	remap = false
})

vim.keymap.set("n", "<leader>dq", function()
	require("dap").terminate()
	require("dapui").close()
	require("nvim-dap-virtual-text").toggle()
end, {
	desc = "Terminate",
	nowait = true,
	remap = false
})

vim.keymap.set("n", "<leader>db", function()
	require("dap").list_breakpoints()
end, {
	desc = "List Breakpoints",
	nowait = true,
	remap = false
})

vim.keymap.set("n", "<leader>de", function()
	require("dap").set_exception_breakpoints({ "all" })
end, {
	desc = "Set Exception Breakpoints",
	nowait = true,
	remap = false
})

vim.keymap.set("n", "<leader>??", function()
	require("dap").eval()
end, {
	desc = "Inspect",
	nowait = true,
	remap = false
})
