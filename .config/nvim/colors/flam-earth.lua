-- Flam Earth
-- ~/.config/nvim/colors/flam-earth.lua

vim.cmd.highlight("clear")

if vim.fn.exists("syntax_on") == 1 then
	vim.cmd.syntax("reset")
end

vim.o.background = "dark"
vim.g.colors_name = "flam-earth"

local c = {
	bg = "#242424",
	fg = "#E8EAE5",

	snow = "#F5F6F2",
	mountain = "#AAB2AF",
	blue_gray = "#7E929B",

	deep_green = "#1F3528",
	forest = "#5F7D4A",
	moss = "#91A65C",

	earth = "#A77A59",
	red = "#C94A4D",
	orange = "#D08355",

	inactive_bg = "#1E2321",
	selection = "#405B3A",
	inactive_sel = "#303331",
	line = "#2D302E",
	border = "#536B43",
}
local function hi(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Editor UI
hi("Normal", { fg = c.fg, bg = c.bg })
hi("NormalFloat", { fg = c.fg, bg = c.inactive_bg })
hi("NormalNC", { fg = c.fg, bg = c.bg })
hi("SignColumn", { fg = c.fg, bg = c.bg })
hi("EndOfBuffer", { fg = c.bg, bg = c.bg })
hi("Cursor", { fg = c.bg, bg = c.yellow })
hi("CursorLine", { bg = c.line })
hi("CursorColumn", { bg = c.line })
hi("ColorColumn", { bg = c.line })
hi("Visual", { bg = c.selection })
hi("VisualNOS", { bg = c.selection })
hi("Search", { fg = c.bg, bg = c.yellow })
hi("IncSearch", { fg = c.bg, bg = c.orange })
hi("CurSearch", { fg = c.bg, bg = c.orange })
hi("Substitute", { fg = c.bg, bg = c.orange })

-- Line numbers and folds
hi("LineNr", { fg = c.olive, bg = c.bg })
hi("CursorLineNr", { fg = c.yellow, bg = c.line })
hi("FoldColumn", { fg = c.gold, bg = c.bg })
hi("Folded", { fg = c.gold, bg = c.inactive_bg })

-- Window separators and borders
hi("WinSeparator", { fg = c.olive, bg = c.bg })
hi("VertSplit", { fg = c.olive, bg = c.bg })
hi("FloatBorder", { fg = c.olive, bg = c.inactive_bg })
hi("FloatTitle", { fg = c.yellow, bg = c.inactive_bg, bold = true })

-- Statusline and tabline
hi("StatusLine", { fg = c.fg, bg = c.status_green })
hi("StatusLineNC", { fg = c.gold, bg = c.inactive_bg })
hi("TabLine", { fg = c.gold, bg = c.inactive_bg })
hi("TabLineFill", { fg = c.gold, bg = c.inactive_bg })
hi("TabLineSel", { fg = c.fg, bg = c.bg, bold = true })

-- Menus and prompts
hi("Pmenu", { fg = c.fg, bg = c.inactive_bg })
hi("PmenuSel", { fg = c.bg, bg = c.yellow })
hi("PmenuSbar", { bg = c.olive })
hi("PmenuThumb", { bg = c.yellow })
hi("WildMenu", { fg = c.bg, bg = c.yellow })
hi("Question", { fg = c.yellow })
hi("Title", { fg = c.yellow, bold = true })
hi("Directory", { fg = c.yellow })

-- Diagnostics
hi("DiagnosticError", { fg = c.orange })
hi("DiagnosticWarn", { fg = c.yellow })
hi("DiagnosticInfo", { fg = c.gold })
hi("DiagnosticHint", { fg = c.olive })

hi("DiagnosticUnderlineError", { undercurl = true, sp = c.orange })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.yellow })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.gold })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.olive })

