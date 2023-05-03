-------------------------------------------------------------------------------
-- Name:        Enfocado for NeoVim
-- Author:      Mobasher Artin(artart222) <mobasherartin.icm@gmail.com>
-- URL:         https://github.com/artart222/nvim-enfocado
-- License:     MIT (C) Wuelner Martínez.
-- Description: How themes should be.
-- About:       Enfocado is more than a theme, it is a concept of "how themes
--              should be", focusing on what is really important to developers:
--              the code and nothing else.
-------------------------------------------------------------------------------

-- All highlights are removed.
if vim.g.colors_name then
  vim.cmd("hi clear")
end
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

-- The Enfocado theme is initialized.
vim.g.colors_name = "enfocado"

-- Dark or light scheme is initialized.
if vim.go.background == "dark" then
  -- Selenized black color scheme variables are declared.
  bg_0 = { "#181818", 234 }
  bg_1 = { "#252525", 235 }
  bg_2 = { "#3B3B3B", 237 }
  dim_0 = { "#777777", 243 }
  fg_0 = { "#B9B9B9", 250 }
  fg_1 = { "#DEDEDE", 253 }
  red = { "#ED4A46", 203 }
  green = { "#70B433", 107 }
  yellow = { "#DBB32D", 179 }
  blue = { "#368AEB", 69 }
  magenta = { "#EB6EB7", 205 }
  cyan = { "#3FC5B7", 79 }
  orange = { "#E67F43", 173 }
  violet = { "#A580E2", 140 }
  br_red = { "#FF5E56", 203 }
  br_green = { "#83C746", 113 }
  br_yellow = { "#EFC541", 221 }
  br_blue = { "#4F9CFE", 75 }
  br_magenta = { "#FF81CA", 212 }
  br_cyan = { "#56D8C9", 80 }
  br_orange = { "#FA9153", 209 }
  br_violet = { "#B891F5", 141 }
  base = { "#000000", 16 }
  -- Pseudo transparency colors.
  blend_error = { "#462624", nil }
  blend_hint = { "#233246", nil }
  blend_info = { "#433a20", nil }
  blend_warn = { "#453024", nil }
  blend_added = { "#2c3326", nil }
  blend_modified = { "#2c281b", nil }
  blend_removed = { "#2e1e1d", nil }
  blend_search = { "#62552e", nil }
else
  -- Selenized white color scheme variables are declared.
  bg_0 = { "#ffffff", 231 }
  bg_1 = { "#ebebeb", 255 }
  bg_2 = { "#cdcdcd", 252 }
  dim_0 = { "#878787", 245 }
  fg_0 = { "#474747", 238 }
  fg_1 = { "#282828", 235 }
  red = { "#d6000c", 160 }
  green = { "#1d9700", 28 }
  yellow = { "#c49700", 172 }
  blue = { "#0064e4", 26 }
  magenta = { "#dd0f9d", 91 }
  cyan = { "#00ad9c", 37 }
  orange = { "#d04a00", 166 }
  violet = { "#7f51d6", 98 }
  br_red = { "#bf0000", 124 }
  br_green = { "#008400", 28 }
  br_yellow = { "#af8500", 136 }
  br_blue = { "#0054cf", 26 }
  br_magenta = { "#c7008b", 162 }
  br_cyan = { "#009a8a", 30 }
  br_orange = { "#ba3700", 130 }
  br_violet = { "#B891F5", 61 }
  base = bg_1
  -- Pseudo transparency colors.
  blend_error = { "#f2cccc", nil }
  blend_hint = { "#ccddf5", nil }
  blend_info = { "#efe7cc", nil }
  blend_warn = { "#f1d7cc", nil }
  blend_added = { "#e8f4e5", nil }
  blend_modified = { "#f9f4e5", nil }
  blend_removed = { "#fbe5e6", nil }
  blend_search = { "#d9cca4", nil }
end

-- Style colors.
if vim.g.enfocado_style == "nature" then
  -- Nature accent colors.
  accent_0 = green
  accent_1 = blue
  br_accent_0 = br_green
  br_accent_1 = br_blue
  -- Nature builtin colors (neon colors).
  builtin_0 = magenta
  builtin_1 = violet
  br_builtin_0 = br_magenta
  br_builtin_1 = br_violet
