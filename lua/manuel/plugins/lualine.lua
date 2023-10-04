return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
	    'nvim-lua/plenary.nvim',
    },
    config = function()
        require('lualine').setup()
    end
}
