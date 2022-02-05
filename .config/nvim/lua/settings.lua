local g = vim.g
local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- globals
o.hlsearch = true		-- highlight search
o.incsearch = true		-- incremental search
o.sta = true			-- smart tab

-- window-local
wo.nu = true 			-- enable line numbers
wo.nuw = 4			-- line number column width		
wo.cc = "80"			-- column border

-- buffer-local
bo.syn = "on"			-- syntax highlighting
bo.ai = true			-- auto-indent
bo.si = true			-- smart-indent

-- nvim-lspconfig
-- ...

-- coq.nvim
g.coq_settings = { ["auto_start"] = "shut-up" }

-- bufdelete.nvim
-- TODO

-- dashboard-nvim
-- TODO - figure out custom buttons
g.dashboard_default_executive = "fzf"
g.dashboard_custom_header = {
	"           ▀████▀▄▄              ▄█ ",
	"             █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ",
	"     ▄        █          ▀▀▀▀▄  ▄▀  ",
	"    ▄▀ ▀▄      ▀▄              ▀▄▀  ",
	"   ▄▀    █     █▀   ▄█▀▄      ▄█    ",
	"   ▀▄     ▀▄  █     ▀██▀     ██▄█   ",
	"    ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ",
	"     █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ",
	"    █   █  █      ▄▄           ▄▀   ",
}
g.dashboard_custom_footer = { "chupapi muneno?" }