else
  -- Neon accent colors.
  accent_0 = magenta
  accent_1 = violet
  br_accent_0 = br_magenta
  br_accent_1 = br_violet
  -- Neon builtin colors (nature colors).
  builtin_0 = colors.green
  builtin_1 = colors.blue
  br_builtin_0 = colors.br_green
  br_builtin_1 = colors.br_blue
end

-- NeoVim terminal variables are assigned.
vim.g.terminal_ansi_colors = {
  bg_1[1],
  red[1],
  green[1],
  yellow[1],
  blue[1],
  magenta[1],
  cyan[1],
  dim_0[1],
  bg_2[1],
  br_red[1],
  br_green[1],
  br_yellow[1],
  br_blue[1],
  br_magenta[1],
  br_cyan[1],
  fg_1[1],
}

-- NeoVim terminal variables are assigned.
vim.g.terminal_color_0 = bg_1[1]
vim.g.terminal_color_1 = red[1]
vim.g.terminal_color_2 = green[1]
vim.g.terminal_color_3 = yellow[1]
vim.g.terminal_color_4 = blue[1]
vim.g.terminal_color_5 = magenta[1]
vim.g.terminal_color_6 = cyan[1]
vim.g.terminal_color_7 = dim_0[1]
vim.g.terminal_color_8 = bg_2[1]
vim.g.terminal_color_9 = br_red[1]
vim.g.terminal_color_10 = br_green[1]
vim.g.terminal_color_11 = br_yellow[1]
vim.g.terminal_color_12 = br_blue[1]
vim.g.terminal_color_13 = br_magenta[1]
vim.g.terminal_color_14 = br_cyan[1]
vim.g.terminal_color_15 = fg_1[1]

-- Attributes are declared.
-- TODO: Check this part.
local none = {}
local nocombine =
  { nocombine = true, reverse = false, bold = false, italic = false, underline = false, undercurl = false }
local bold = { nocombine = true, reverse = false, bold = true, italic = false, underline = false, undercurl = false }
local bold_italic =
  { nocombine = false, reverse = false, bold = true, italic = true, undercurl = false, underline = false }
local italic = { nocombine = true, reverse = false, italic = true, bold = false, underline = false, undercurl = false }
local underline =
  { nocombine = true, reverse = false, underline = true, undercurl = false, bold = false, italic = false }
local undercurl =
  { nocombine = true, reverse = false, undercurl = true, underline = false, bold = false, italic = false }
local bold_underline =
  { nocombine = false, reverse = false, undercurl = false, underline = true, bold = true, italic = false }
local reverse =
  { nocombine = false, reverse = true, undercurl = false, underline = false, bold = false, italic = false }

-- Enfocado configuration variables are initialized.
local enfocado_style = vim.g.enfocado_style
local enfocado_plugins = vim.g.enfocado_plugins

-- A function is created to check on-demand plugins.
local function plugin_is_activated(name)
  if type(enfocado_plugins) == "nil" then
    return 1
  else
    if enfocado_plugins == "none" then
      return 0
    elseif enfocado_plugins == "all" then
      return 1
    else
      for _, v in pairs(enfocado_plugins) do
        if v == name then
          return 1
        end
      end
    end
  end
end

-- A function is created to make using nvim_set_hl easier.
local function highlighter(group, set_attr, bg_color, fg_color, set_sp)
  if type(next(fg_color)) == "nil" then
    fg_color = { nil, nil }
  end

  if type(next(bg_color)) == "nil" then
    bg_color = { nil, nil }
  end

  if type(next(set_sp)) == "nil" then
    set_sp = { nil, nil }
  end

  if type(next(set_attr)) == "nil" then
    set_attr =
      { nocombine = false, reverse = false, bold = false, italic = false, underline = false, undercurl = false }
  end

  vim.api.nvim_set_hl(0, group, {
    bg = bg_color[1],
    fg = fg_color[1],
    ctermbg = bg_color[2],
    ctermfg = fg_color[2],
    nocombine = set_attr.nocombine,
    reverse = set_attr.reverse,
    italic = set_attr.italic,
    bold = set_attr.bold,
    undercurl = set_attr.undercurl,
    underline = set_attr.underline,
    sp = set_sp[1],
    cterm = {
      nocombine = set_attr.nocombine,
      reverse = set_attr.reverse,
      italic = set_attr.italic,
      bold = set_attr.bold,
      undercurl = set_attr.undercurl,
      underline = set_attr.underline,
    },
  })
