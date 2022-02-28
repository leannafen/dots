local cmd = vim.cmd

require("settings")
require("plugins")

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)
