local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = "all", -- one of "all" or a list of languages
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "css" }, -- list of language that will be disabled
        use_languagetree = true,
	},rainbow = { enable = true, extended_mode = true, max_file_lines=nil, },
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },
})