end

-- A function is created to link to highlight groups.
local function highlight_linker(group1, group2)
  vim.api.nvim_set_hl(0, group1, { link = group2 })
end

-------------------------------------------------------------------------------
-- SECTION: Neo(Vim) base groups highlighting.
-------------------------------------------------------------------------------
-- Enfocado style diffs.
if vim.go.termguicolors == true or vim.fn.has("gui_running") == true then
  highlighter("IncSearch", none, blend_search, none, none)
  highlighter("Search", none, blend_search, none, none)
else
  highlighter("IncSearch", none, br_yellow, bg_1, none)
  highlighter("Search", none, br_yellow, bg_1, none)
end

if vim.go.number == true and vim.go.relativenumber == true then
  highlighter("LineNr", none, bg_1, fg_0, none)
else
  highlighter("LineNr", none, none, bg_2, none)
end

highlighter("Accent", none, none, br_accent_0, none)
highlighter("Builtin", none, none, br_builtin_0, none)
highlighter("ColorColumn", none, bg_1, none, none)
highlighter("Conceal", nocombine, none, bg_2, none)
highlighter("Cursor", none, fg_0, bg_1, none)
highlighter("CursorColumn", none, bg_1, none, none)
highlighter("CursorLine", none, bg_1, none, none)
highlighter("CursorLineNr", none, bg_1, dim_0, none)
highlighter("CursorLineSign", none, none, none, none)
highlighter("DiffAdd", none, none, green, none)
highlighter("DiffChange", none, none, yellow, none)
highlighter("DiffDelete", none, none, red, none)
highlighter("DiffText", none, bg_2, yellow, none)
highlighter("Dimmed", nocombine, none, dim_0, none)
highlighter("Directory", bold, none, br_blue, none)
highlighter("ErrorMsg", nocombine, none, br_red, none)
highlighter("FileLink", bold, none, br_cyan, none)
highlighter("FileExec", bold, none, green, none)
highlighter("FloatBorder", nocombine, bg_1, br_accent_0, none)
highlighter("Folded", nocombine, none, dim_0, none)
highlighter("FoldColumn", nocombine, none, bg_2, none)
highlighter("Ignore", nocombine, none, bg_2, none)
highlighter("lCursor", none, fg_0, bg_1, none)
highlighter("LineNrAbove", none, none, bg_2, none)
highlighter("Match", bold, none, br_accent_0, none)
highlighter("MatchFuzzy", nocombine, none, accent_0, none)
highlighter("MatchParen", none, bg_2, none, none)
highlighter("ModeMsg", nocombine, none, fg_0, none)
highlighter("MoreMsg", nocombine, none, br_yellow, none)
highlighter("None", none, none, none, none)
highlighter("NonText", nocombine, none, bg_2, none)
highlighter("Normal", nocombine, bg_0, fg_0, none)
highlighter("NormalFloat", nocombine, bg_1, fg_0, none)
highlighter("NvimInternalError", nocombine, none, br_red, none)
highlighter("Pmenu", nocombine, bg_1, fg_0, none)
highlighter("PmenuSbar", nocombine, bg_1, none, none)
highlighter("PmenuSel", none, bg_2, none, none)
highlighter("PmenuThumb", nocombine, bg_2, none, none)
highlighter("Question", nocombine, none, br_yellow, none)
highlighter("QuickFixLine", none, bg_1, br_accent_0, none)
highlighter("RedrawDebugClear", none, none, br_yellow, none)
highlighter("RedrawDebugComposed", none, none, br_green, none)
highlighter("RedrawDebugNormal", none, none, fg_1, none)
highlighter("RedrawDebugRecompose", none, none, br_red, none)
highlighter("SignColumn", none, none, none, none)
highlighter("SpecialKey", nocombine, none, bg_2, none)
highlighter("SpellBad", undercurl, none, none, red)
highlighter("SpellCap", undercurl, none, none, blue)
highlighter("SpellLocal", undercurl, none, none, cyan)
highlighter("SpellRare", undercurl, none, none, magenta)
highlighter("StatusLine", nocombine, bg_1, dim_0, none)
highlighter("StatusLineNC", nocombine, bg_1, bg_2, none)
highlighter("StatuslineTerm", nocombine, bg_1, dim_0, none)
highlighter("StatuslineTermNC", nocombine, bg_1, bg_2, none)
highlighter("Success", nocombine, none, br_green, none)
highlighter("TabLine", nocombine, bg_1, bg_2, none)
highlighter("TabLineFill", nocombine, bg_1, bg_2, none)
highlighter("TabLineSel", nocombine, none, dim_0, none)
highlighter("TermCursor", none, fg_0, bg_1, none)
highlighter("Title", bold, none, fg_1, none)
highlighter("ToolbarButton", nocombine, accent_0, bg_1, none)
highlighter("ToolbarLine", nocombine, bg_1, dim_0, none)
highlighter("VertSplit", nocombine, none, base, none)
highlighter("Visual", none, bg_2, none, none)
highlighter("VisualNC", none, bg_1, none, none)
highlighter("VisualNOS", none, bg_2, none, none)
highlighter("WarningMsg", nocombine, none, br_orange, none)
highlighter("WildMenu", bold, bg_2, br_accent_0, none)
highlight_linker("CursorLineFold", "CursorLine")
highlight_linker("EndOfBuffer", "NonText")
highlight_linker("Line", "ColorColumn")
highlight_linker("LineNrBelow", "LineNrAbove")
highlight_linker("MsgArea", "Text")
highlight_linker("MsgSeparator", "StatusLineNC")
highlight_linker("FloatTitle", "NormalFloat")
highlight_linker("NormalNC", "Normal")
highlight_linker("Substitute", "Search")
highlight_linker("TermCursorNC", "None")
highlight_linker("Whitespace", "NonText")
highlight_linker("WinBar", "Text")
highlight_linker("WinBarNC", "Dimmed")
highlight_linker("WinSeparator", "VertSplit")
-- TODO: Complete this:
-- if vim.fn.has('nvim') then
--   highlight! FloatShadow ctermbg=16 guibg=#000000 blend=10
--   highlight! FloatShadowThrough ctermbg=16 guibg=#000000 blend=10
-- end

