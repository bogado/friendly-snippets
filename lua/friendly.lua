local script_path = vim.fn.fnamemodify(string.sub(debug.getinfo(1,"S").source, 2, -1), ":p:h")
print(script_path)
local function options(dir)
	return {
		lazy_paths = dir
	}
end

require("luasnip.loaders.from_lua").lazy_load(options("luasnipets"))
require("luasnip.loaders.from_vscode").lazy_load(options("snippets"))

