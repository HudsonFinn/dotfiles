-- lua/plugins/init.lua
return {
	-- Import all plugin configs
	{ import = "finlayhu.config.plugins.telescope" },
	{ import = "finlayhu.config.plugins.colourscheme" },
	{ import = "finlayhu.config.plugins.treesitter" },
	{ import = "finlayhu.config.plugins.lspZero" }
	-- Add other plugin imports here, e.g.:
	-- { import = "plugins.lsp" },
	-- { import = "plugins.treesitter" }
}
