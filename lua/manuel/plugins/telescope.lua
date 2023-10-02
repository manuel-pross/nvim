return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.3', 
    dependencies = { 'nvim-lua/plenary.nvim' }, 
    config = function()
	    local builtin = require('telescope.builtin')
	    vim.keymap.set("n", "<leader>pf", builtin.find_files, {})

	    -- find keyword (ripgrep)
	    vim.keymap.set("n", "<leader>ps", function()
            	builtin.grep_string({ search = vim.fn.input("Grep > ") })
            end)
    end,
}
