local function options(dir)
	return {
		lazy_paths = dir
	}
end

require("luasnip.loaders.from_lua").lazy_load(options("luasnippets"))
require("luasnip.loaders.from_vscode").lazy_load(options("snippets"))

print("Friendly loaded")
