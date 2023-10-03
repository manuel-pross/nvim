local options = {
    number = true,
    relativenumber = true,
    termguicolors = true,
    expandtab = true,
    shiftwidth = 4
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
