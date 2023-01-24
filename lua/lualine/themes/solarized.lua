local colors = require("solarized.colors")

local solarized = {}

solarized.normal = {
	a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
	b = { fg = colors.title, bg = colors.selection },
	c = { fg = colors.fg, bg = colors.selection },
}

solarized.insert = {
	a = { fg = colors.bg, bg = colors.green, gui = "bold" },
	b = { fg = colors.title, bg = colors.selection },
}

solarized.visual = {
	a = { fg = colors.bg, bg = colors.violet, gui = "bold" },
	b = { fg = colors.title, bg = colors.selection },
}

solarized.replace = {
	a = { fg = colors.bg, bg = colors.magenta, gui = "bold" },
	b = { fg = colors.title, bg = colors.selection },
}

solarized.command = {
	a = { fg = colors.bg, bg = colors.cyan, gui = "bold" },
	b = { fg = colors.title, bg = colors.selection },
}

solarized.inactive = {
	a = { fg = colors.none, bg = colors.selection, gui = "bold" },
	b = { fg = colors.none, bg = colors.selection },
	c = { fg = colors.none, bg = colors.selection },
}

return solarized
