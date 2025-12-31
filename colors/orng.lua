-- orng.nvim - A warm orange-based color scheme for Neovim
-- This file is loaded when :colorscheme orng is called

local colors = {
	-- Dark theme colors
	darkStep1 = "#0a0a0a",
	darkStep2 = "#141414",
	darkStep3 = "#1e1e1e",
	darkStep4 = "#282828",
	darkStep5 = "#323232",
	darkStep6 = "#3c3c3c",
	darkStep7 = "#484848",
	darkStep8 = "#606060",
	darkStep9 = "#EC5B2B",
	darkStep10 = "#EE7948",
	darkStep11 = "#808080",
	darkStep12 = "#eeeeee",
	darkSecondary = "#EE7948",
	darkAccent = "#FFF7F1",
	darkRed = "#e06c75",
	darkOrange = "#EC5B2B",
	darkBlue = "#6ba1e6",
	darkCyan = "#56b6c2",
	darkYellow = "#e5c07b",

	-- Light theme colors
	lightStep1 = "#ffffff",
	lightStep2 = "#FFF7F1",
	lightStep3 = "#f5f0eb",
	lightStep4 = "#ebebeb",
	lightStep5 = "#e1e1e1",
	lightStep6 = "#d4d4d4",
	lightStep7 = "#b8b8b8",
	lightStep8 = "#a0a0a0",
	lightStep9 = "#EC5B2B",
	lightStep10 = "#c94d24",
	lightStep11 = "#8a8a8a",
	lightStep12 = "#1a1a1a",
	lightSecondary = "#EE7948",
	lightAccent = "#c94d24",
	lightRed = "#d1383d",
	lightOrange = "#EC5B2B",
	lightBlue = "#0062d1",
	lightCyan = "#318795",
	lightYellow = "#b0851f",
}

local function get_colors()
	local bg = vim.o.background
	if bg == nil then
		bg = "dark"
	end

	local c = {}

	-- Common colors
	c.orange = bg == "dark" and colors.darkOrange or colors.lightOrange
	c.secondary = bg == "dark" and colors.darkSecondary or colors.lightSecondary
	c.accent = bg == "dark" and colors.darkAccent or colors.lightAccent
	c.red = bg == "dark" and colors.darkRed or colors.lightRed
	c.blue = bg == "dark" and colors.darkBlue or colors.lightBlue
	c.cyan = bg == "dark" and colors.darkCyan or colors.lightCyan
	c.yellow = bg == "dark" and colors.darkYellow or colors.lightYellow

	-- Step colors
	c.step1 = bg == "dark" and colors.darkStep1 or colors.lightStep1
	c.step2 = bg == "dark" and colors.darkStep2 or colors.lightStep2
	c.step3 = bg == "dark" and colors.darkStep3 or colors.lightStep3
	c.step4 = bg == "dark" and colors.darkStep4 or colors.lightStep4
	c.step5 = bg == "dark" and colors.darkStep5 or colors.lightStep5
	c.step6 = bg == "dark" and colors.darkStep6 or colors.lightStep6
	c.step7 = bg == "dark" and colors.darkStep7 or colors.lightStep7
	c.step8 = bg == "dark" and colors.darkStep8 or colors.lightStep8
	c.step9 = bg == "dark" and colors.darkStep9 or colors.lightStep9
	c.step10 = bg == "dark" and colors.darkStep10 or colors.lightStep10
	c.step11 = bg == "dark" and colors.darkStep11 or colors.lightStep11
	c.step12 = bg == "dark" and colors.darkStep12 or colors.lightStep12

	return c
end