-- General syntax:
highlighter("Comment", italic, none, dim_0, none)
highlighter("ConstIdentifier", none, none, red, none)
highlighter("Error", none, none, br_red, none)
highlighter("Trace", nocombine, none, br_magenta, none)
highlighter("Exception", nocombine, none, orange, none)
highlighter("Function", italic, none, br_accent_0, none)
highlighter("FunctionBuiltin", italic, none, br_builtin_0, none)
highlighter("Identifier", nocombine, none, accent_0, none)
highlighter("IdentifierBuiltin", nocombine, none, builtin_0, none)
highlighter("Link", underline, none, br_cyan, br_cyan)
highlighter("PreProc", nocombine, none, accent_1, none)
highlighter("Special", nocombine, none, br_builtin_1, none)
highlighter("Statement", nocombine, none, accent_1, none)
highlighter("StatementBuiltin", nocombine, none, builtin_1, none)
highlighter("String", nocombine, none, cyan, br_cyan)
highlighter("Text", nocombine, none, fg_0, none)
highlighter("Todo", bold, br_cyan, bg_1, none)
highlighter("Type", bold, none, br_accent_1, none)
highlighter("TypeBuiltin", bold, none, br_builtin_1, none)
highlight_linker("Boolean", "StatementBuiltin")
highlight_linker("Character", "String")
highlight_linker("Conditional", "Statement")
highlight_linker("Constant", "Text")
highlight_linker("Debug", "Dimmed")
highlight_linker("Define", "PreProc")
highlight_linker("Delimiter", "Text")
highlight_linker("Float", "Number")
highlight_linker("Include", "PreProc")
highlight_linker("Keyword", "Statement")
highlight_linker("Label", "Statement")
highlight_linker("Macro", "Define")
highlight_linker("Method", "Function")
highlight_linker("Number", "Constant")
highlight_linker("Operator", "Statement")
highlight_linker("PreCondit", "PreProc")
highlight_linker("Property", "Type")
highlight_linker("Repeat", "Statement")
highlight_linker("SpecialChar", "StatementBuiltin")
highlight_linker("SpecialComment", "StatementBuiltin")
highlight_linker("StorageClass", "Type")
highlight_linker("Structure", "Type")
highlight_linker("Tag", "Statement")
highlight_linker("Typedef", "Type")
-- TODO: highlight! Underlined term=underline cterm=underline gui=underline