-- Diff
hi("DiffAdd", { fg = c.yellow, bg = "#263522" })
hi("DiffChange", { fg = c.gold, bg = "#383323" })
hi("DiffDelete", { fg = c.orange, bg = "#3A2825" })
hi("DiffText", { fg = c.fg, bg = c.olive })

-- Core syntax
-- Core syntax
hi("Comment", {
	fg = c.mountain,
	italic = true,
})

hi("Constant", {
	fg = c.red,
})

hi("String", {
	fg = c.moss,
})

hi("Character", {
	fg = c.moss,
})

hi("Number", {
	fg = c.orange,
})

hi("Boolean", {
	fg = c.red,
	bold = true,
})

hi("Float", {
	fg = c.orange,
})

hi("Identifier", {
	fg = c.fg,
})

hi("Variable", {
	fg = c.fg,
})

hi("Function", {
	fg = c.moss,
	bold = true,
})

hi("Statement", {
	fg = c.blue_gray,
	bold = true,
})

hi("Conditional", {
	fg = c.blue_gray,
	bold = true,
})

hi("Repeat", {
	fg = c.blue_gray,
	bold = true,
})

hi("Label", {
	fg = c.blue_gray,
})

hi("Operator", {
	fg = c.mountain,
})

hi("Keyword", {
	fg = c.blue_gray,
	bold = true,
})

hi("Exception", {
	fg = c.red,
	bold = true,
})

hi("PreProc", {
	fg = c.earth,
})

hi("Include", {
	fg = c.earth,
})

hi("Define", {
	fg = c.earth,
	bold = true,
})

hi("Macro", {
	fg = c.earth,
})

hi("Type", {
	fg = c.moss,
	bold = true,
})

hi("StorageClass", {
	fg = c.blue_gray,
})

hi("Structure", {
	fg = c.moss,
})

hi("Typedef", {
	fg = c.moss,
})

hi("Special", {
	fg = c.orange,
})

hi("Delimiter", {
	fg = c.mountain,
})

hi("SpecialComment", {
	fg = c.moss,
	italic = true,
})

hi("Error", {
	fg = c.snow,
	bg = c.red,
	bold = true,
})

hi("Todo", {
	fg = c.bg,
	bg = c.moss,
	bold = true,
})

-- Tree-sitter captures
-- Tree-sitter captures
hi("@comment",               { link = "Comment" })
hi("@string",                { link = "String" })
hi("@string.escape",         { fg = c.orange })
hi("@character",             { link = "Character" })

hi("@number",                { link = "Number" })
hi("@float",                 { link = "Float" })
hi("@boolean",               { link = "Boolean" })
hi("@constant",              { link = "Constant" })
hi("@constant.builtin",      { fg = c.red })

hi("@variable",              { fg = c.fg })
hi("@variable.builtin",      { fg = c.blue_gray })
hi("@variable.parameter",    { fg = c.mountain })

hi("@function",              { fg = c.moss, bold = true })
hi("@function.call",         { fg = c.moss })
hi("@function.builtin",      { fg = c.orange })
hi("@method",                { fg = c.moss, bold = true })
hi("@method.call",           { fg = c.moss })

hi("@keyword",               { fg = c.blue_gray, bold = true })
hi("@keyword.function",      { fg = c.blue_gray, bold = true })
hi("@keyword.return",        { fg = c.red, bold = true })
hi("@keyword.operator",      { fg = c.mountain })

hi("@type",                  { fg = c.moss, bold = true })
hi("@type.builtin",          { fg = c.moss })
hi("@attribute",             { fg = c.earth })
hi("@property",              { fg = c.mountain })

hi("@operator",              { fg = c.mountain })
hi("@punctuation.delimiter", { fg = c.mountain })
hi("@punctuation.bracket",   { fg = c.blue_gray })

hi("@tag",                   { fg = c.red })
hi("@tag.attribute",         { fg = c.earth })
hi("@markup.link",           { fg = c.blue_gray, underline = true })