local function set_groups()
	local c = get_colors()

	-- Reset all highlight groups
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.g.colors_name = "orng"

	-- Editor UI
	local groups = {
		-- Base
		Normal = { fg = c.step12, bg = c.step1 },
		NormalFloat = { fg = c.step12, bg = c.step2 },
		NormalNC = { fg = c.step12, bg = c.step1 },
		SignColumn = { bg = c.step1 },
		MsgArea = { fg = c.step12, bg = c.step1 },
		ModeMsg = { fg = c.step12, bg = c.step2 },
		MsgSeparator = { fg = c.step12, bg = c.step1 },
		MoreMsg = { fg = c.blue },
		WarningMsg = { fg = c.orange },
		ErrorMsg = { fg = c.red },

		-- Cursor
		Cursor = { fg = c.step1, bg = c.step12 },
		lCursor = { fg = c.step1, bg = c.step12 },
		CursorIM = { fg = c.step1, bg = c.step12 },
		TermCursor = { fg = c.step1, bg = c.step12 },
		TermCursorNC = { fg = c.step11, bg = c.step2 },

		-- Selection
		Visual = { bg = c.step3 },
		VisualNOS = { bg = c.step3 },

		-- Line numbers
		LineNr = { fg = c.step11, bg = c.step1 },
		CursorLineNr = { fg = c.step12, bg = c.step2, bold = true },

		-- Fold
		Folded = { fg = c.step11, bg = c.step2 },
		FoldColumn = { fg = c.step11, bg = c.step1 },

		-- Search
		Search = { fg = c.step1, bg = c.secondary },
		IncSearch = { fg = c.step1, bg = c.orange },
		Substitute = { fg = c.step1, bg = c.orange },

		-- Status line
		StatusLine = { fg = c.step12, bg = c.step3 },
		StatusLineNC = { fg = c.step11, bg = c.step2 },
		StatusLineTerm = { fg = c.step12, bg = c.step3 },
		StatusLineTermNC = { fg = c.step11, bg = c.step2 },

		-- Tab line
		TabLine = { fg = c.step11, bg = c.step2 },
		TabLineSel = { fg = c.step12, bg = c.step3, bold = true },
		TabLineFill = { bg = c.step2 },

		-- Window separator
		VertSplit = { fg = c.step6, bg = c.step1 },
		WinSeparator = { fg = c.step6, bg = c.step1 },

		-- Completion
		Pmenu = { fg = c.step12, bg = c.step2 },
		PmenuSel = { fg = c.step1, bg = c.orange },
		PmenuSbar = { bg = c.step4 },
		PmenuThumb = { bg = c.step8 },

		-- Wildmenu
		WildMenu = { fg = c.step1, bg = c.orange },

		-- Directory
		Directory = { fg = c.blue },

		-- Fading
		Conceal = { fg = c.step8 },
		NonText = { fg = c.step8 },
		SpecialKey = { fg = c.step8 },

		-- Diffs
		DiffAdd = { fg = c.blue, bg = "NONE" },
		DiffChange = { fg = c.yellow, bg = "NONE" },
		DiffDelete = { fg = c.red, bg = "NONE" },
		DiffText = { fg = c.orange, bg = "NONE" },

		-- Spelling
		SpellBad = { sp = c.red, undercurl = true },
		SpellCap = { sp = c.yellow, undercurl = true },
		SpellRare = { sp = c.blue, undercurl = true },
		SpellLocal = { sp = c.cyan, undercurl = true },

		-- Syntax highlighting
		Comment = { fg = c.step11, italic = true },
		Constant = { fg = c.orange },
		String = { fg = c.blue },
		Character = { fg = c.blue },
		Number = { fg = c.accent },
		Boolean = { fg = c.accent },
		Float = { fg = c.accent },

		Identifier = { fg = c.red },
		Function = { fg = c.secondary },

		Statement = { fg = c.orange },
		Conditional = { fg = c.orange },
		Repeat = { fg = c.orange },
		Label = { fg = c.orange },
		Operator = { fg = c.cyan },
		Keyword = { fg = c.orange },
		Exception = { fg = c.orange },

		PreProc = { fg = c.yellow },
		Include = { fg = c.yellow },
		Define = { fg = c.yellow },
		Macro = { fg = c.yellow },
		PreCondit = { fg = c.yellow },

		Type = { fg = c.yellow },
		StorageClass = { fg = c.yellow },
		Structure = { fg = c.yellow },
		Typedef = { fg = c.yellow },

		Special = { fg = c.cyan },
		SpecialChar = { fg = c.cyan },
		Tag = { fg = c.cyan },
		Delimiter = { fg = c.step12 },
		SpecialComment = { fg = c.step11 },
		Debug = { fg = c.red },

		Underlined = { underline = true },
		Ignore = { fg = c.step1 },
		Error = { fg = c.red, bold = true },
		Todo = { fg = c.yellow, bold = true },

		-- Treesitter
		["@comment"] = { fg = c.step11, italic = true },
		["@variable"] = { fg = c.red },
		["@function"] = { fg = c.secondary },
		["@function.builtin"] = { fg = c.secondary },
		["@keyword"] = { fg = c.orange },
		["@string"] = { fg = c.blue },
		["@number"] = { fg = c.accent },
		["@type"] = { fg = c.yellow },
		["@operator"] = { fg = c.cyan },
		["@punctuation"] = { fg = c.step12 },

		-- LSP
		LspReferenceText = { bg = c.step3 },
		LspReferenceRead = { bg = c.step3 },
		LspReferenceWrite = { bg = c.step3 },
		LspCodeLens = { fg = c.step11 },
		LspSignatureActiveParameter = { fg = c.orange, bold = true },

		-- Diagnostic
		DiagnosticError = { fg = c.red },
		DiagnosticWarn = { fg = c.orange },
		DiagnosticInfo = { fg = c.blue },
		DiagnosticHint = { fg = c.cyan },

		DiagnosticVirtualTextError = { fg = c.red },
		DiagnosticVirtualTextWarn = { fg = c.orange },
		DiagnosticVirtualTextInfo = { fg = c.blue },
		DiagnosticVirtualTextHint = { fg = c.cyan },

		DiagnosticUnderlineError = { sp = c.red, undercurl = true },
		DiagnosticUnderlineWarn = { sp = c.orange, undercurl = true },
		DiagnosticUnderlineInfo = { sp = c.blue, undercurl = true },
		DiagnosticUnderlineHint = { sp = c.cyan, undercurl = true },

		-- Git signs
		GitSignsAdd = { fg = c.blue },
		GitSignsChange = { fg = c.yellow },
		GitSignsDelete = { fg = c.red },
	}

	for group, settings in pairs(groups) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

set_groups()