-- nvim-lsp:
highlight_linker("LspCodeLens", "Dimmed")
highlight_linker("LspCodeLensSeparator", "NonText")
highlight_linker("LspReferenceRead", "Visual")
highlight_linker("LspReferenceText", "Visual")
highlight_linker("LspReferenceWrite", "Visual")
highlight_linker("LspSignatureActiveParameter", "Accent")

-- Diagnostics:
highlighter("DiagnosticError", bold, none, br_red, none)
highlighter("DiagnosticHint", bold, none, br_blue, none)
highlighter("DiagnosticInfo", bold, none, br_yellow, none)
highlighter("DiagnosticWarn", bold, none, br_orange, none)
highlighter("DiagnosticFloatingError", bold, bg_1, br_red, none)
highlighter("DiagnosticFloatingHint", bold, bg_1, br_blue, none)
highlighter("DiagnosticFloatingInfo", bold, bg_1, br_yellow, none)
highlighter("DiagnosticFloatingWarn", bold, bg_1, br_orange, none)
highlighter("DiagnosticUnderlineError", undercurl, none, none, br_red)
highlighter("DiagnosticUnderlineHint", undercurl, none, none, br_blue)
highlighter("DiagnosticUnderlineInfo", undercurl, none, none, br_yellow)
highlighter("DiagnosticUnderlineWarn", undercurl, none, none, br_orange)
if vim.go.termguicolors == true or vim.fn.has("gui_running") == true then
  highlighter("DiagnosticVirtualTextError", bold, blend_error, br_red, none)
  highlighter("DiagnosticVirtualTextHint", bold, blend_hint, br_blue, none)
  highlighter("DiagnosticVirtualTextInfo", bold, blend_info, br_yellow, none)
  highlighter("DiagnosticVirtualTextWarn", bold, blend_warn, br_orange, none)
else
  highlight_linker("DiagnosticVirtualTextErrorer", "DiagnosticFloatingError")
  highligh_linker("DiagnosticVirtualTextHint", "DiagnosticFloatingHint")
  highligh_linker("DiagnosticVirtualTextInfo", "DiagnosticFloatingInfo")
  highligh_linker("DiagnosticVirtualTextWarn", "DiagnosticFloatingWarn")
end
highlight_linker("DiagnosticSignError", "DiagnosticError")
highlight_linker("DiagnosticSignHint", "DiagnosticHint")
highlight_linker("DiagnosticSignInfo", "DiagnosticInfo")
highlight_linker("DiagnosticSignWarn", "DiagnosticWarn")
--------------------------------------------------------------------------------
-- SECTION: Filetypes syntax groups highlighting:
--------------------------------------------------------------------------------
-- Help:
highlight_linker("helpHeadline", "Title")
highlight_linker("helpSectionDelim", "Dimmed")
highlight_linker("helpExample", "Text")
highlight_linker("helpBar", "Dimmed")
highlight_linker("helpHyperTextJump", "String")
highlight_linker("helpHyperTextEntry", "String")
highlight_linker("helpVim", "Accent")
highlight_linker("helpCommand", "Text")
highlight_linker("helpHeader", "Title")
highlight_linker("helpNote", "Todo")
highlight_linker("helpWarning", "DiagnosticWarn")
highlight_linker("helpDeprecated", "DiagnosticError")
highlight_linker("helpURL", "Link")

-- Diff:
highlight_linker("diffAdded", "DiffAdd")
highlight_linker("diffBDiffer", "Text")
highlight_linker("diffChanged", "DiffChange")
highlight_linker("diffComment", "Comment")
highlight_linker("diffCommon", "Text")
highlight_linker("diffDiffer", "Text")
highlight_linker("diffFile", "Text")
highlight_linker("diffIdentical", "Text")
highlight_linker("diffIndexLine", "Text")
highlight_linker("diffIsA", "Text")
highlight_linker("diffLine", "Title")
highlight_linker("diffNewFile", "Text")
highlight_linker("diffNoEOL", "Text")
highlight_linker("diffOldFile", "Text")
highlight_linker("diffOnly", "Text")
highlight_linker("diffRemoved", "DiffDelete")
highlight_linker("diffSubname", "Title")
--------------------------------------------------------------------------------
-- SECTION: Plugins for Neo(Vim) groups highlighting:
--------------------------------------------------------------------------------
