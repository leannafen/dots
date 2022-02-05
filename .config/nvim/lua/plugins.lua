vim.cmd [[packadd packer.nvim]]
return require("packer").startup(function()
	use "wbthomason/packer.nvim"

	--[[
		packages:
		bufdelete.nvim: delete nvim buffers w/o losing window layout
		dashboard-nvim: vim dashboard
		neoscroll.nvim: smooth scrolling neovim plugin written in lua
		nvim-cursorline: highlights cursor words and lines
		nvim-lsp-installer: companion to ^ that manages lsp servers
		nvim-lspconfig: quickstart configs for nvim lsp client
		nvim-treesitter: incremental parsing system
		statusline.lua: zero-config minimal statusline for neovim
		vgit.nvim: visual git plugin for neovim
	]]
	
	use "beauwilliams/statusline.lua"
	use "famiu/bufdelete.nvim"
	use "neovim/nvim-lspconfig"	
	use "nvim-treesitter/nvim-treesitter"
	use "williamboman/nvim-lsp-installer"	
	use "yamatsum/nvim-cursorline"
	
	use {	
		"glepnir/dashboard-nvim",
		requires = { "junegunn/fzf.vim" }
	}	

	use { 
		"tanvirtin/vgit.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("vgit").setup()
		end
	}

	use { 
		"karb94/neoscroll.nvim",
		config = function()
			require("neoscroll").setup()
		end
	}

	use {
		"ms-jpq/coq_nvim",
		requires = { 
			"ms-jpq/coq.artifacts",
			"ms-jpq/coq.thirdparty"
		},
		run = ":COQdeps"
	}

end)
