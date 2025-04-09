return {
	-- {
	--"mfussenegger/nvim-dap",
	--dependencies = { "mfussenegger/nvim-dap-ui", "leoluz/nvim-dap-go" },
	--config = function()
	--local dap = require("dap")
	--local dapui = require("dapui")

	--require("dapui").setup()
	--require("dap-go").setup()

	--dap.listeners.before.attach.dapui_config = function()
	--print("Attaching to process...")
	--dapui.open()
	--end
	--dap.listeners.before.launch.dapui_config = function()
	--print("Launching process...")
	--dapui.open()
	--end
	--dap.listeners.before.event_terminated.dapui_config = function()
	--print("Terminating process...")
	--dapui.close()
	--end
	--dap.listeners.before.event_exited.dapui_config = function()
	--print("Exiting process...")
	--dapui.close()
	--end

	--vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint, {})
	--vim.keymap.set("n", "<Leader>bc", dap.continue, {})
	--end,
	--},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio", "leoluz/nvim-dap-go" },
		config = function()
			require("dap-go").setup()
      require("dapui").setup()
			local dap, dapui = require("dap"), require("dapui")

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint, {})
			vim.keymap.set("n", "<Leader>c", dap.continue, {})
      vim.keymap.set("n", "<Leader>so", dap.step_over, {})
      vim.keymap.set("n", "<Leader>si", dap.step_into, {})
      vim.keymap.set("n", "<Leader>sou", dap.step_out, {})
		end,
	},
}
