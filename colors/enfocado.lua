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
highlighter("ConstIdentifier", none, none, yellow, none)
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

if plugin_is_activated("aerial") then
  -- Cursorlines:
  highlight_linker("AerialLine", "Search")
  highlight_linker("AerialLineNC", "Search")

  -- Symbols:
  highlight_linker("AerialArrayIcon", "Identifier")
  highlight_linker("AerialBooleanIcon", "StatementBuiltin")
  highlight_linker("AerialClassIcon", "Type")
  highlight_linker("AerialConstantIcon", "ConstIdentifier")
  highlight_linker("AerialConstructorIcon", "Type")
  highlight_linker("AerialEnumIcon", "Type")
  highlight_linker("AerialEnumMemberIcon", "Property")
  highlight_linker("AerialEventIcon", "Builtin")
  highlight_linker("AerialFieldIcon", "Property")
  highlight_linker("AerialFileIcon", "Text")
  highlight_linker("AerialFunctionIcon", "Accent")
  highlight_linker("AerialInterfaceIcon", "Type")
  highlight_linker("AerialKeyIcon", "Identifier")
  highlight_linker("AerialMethodIcon", "Accent")
  highlight_linker("AerialModuleIcon", "Text")
  highlight_linker("AerialNamespaceIcon", "Text")
  highlight_linker("AerialNullIcon", "StatementBuiltin")
  highlight_linker("AerialNumberIcon", "Number")
  highlight_linker("AerialObjectIcon", "Type")
  highlight_linker("AerialOperatorIcon", "Operator")
  highlight_linker("AerialPackageIcon", "String")
  highlight_linker("AerialPropertyIcon", "Property")
  highlight_linker("AerialStringIcon", "String")
  highlight_linker("AerialStructIcon", "Type")
  highlight_linker("AerialTypeParameterIcon", "Type")
  highlight_linker("AerialVariableIcon", "Identifier")

  -- Indent lines:
  highlight_linker("AerialGuide", "NonText")
  highlight_linker("AerialGuide1", "AerialGuide")
  highlight_linker("AerialGuide2", "AerialGuide")
  highlight_linker("AerialGuide3", "AerialGuide")
  highlight_linker("AerialGuide4", "AerialGuide")
  highlight_linker("AerialGuide5", "AerialGuide")
  highlight_linker("AerialGuide6", "AerialGuide")
  highlight_linker("AerialGuide7", "AerialGuide")
  highlight_linker("AerialGuide8", "AerialGuide")
  highlight_linker("AerialGuide9", "AerialGuide")
end

if plugin_is_activated("bufferline") then
  -- Buffers:
  highlighter("BufferLineFill", nocombine, base, bg_2, none)
  highlight_linker("BufferLineBackground", "BufferLineFill")
  highlight_linker("BufferLineBuffer", "BufferLineBackground")
  highlight_linker("BufferLineNumbers", "BufferLineBuffer")
  highlight_linker("BufferLineCloseButton", "BufferLineBuffer")
  highlight_linker("BufferLineModified", "BufferLineCloseButton")
  highlight_linker("BufferLineDiagnostic", "BufferLineBuffer")

  -- Selecteds:
  highlighter("BufferLineBufferSelected", nocombine, none, br_accent_0, none)
  highlight_linker("BufferLineNumbersSelected", "BufferLineBufferSelected")
  highlight_linker("BufferLineCloseButtonSelected", "BufferLineBufferSelected")
  highlight_linker("BufferLineModifiedSelected", "BufferLineCloseButtonSelected")
  highlight_linker("BufferLineDiagnosticSelected", "BufferLineBufferSelected")
  highlight_linker("BufferLineIndicatorSelected", "BufferLineBufferSelected")

  -- Visibles:
  highlighter("BufferLineBufferVisible", nocombine, none, dim_0, none)
  highlight_linker("BufferLineNumbersVisible", "BufferLineBufferVisible")
  highlight_linker("BufferLineCloseButtonVisible", "BufferLineBufferVisible")
  highlight_linker("BufferLineModifiedVisible", "BufferLineCloseButtonVisible")
  highlight_linker("BufferLineDiagnosticVisible", "BufferLineBufferVisible")
  highlight_linker("BufferLineIndicatorVisible", "BufferLineBufferVisible")

  -- Errors:
  highlighter("BufferLineErrorDiagnosticSelected", bold, bg_0, br_red, none)
  highlight_linker("BufferLineErrorSelected", "BufferLineBufferSelected")
  highlight_linker("BufferLineErrorDiagnostic", "BufferLineBuffer")
  highlight_linker("BufferLineError", "BufferLineBuffer")
  highlight_linker("BufferLineErrorDiagnosticVisible", "BufferLineBufferVisible")
  highlight_linker("BufferLineErrorVisible", "BufferLineBufferVisible")

  -- Warnings:
  highlighter("BufferLineWarningDiagnosticSelected", bold, bg_0, br_orange, none)
  highlight_linker("BufferLineWarningSelected", "BufferLineBufferSelected")
  highlight_linker("BufferLineWarningDiagnostic", "BufferLineBuffer")
  highlight_linker("BufferLineWarning", "BufferLineBuffer")
  highlight_linker("BufferLineWarningDiagnosticVisible", "BufferLineBufferVisible")
  highlight_linker("BufferLineWarningVisible", "BufferLineBufferVisible")

  -- Infos:
  highlighter("BufferLineInfoDiagnosticSelected", bold, bg_0, br_yellow, none)
  highlight_linker("BufferLineInfoSelected", "BufferLineBufferSelected")
  highlight_linker("BufferLineInfoDiagnostic", "BufferLineBuffer")
  highlight_linker("BufferLineInfo", "BufferLineBuffer")
  highlight_linker("BufferLineInfoDiagnosticVisible", "BufferLineBufferVisible")
  highlight_linker("BufferLineInfoVisible", "BufferLineBufferVisible")

  -- Hints:
  highlighter("BufferLineHintDiagnosticSelected", bold, bg_0, br_yellow, none)
  highlight_linker("BufferLineHintSelected", "BufferLineBufferSelected")
  highlight_linker("BufferLineHintDiagnostic", "BufferLineBuffer")
  highlight_linker("BufferLineHint", "BufferLineBuffer")
  highlight_linker("BufferLineHintDiagnosticVisible", "BufferLineBufferVisible")
  highlight_linker("BufferLineHintVisible", "BufferLineBufferVisible")

  -- Duplicateds:
  highlighter("BufferLineDuplicate", nocombine, base, bg_1, none)
  highlighter("BufferLineDuplicateSelected", nocombine, none, accent_0, none)
  highlighter("BufferLineDuplicateVisible", nocombine, none, bg_2, none)

  -- Groups:
  highlighter("BufferLineGroupLabel", nocombine, none, bg_2, none)
  highlight_linker("BufferLineGroupSeparator", "BufferLineGroupLabel")

  -- Picks:
  highlighter("BufferLinePick", bold, base, br_yellow, none)
  highlighter("BufferLinePickSelected", bold, bg_0, br_yellow, none)
  highlight_linker("BufferLinePickVisible", "BufferLinePickSelected")

  -- Separators:
  highlighter("BufferLineSeparator", nocombine, base, base, none)
  highlighter("BufferLineSeparatorSelected", nocombine, bg_0, base, none)
  highlight_linker("BufferLineSeparatorVisible", "BufferLineSeparatorSelected")
  highlight_linker("BufferLineOffsetSeparator", "BufferLineIndicatorSelected")

  -- Tabs:
  highlighter("BufferLineTabSeparatorSelected", nocombine, bg_0, bg_0, none)
  highlighter("BufferLineTabSelected", nocombine, none, accent_1, none)
  highlight_linker("BufferLineTab", "BufferLineBuffer")
  highlight_linker("BufferLineTabClose", "BufferLineTabSelected")
  highlight_linker("BufferLineTabSeparator", "BufferLineSeparator")
end

-- copilot.lua
if plugin_is_activated("copilot") then
  highlight_linker("CopilotSuggestion", "Comment")
end

-- dashboard-nvim:
if plugin_is_activated("dashboard") then
  highlight_linker("DashboardHeader", "Accent")
  highlight_linker("DashboardCenter", "Text")
  highlight_linker("DashboardShortCut", "Text")
  highlight_linker("DashboardFooter", "Dimmed")
end

-- gitsigns.nvim:
if plugin_is_activated("gitsigns") then
  if vim.go.termguicolors == true or vim.fn.has("gui_running") then
    highlighter("GitSignsAddLn", none, blend_added, none, none)
    highlighter("GitSignsChangeLn", none, blend_modified, none, none)
  else
    highlighter("GitSignsAddLn", none, green, bg_1, none)
    highlighter("GitSignsChangeLn", none, yellow, bg_1, none)
  end
  highlighter("GitSignsAddInline", none, green, bg_1, none)
  highlighter("GitSignsDeleteInline", none, yellow, bg_1, none)
  highlighter("GitSignsChangeInline", none, red, bg_1, none)
  highlight_linker("GitSignsAdd", "DiffAdd")
  highlight_linker("GitSignsDelete", "DiffDelete")
  highlight_linker("GitSignsChange", "DiffChange")
  highlight_linker("GitSignsAddNr", "GitSignsAdd")
  highlight_linker("GitSignsChangeNr", "GitSignsChange")
  highlight_linker("GitSignsDeleteNr", "GitSignsDelete")
  highlight_linker("GitSignsAddPreview", "GitSignsAdd")
  highlight_linker("GitSignsDeletePreview", "GitSignsDelete")
  highlight_linker("GitSignsCurrentLineBlame", "Dimmed")
  highlight_linker("GitSignsAddLnInline", "GitSignsAddInline")
  highlight_linker("GitSignsChangeLnInline", "GitSignsChangeInline")
  highlight_linker("GitSignsDeleteLnInline", "GitSignsDeleteInline")
  highlight_linker("GitSignsAddLnVirtLnInLine", "GitSignsAddLnInline")
  highlight_linker("GitSignsChangeVirtLnInLine", "GitSignsChangeLnInline")
  highlight_linker("GitSignsDeleteVirtLnInLine", "GitSignsDeleteLnInline")
end

-- indent-blankline:
if plugin_is_activated("indent-blankline") then
  highlighter("IndentBlanklineChar", none, none, bg_2, none)
  highlighter("IndentBlanklineSpaceChar", none, none, bg_2, none)
  highlighter("IndentBlanklineSpaceCharBlankline", none, none, bg_2, none)
  highlighter("IndentBlanklineContextChar", none, none, dim_0, none)
  highlighter("IndentBlanklineContextStart", underline, none, none, dim_0)

  -- Enfocado groups:
  highlighter("EnfocadoIndentBlanklineIndent1", none, none, accent_1, none)
  highlighter("EnfocadoIndentBlanklineIndent2", none, none, cyan, none)
  highlighter("EnfocadoIndentBlanklineIndent3", none, none, accent_0, none)
  highlighter("EnfocadoIndentBlanklineIndent4", none, none, br_accent_1, none)
  highlighter("EnfocadoIndentBlanklineIndent5", none, none, br_cyan, none)
  highlighter("EnfocadoIndentBlanklineIndent6", none, none, br_accent_0, none)
end

-- netrw:
if plugin_is_activated("netrw") then
  highlight_linker("netrwClassify", "Dimmed")
  highlight_linker("netrwCmdSep", "Ignore")
  highlight_linker("netrwComment", "Comment")
  highlight_linker("netrwDir", "Directory")
  highlight_linker("netrwExe", "FileExec")
  highlight_linker("netrwHelpCmd", "Text")
  highlight_linker("netrwLink", "FileLink")
  highlight_linker("netrwList", "Dimmed")
  highlight_linker("netrwPlain", "Text")
  highlight_linker("netrwSymLink", "netrwLink")
  highlight_linker("netrwVersion", "Ignore")
end

-- noice.nvim:
if plugin_is_activated("noice") then
  highlighter("NoiceConfirmBorder", nocombine, bg_1, br_yellow, none)
  highlighter("NoiceFormatConfirm", nocombine, bg_2, yellow, none)
  highlighter("NoiceFormatConfirmDefault", nocombine, br_yellow, bg_1, none)
  highlight_linker("NoiceCmdlineIconCmdline", "NoiceCmdlineIcon")
  highlight_linker("NoiceCmdlineIconFilter", "NoiceCmdlineIcon")
  highlight_linker("NoiceCmdlineIconHelp", "NoiceCmdlineIcon")
  highlight_linker("NoiceCmdlineIconInput", "NoiceCmdlineIcon")
  highlight_linker("NoiceCmdlineIconLua", "NoiceCmdlineIcon")
  highlight_linker("NoiceCmdlineIconSearch", "NoiceCmdlineIcon")
  highlight_linker("NoiceCmdlineIcon", "Text")
  highlight_linker("NoiceCmdline", "MsgArea")
  highlight_linker("NoiceCmdlinePopupBorderCmdline", "NoiceCmdlinePopupBorder")
  highlight_linker("NoiceCmdlinePopupBorderFilter", "NoiceCmdlinePopupBorder")
  highlight_linker("NoiceCmdlinePopupBorderHelp", "NoiceCmdlinePopupBorder")
  highlight_linker("NoiceCmdlinePopupBorderInput", "NoiceCmdlinePopupBorder")
  highlight_linker("NoiceCmdlinePopupBorderLua", "NoiceCmdlinePopupBorder")
  highlight_linker("NoiceCmdlinePopupBorder", "NoicePopupBorder")
  highlight_linker("NoiceCmdlinePopupBorderSearch", "NoiceCmdlinePopupBorder")
  highlight_linker("NoiceCmdlinePopup", "NoicePopup")
  highlight_linker("NoiceCmdlinePrompt", "Question")
  highlight_linker("NoiceConfirm", "NoicePopup")
  highlight_linker("NoiceCursor", "Cursor")
  highlight_linker("NoiceFormatDate", "Text")
  highlight_linker("NoiceFormatEvent", "Text")
  highlight_linker("NoiceFormatKind", "NonText")
  highlight_linker("NoiceFormatLevelDebug", "Debug")
  highlight_linker("NoiceFormatLevelError", "DiagnosticError")
  highlight_linker("NoiceFormatLevelInfo", "DiagnosticInfo")
  highlight_linker("NoiceFormatLevelOff", "Dimmed")
  highlight_linker("NoiceFormatLevelTrace", "Trace")
  highlight_linker("NoiceFormatLevelWarn", "DiagnosticWarn")
  highlight_linker("NoiceFormatProgressDone", "Success")
  highlight_linker("NoiceFormatProgressTodo", "Accent")
  highlight_linker("NoiceFormatTitle", "Title")
  highlight_linker("NoiceLspProgressClient", "Accent")
  highlight_linker("NoiceLspProgressSpinner", "DiagnosticInfo")
  highlight_linker("NoiceLspProgressTitle", "NoiceFormatTitle")
  highlight_linker("NoiceMini", "MsgArea")
  highlight_linker("NoicePopupBorder", "FloatBorder")
  highlight_linker("NoicePopupmenuBorder", "NoicePopupBorder")
  highlight_linker("NoicePopupmenuMatch", "Accent")
  highlight_linker("NoicePopupmenu", "Pmenu")
  highlight_linker("NoicePopupmenuSelected", "PmenuSel")
  highlight_linker("NoicePopup", "NormalFloat")
  highlight_linker("NoiceScrollbar", "PmenuSbar")
  highlight_linker("NoiceScrollbarThumb", "PmenuThumb")
  highlight_linker("NoiceSplitBorder", "VertSplit")
  highlight_linker("NoiceSplit", "Normal")
  highlight_linker("NoiceVirtualText", "DiagnosticVirtualTextInfo")

  -- Completion item kinds:
  highlight_linker("NoiceCompletionItemKindClass", "Type")
  highlight_linker("NoiceCompletionItemKindColor", "StatementBuiltin")
  highlight_linker("NoiceCompletionItemKindConstant", "ConstIdentifier")
  highlight_linker("NoiceCompletionItemKindConstructor", "Type")
  highlight_linker("NoiceCompletionItemKindDefault", "Text")
  highlight_linker("NoiceCompletionItemKindEnumMember", "Property")
  highlight_linker("NoiceCompletionItemKindEnum", "Type")
  highlight_linker("NoiceCompletionItemKindField", "Property")
  highlight_linker("NoiceCompletionItemKindFile", "Text")
  highlight_linker("NoiceCompletionItemKindFolder", "Directory")
  highlight_linker("NoiceCompletionItemKindFunction", "Accent")
  highlight_linker("NoiceCompletionItemKindInterface", "Type")
  highlight_linker("NoiceCompletionItemKindKeyword", "Keyword")
  highlight_linker("NoiceCompletionItemKindMethod", "Accent")
  highlight_linker("NoiceCompletionItemKindModule", "Text")
  highlight_linker("NoiceCompletionItemKindProperty", "Property")
  highlight_linker("NoiceCompletionItemKindSnippet", "Text")
  highlight_linker("NoiceCompletionItemKindStruct", "Type")
  highlight_linker("NoiceCompletionItemKindText", "Text")
  highlight_linker("NoiceCompletionItemKindUnit", "Number")
  highlight_linker("NoiceCompletionItemKindValue", "Text")
  highlight_linker("NoiceCompletionItemKindVariable", "Identifier")
end

-- null-ls:
if plugin_is_activated("null-ls") then
  highlight_linker("NullLsInfoHeader", "Title")
  highlight_linker("NullLsInfoTitle", "Title")
  highlight_linker("NullLsInfoBorder", "FloatBorder")
  highlight_linker("NullLsInfoSources", "Success")
end

-- nvim-cmp:
if plugin_is_activated("cmp") then
  highlight_linker("CmpItemAbbr", "Text")
  highlight_linker("CmpItemAbbrDeprecated", "Error")
  highlight_linker("CmpItemAbbrMatch", "Match")
  highlight_linker("CmpItemAbbrMatchFuzzy", "MatchFuzzy")
  highlight_linker("CmpItemKindClass", "Type")
  highlight_linker("CmpItemKindColor", "StatementBuiltin")
  highlight_linker("CmpItemKindConstant", "ConstIdentifier")
  highlight_linker("CmpItemKindConstructor", "Type")
  highlight_linker("CmpItemKind", "Text")
  highlight_linker("CmpItemKindEnum", "Type")
  highlight_linker("CmpItemKindEnumMember", "Property")
  highlight_linker("CmpItemKindEvent", "Builtin")
  highlight_linker("CmpItemKindField", "Property")
  highlight_linker("CmpItemKindFile", "Text")
  highlight_linker("CmpItemKindFolder", "Directory")
  highlight_linker("CmpItemKindFunction", "Accent")
  highlight_linker("CmpItemKindInterface", "Type")
  highlight_linker("CmpItemKindKeyword", "Keyword")
  highlight_linker("CmpItemKindMethod", "Accent")
  highlight_linker("CmpItemKindModule", "Text")
  highlight_linker("CmpItemKindOperator", "Operator")
  highlight_linker("CmpItemKindProperty", "Property")
  highlight_linker("CmpItemKindReference", "Accent")
  highlight_linker("CmpItemKindSnippet", "Text")
  highlight_linker("CmpItemKindStruct", "Type")
  highlight_linker("CmpItemKindText", "Text")
  highlight_linker("CmpItemKindTypeParameter", "Type")
  highlight_linker("CmpItemKindUnit", "Number")
  highlight_linker("CmpItemKindValue", "Text")
  highlight_linker("CmpItemKindVariable", "Identifier")
  highlight_linker("CmpItemMenu", "NormalFloat")
end

-- nvim-dap-ui:
if plugin_is_activated("dap-ui") then
  highlighter("DapUIPlayPause", nocombine, none, br_blue, none)
  highlighter("DapUIPlayPauseNC", nocombine, none, blue, none)
  highlighter("DapUIRestart", nocombine, none, br_green, none)
  highlighter("DapUIRestartNC", nocombine, none, green, none)
  highlighter("DapUIStepBack", nocombine, none, br_blue, none)
  highlighter("DapUIStepBackNC", nocombine, none, blue, none)
  highlighter("DapUIStepInto", nocombine, none, br_blue, none)
  highlighter("DapUIStepIntoNC", nocombine, none, blue, none)
  highlighter("DapUIStepOut", nocombine, none, br_blue, none)
  highlighter("DapUIStepOutNC", nocombine, none, blue, none)
  highlighter("DapUIStepOver", nocombine, none, br_blue, none)
  highlighter("DapUIStepOverNC", nocombine, none, blue, none)
  highlighter("DapUIStop", nocombine, none, br_red, none)
  highlighter("DapUIStopNC", nocombine, none, red, none)
  highlighter("DapUIUnavailable", nocombine, none, dim_0, none)
  highlighter("DapUIUnavailableNC", nocombine, none, bg_2, none)
  highlight_linker("DapUIVariable", "Identifier")
  highlight_linker("DapUIScope", "Title")
  highlight_linker("DapUIType", "Type")
  highlight_linker("DapUIValue", "Text")
  highlight_linker("DapUIModifiedValue", "DiffChange")
  highlight_linker("DapUIDecoration", "Accent")
  highlight_linker("DapUIThread", "Success")
  highlight_linker("DapUIStoppedThread", "Error")
  highlight_linker("DapUIFrameName", "Title")
  highlight_linker("DapUISource", "Text")
  highlight_linker("DapUILineNumber", "LineNr")
  highlight_linker("DapUIFloatNormal", "NormalFloat")
  highlight_linker("DapUIFloatBorder", "FloatBorder")
  highlight_linker("DapUIWatchesEmpty", "Text")
  highlight_linker("DapUIWatchesValue", "Text")
  highlight_linker("DapUIWatchesError", "Error")
  highlight_linker("DapUIBreakpointsPath", "Text")
  highlight_linker("DapUIBreakpointsInfo", "DiagnosticInfo")
  highlight_linker("DapUIBreakpointsCurrentLine", "DiffChange")
  highlight_linker("DapUIBreakpointsLine", "LineNr")
  highlight_linker("DapUIBreakpointsDisabledLine", "LineNr")
  highlight_linker("DapUICurrentFrameName", "DiffChange")
end

-- lazy.nvim:
if plugin_is_activated("lazy") then
  highlighter("LazyButton", nocombine, bg_2, fg_0, none)
  highlight_linker("LazyButtonActive", "ToolbarButton")
  highlight_linker("LazyComment", "Comment")
  highlight_linker("LazyCommit", "ConstIdentifier")
  highlight_linker("LazyCommitIssue", "Text")
  highlight_linker("LazyCommitScope", "Text")
  highlight_linker("LazyCommitType", "Text")
  highlight_linker("LazyDir", "Directory")
  highlight_linker("LazyH1", "LazyButtonActive")
  highlight_linker("LazyH2", "Title")
  highlight_linker("LazyNoCond", "Dimmed")
  highlight_linker("LazyNormal", "NormalFloat")
  highlight_linker("LazyProgressDone", "Success")
  highlight_linker("LazyProgressTodo", "NonText")
  highlight_linker("LazyProp", "Property")
  highlight_linker("LazyReasonCmd", "Question")
  highlight_linker("LazyReasonEvent", "Question")
  highlight_linker("LazyReasonFt", "Question")
  highlight_linker("LazyReasonImport", "Text")
  highlight_linker("LazyReasonKeys", "Question")
  highlight_linker("LazyReasonPlugin", "Directory")
  highlight_linker("LazyReasonRuntime", "Text")
  highlight_linker("LazyReasonSource", "Question")
  highlight_linker("LazyReasonStart", "Success")
  highlight_linker("LazySpecial", "Special")
  highlight_linker("LazyTaskError", "DiagnosticVirtualTextError")
  highlight_linker("LazyTaskOutput", "DiagnosticVirtualTextWarn")
  highlight_linker("LazyUrl", "Link")
  highlight_linker("LazyValue", "Constant")
end

-- neo-tree.nvim:
if plugin_is_activated("neo-tree") then
  highlight_linker("NeoTreeBufferNumber", "Number")
  highlight_linker("NeoTreeCursorLine", "CursorLine")
  highlight_linker("NeoTreeDimText", "Dimmed")
  highlight_linker("NeoTreeDirectoryIcon", "NeoTreeDirectoryName")
  highlight_linker("NeoTreeDirectoryName", "Directory")
  highlight_linker("NeoTreeDotfile", "NeoTreeFileName")
  highlight_linker("NeoTreeFileIcon", "NeoTreeFileName")
  highlight_linker("NeoTreeFileName", "Text")
  highlight_linker("NeoTreeFileNameOpened", "Accent")
  highlight_linker("NeoTreeFilterTerm", "Search")
  highlight_linker("NeoTreeFloatBorder", "FloatBorder")
  highlight_linker("NeoTreeFloatTitle", "NormalFloat")
  highlight_linker("NeoTreeGitAdded", "DiffAdd")
  highlight_linker("NeoTreeGitConflict", "DiagnosticWarn")
  highlight_linker("NeoTreeGitDeleted", "DiffDelete")
  highlight_linker("NeoTreeGitIgnored", "Dimmed")
  highlight_linker("NeoTreeGitModified", "DiffChange")
  highlight_linker("NeoTreeGitUnstaged", "Dimmed")
  highlight_linker("NeoTreeGitUntracked", "Dimmed")
  highlight_linker("NeoTreeGitStaged", "DiffAdd")
  highlight_linker("NeoTreeHiddenByName", "Dimmed")
  highlight_linker("NeoTreeIndentMarker", "NonText")
  highlight_linker("NeoTreeExpander", "NonText")
  highlight_linker("NeoTreeNormal", "Normal")
  highlight_linker("NeoTreeNormalNC", "NormalNC")
  highlight_linker("NeoTreeSignColumn", "SignColumn")
  highlight_linker("NeoTreeStatusLine", "StatusLine")
  highlight_linker("NeoTreeStatusLineNC", "StatusLineNC")
  highlight_linker("NeoTreeVertSplit", "VertSplit")
  highlight_linker("NeoTreeWinSeparator", "WinSeparator")
  highlight_linker("NeoTreeEndOfBuffer", "EndOfBuffer")
  highlight_linker("NeoTreeRootName", "NeoTreeDirectoryName")
  highlight_linker("NeoTreeSymbolicLinkTarget", "FileLink")
  highlight_linker("NeoTreeTitleBar", "NeoTreeFloatTitle")
  highlight_linker("NeoTreeWindowsHidden", "Dimmed")

  -- Tabs:
  highlighter("NeoTreeTabInactive", nocombine, base, bg_2, none)
  highlighter("NeoTreeTabActive", nocombine, none, br_accent_0, none)
  highlighter("NeoTreeTabSeparatorInactive", nocombine, base, base, none)
  highlighter("NeoTreeTabSeparatorActive", nocombine, none, br_accent_0, none)

  -- Others:
  highlight_linker("NeoTreeModified", "Accent")
  highlight_linker("NeoTreeMessage", "MsgArea")
end

-- nvim-lspconfig:
if plugin_is_activated("lspconfig") then
  highlight_linker("LspInfoTitle", "Title")
  highlight_linker("LspInfoList", "Dimmed")
  highlight_linker("LspInfoFiletype", "Success")
  highlight_linker("LspInfoTip", "DiagnosticInfo")
  highlight_linker("LspInfoBorder", "FloatBorder")
end

-- nvim-notify:
if plugin_is_activated("notify") then
  highlighter("NotifyERRORBorder", nocombine, bg_1, br_red, none)
  highlighter("NotifyDEBUGBorder", nocombine, bg_1, dim_0, none)
  highlighter("NotifyINFOBorder", nocombine, bg_1, br_yellow, none)
  highlighter("NotifyTRACEBorder", nocombine, bg_1, br_magenta, none)
  highlighter("NotifyWARNBorder", nocombine, bg_1, br_orange, none)
  highlight_linker("NotifyERRORIcon", "DiagnosticError")
  highlight_linker("NotifyDEBUGIcon", "Debug")
  highlight_linker("NotifyINFOIcon", "DiagnosticInfo")
  highlight_linker("NotifyTRACEIcon", "Trace")
  highlight_linker("NotifyWARNIcon", "DiagnosticWarn")
  highlight_linker("NotifyERRORTitle", "NotifyERRORIcon")
  highlight_linker("NotifyDEBUGTitle", "NotifyDEBUGIcon")
  highlight_linker("NotifyINFOTitle", "NotifyINFOIcon")
  highlight_linker("NotifyTRACETitle", "NotifyTRACEIcon")
  highlight_linker("NotifyWARNTitle", "NotifyWARNIcon")
  highlight_linker("NotifyERRORBody", "NormalFloat")
  highlight_linker("NotifyDEBUGBody", "NormalFloat")
  highlight_linker("NotifyINFOBody", "NormalFloat")
  highlight_linker("NotifyTRACEBody", "NormalFloat")
  highlight_linker("NotifyWARNBody", "NormalFloat")
end

-- nvim-scrollview:
if plugin_is_activated("scrollview") then
  highlight_linker("ScrollView", "Line")
end

-- nvim-surround:
if plugin_is_activated("surround") then
  highlight_link("NvimSurroundHighlight", "Search")
end

-- nvim-treesitter:
if plugin_is_activated("treesitter") then
  highlighter("@text.danger", bold, br_red, bg_1, none)
  highlighter("@text.note", bold, br_yellow, bg_1, none)
  highlighter("@text.warning", bold, br_orange, bg_1, none)
  highlighter("@text.literal", italic, none, fg_0, none)
  highlighter("@none", none, none, none, none)
  highlighter("@text.title", nocombine, none, fg_1, none)
  highlight_linker("@annotation", "SpecialComment")
  highlight_linker("@attribute", "SpecialComment")
  highlight_linker("@boolean", "Boolean")
  highlight_linker("@character", "Character")
  highlight_linker("@character.special", "SpecialChar")
  highlight_linker("@comment", "Comment")
  highlight_linker("@conditional", "Conditional")
  highlight_linker("@constant.builtin", "ConstIdentifier")
  highlight_linker("@constant", "ConstIdentifier")
  highlight_linker("@constant.macro", "ConstIdentifier")
  highlight_linker("@constructor", "Type")
  highlight_linker("@debug", "Debug")
  highlight_linker("@define", "PreProc")
  highlight_linker("@error", "Error")
  highlight_linker("@exception", "Exception")
  highlight_linker("@field", "Property")
  highlight_linker("@float", "Float")
  highlight_linker("@function", "Function")
  highlight_linker("@function.builtin", "FunctionBuiltin")
  highlight_linker("@function.call", "Function")
  highlight_linker("@function.macro", "Function")
  highlight_linker("@include", "Include")
  highlight_linker("@keyword", "Keyword")
  highlight_linker("@keyword.function", "Type")
  highlight_linker("@keyword.operator", "Operator")
  highlight_linker("@keyword.return", "Keyword")
  highlight_linker("@label", "Label")
  highlight_linker("@method", "Method")
  highlight_linker("@method.call", "Method")
  highlight_linker("@namespace", "Text")
  highlight_linker("@number", "Number")
  highlight_linker("@operator", "Operator")
  highlight_linker("@parameter", "Identifier")
  highlight_linker("@parameter.reference", "Indentifier")
  highlight_linker("@preproc", "PreProc")
  highlight_linker("@property", "Property")
  highlight_linker("@punctuation.bracket", "Delimiter")
  highlight_linker("@punctuation.delimiter", "Delimiter")
  highlight_linker("@punctuation.special", "StatementBuiltin")
  highlight_linker("@repeat", "Repeat")
  highlight_linker("@storageclass", "StorageClass")
  highlight_linker("@string", "String")
  highlight_linker("@string.escape", "StatementBuiltin")
  highlight_linker("@string.regex", "StatementBuiltin")
  highlight_linker("@string.special", "StatementBuiltin")
  highlight_linker("@symbol", "Identifier")
  highlight_linker("@tag", "Tag")
  highlight_linker("@tag.attribute", "Identifier")
  highlight_linker("@tag.delimiter", "Delimiter")
  highlight_linker("@text", "Text")
  highlight_linker("@text.environmen.name", "StatementBuiltin")
  highlight_linker("@text.environment", "Text")
  highlight_linker("@text.math", "StatementBuiltin")
  highlight_linker("@text.reference", "TSLiteral")
  highlight_linker("@text.uri", "Link")
  highlight_linker("@todo", "Todo")
  highlight_linker("@type", "Type")
  highlight_linker("@type.builtin", "TypeBuiltin")
  highlight_linker("@type.definition", "PreProc")
  highlight_linker("@type.qualifier", "Type")
  highlight_linker("@variable", "Identifier")
  highlight_linker("@variable.builtin", "IdentifierBuiltin")
  -- TODO: Complete this
  -- highlight! @text.emphasis term=italic cterm=italic gui=italic
  -- highlight! @text.strike term=strikethrough cterm=strikethrough gui=strikethrough
  -- highlight! @text.strong term=bold cterm=bold gui=bold
  -- highlight! @text.underline term=underline cterm=underline gui=underline

  -- TSModule info:
  highlight_linker("TSModuleInfoGood", "Success")
  highlight_linker("TSModuleInfoBad", "DiagnosticError")
  highlight_linker("TSModuleInfoHeader", "Accent")
  highlight_linker("TSModuleInfoNamespace", "Title")
  highlight_linker("TSModuleInfoParser", "Text")
end

-- nvim-tree.lua:
if plugin_is_activated("tree") then
  highlighter("NvimTreeImageFile", bold, none, br_magenta, none)
  highlighter("NvimTreeSpecialFile", bold_underline, none, br_yellow, yellow)
  highlight_linker("NvimTreeCursorColumn", "Line")
  highlight_linker("NvimTreeCursorLine", "Line")
  highlight_linker("NvimTreeEmptyFolderName", "Directory")
  highlight_linker("NvimTreeEndOfBuffer", "EndOfBuffer")
  highlight_linker("NvimTreeExecFile", "FileExec")
  highlight_linker("NvimTreeFileDeleted", "DiffDelete")
  highlight_linker("NvimTreeFileDirty", "DiffChange")
  highlight_linker("NvimTreeFileMerge", "DiffChange")
  highlight_linker("NvimTreeFileNew", "DiffAdd")
  highlight_linker("NvimTreeFileRenamed", "DiffAdd")
  highlight_linker("NvimTreeFileStaged", "DiffChange")
  highlight_linker("NvimTreeFolderIcon", "Directory")
  highlight_linker("NvimTreeFolderName", "Directory")
  highlight_linker("NvimTreeGitDeleted", "DiffDelete")
  highlight_linker("NvimTreeGitDirty", "DiffChange")
  highlight_linker("NvimTreeGitIgnored", "Text")
  highlight_linker("NvimTreeGitMerge", "DiffChange")
  highlight_linker("NvimTreeGitNew", "DiffAdd")
  highlight_linker("NvimTreeGitRenamed", "DiffAdd")
  highlight_linker("NvimTreeGitStaged", "DiffChange")
  highlight_linker("NvimTreeIndentMarker", "NonText")
  highlight_linker("NvimTreeLspDiagnosticsError", "DiagnosticError")
  highlight_linker("NvimTreeLspDiagnosticsHint", "DiagnosticHint")
  highlight_linker("NvimTreeLspDiagnosticsInformation", "DiagnosticInfo")
  highlight_linker("NvimTreeLspDiagnosticsWarning", "DiagnosticWarn")
  highlight_linker("NvimTreeNormal", "Normal")
  highlight_linker("NvimTreeNormalNC", "NormalNC")
  highlight_linker("NvimTreeOpenedFile", "Accent")
  highlight_linker("NvimTreeOpenedFolderName", "Directory")
  highlight_linker("NvimTreePopup", "NormalFloat")
  highlight_linker("NvimTreeRootFolder", "Directory")
  highlight_linker("NvimTreeSignColumn", "SignColumn")
  highlight_linker("NvimTreeStatusLine", "StatusLine")
  highlight_linker("NvimTreeStatusLineNC", "StatusLineNC")
  highlight_linker("NvimTreeSymlink", "FileLink")
  highlight_linker("NvimTreeVertSplit", "VertSplit")
  highlight_linker("NvimTreeWindowPicker", "Accent")
end

-- nvim-ts-rainbow:
if plugin_is_activated("ts-rainbow") then
  highlighter("rainbowcol1", none, none, accent_1, none)
  highlighter("rainbowcol2", none, none, cyan, none)
  highlighter("rainbowcol3", none, none, accent_0, none)
  highlighter("rainbowcol4", none, none, br_accent_1, none)
  highlighter("rainbowcol5", none, none, br_cyan, none)
  highlighter("rainbowcol6", none, none, br_accent_0, none)
  highlighter("rainbowcol7", none, none, accent_1, none)
end

-- nvim-ts-rainbow2:
if plugin_is_activated("ts-rainbow2") then
  highlighter("TSRainbowRed", none, none, br_red, none)
  highlighter("TSRainbowYellow", none, none, br_yellow, none)
  highlighter("TSRainbowBlue", none, none, br_blue, none)
  highlighter("TSRainbowOrange", none, none, br_orange, none)
  highlighter("TSRainbowGreen", none, none, br_green, none)
  highlighter("TSRainbowViolet", none, none, br_violet, none)
  highlighter("TSRainbowCyan", none, none, br_cyan, none)
end

-- packer.nvim:
if plugin_is_activated("packer") then
  highlight_linker("packerWorking", "Accent")
  highlight_linker("packerSuccess", "Success")
  highlight_linker("packerFail", "DiagnosticError")
  highlight_linker("packerStatus", "DiagnosticInfo")
  highlight_linker("packerStatusSuccess", "Success")
  highlight_linker("packerStatusFail", "DiagnosticError")
  highlight_linker("packerStatusCommit", "Dimmed")
  highlight_linker("packerHash", "Dimmed")
  highlight_linker("packerRelDate", "Dimmed")
  highlight_linker("packerProgress", "DiagnosticInfo")
  highlight_linker("packerOutput", "Text")
  highlight_linker("packerTimeHigh", "Dimmed")
  highlight_linker("packerTimeMedium", "Dimmed")
  highlight_linker("packerTimeLow", "Dimmed")
  highlight_linker("packerTimeTrivial", "Dimmed")
  highlight_linker("packerPackageNotLoaded", "Dimmed")
  highlight_linker("packerPackageName", "Text")
  highlight_linker("packerString", "String")
  highlight_linker("packerBool", "Boolean")
  highlight_linker("packerBreakingChange", "DiagnosticWarn")
end

-- SmoothCursor.nvim:
if plugin_is_activated("smoothcursor") then
  highlighter("SmoothCursor", nocombine, none, br_accent_0, none)
  highlighter("SmoothCursorRed", nocombine, none, br_red, none)
  highlighter("SmoothCursorGreen", nocombine, none, br_green, none)
  highlighter("SmoothCursorYellow", nocombine, none, br_yellow, none)
  highlighter("SmoothCursorBlue", nocombine, none, br_blue, none)
  highlighter("SmoothCursorPurple", nocombine, none, br_magenta, none)
  highlighter("SmoothCursorAqua", nocombine, none, br_cyan, none)
  highlighter("SmoothCursorOrange", nocombine, none, br_orange, none)
end

-- substitute.nvim:
if plugin_is_activated("substitute") then
  highlight_linker("SubstituteRange", "Search")
  highlight_linker("SubstituteExchange", "Search")
end

-- telescope.nvim:
if plugin_is_activated("telescope") then
  highlighter("TelescopePreviewDate", nocombine, none, blue, none)
  highlighter("TelescopePreviewRead", bold, none, br_yellow, none)
  highlighter("TelescopePreviewSize", nocombine, none, br_green, none)
  highlighter("TelescopePreviewUser", bold, none, br_yellow, none)
  highlighter("TelescopePreviewWrite", bold, none, br_red, none)
  highlight_linker("TelescopeBorder", "FloatBorder")
  highlight_linker("TelescopeMatching", "Match")
  highlight_linker("TelescopeMultiSelection", "Visual")
  highlight_linker("TelescopeNormal", "NormalFloat")
  highlight_linker("TelescopePreviewBorder", "FloatBorder")
  highlight_linker("TelescopePreviewDirectory", "Directory")
  highlight_linker("TelescopePreviewExecute", "FileExec")
  highlight_linker("TelescopePreviewLink", "FileLink")
  highlight_linker("TelescopePreviewMatch", "Search")
  highlight_linker("TelescopePreviewMessage", "DiagnosticInfo")
  highlight_linker("TelescopePreviewMessageFillchar", "DiagnosticInfo")
  highlight_linker("TelescopePreviewNormal", "NormalFloat")
  highlight_linker("TelescopePreviewTitle", "TelescopeTitle")
  highlight_linker("TelescopePromptBorder", "FloatBorder")
  highlight_linker("TelescopePromptCounter", "DiagnosticInfo")
  highlight_linker("TelescopePromptNormal", "NormalFloat")
  highlight_linker("TelescopePromptPrefix", "Text")
  highlight_linker("TelescopePromptTitle", "TelescopeTitle")
  highlight_linker("TelescopeResultsBorder", "FloatBorder")
  highlight_linker("TelescopeResultsDiffAdd", "DiffAdd")
  highlight_linker("TelescopeResultsDiffChange", "DiffChange")
  highlight_linker("TelescopeResultsDiffDelete", "DiffDelete")
  highlight_linker("TelescopeResultsDiffUntracked", "Ignore")
  highlight_linker("TelescopeResultsClass", "Type")
  highlight_linker("TelescopeResultsComment", "Comment")
  highlight_linker("TelescopeResultsConstant", "ConstIdentifier")
  highlight_linker("TelescopeResultsField", "Property")
  highlight_linker("TelescopeResultsFunction", "Function")
  highlight_linker("TelescopeResultsIdentifier", "Identifier")
  highlight_linker("TelescopeResultsLineNr", "Ignore")
  highlight_linker("TelescopeResultsMethod", "Method")
  highlight_linker("TelescopeResultsNormal", "NormalFloat")
  highlight_linker("TelescopeResultsNumber", "Number")
  highlight_linker("TelescopeResultsOperator", "Operator")
  highlight_linker("TelescopeResultsSpecialComment", "SpecialComment")
  highlight_linker("TelescopeResultsStruct", "Type")
  highlight_linker("TelescopeResultsTitle", "TelescopeTitle")
  highlight_linker("TelescopeResultsVariable", "Identifier")
  highlight_linker("TelescopeSelection", "Visual")
  highlight_linker("TelescopeSelectionCaret", "Visual")
  highlight_linker("TelescopeTitle", "TelescopeNormal")
end

-- todo-comments.nvim:
if plugin_is_activated("todo-comments") then
  highlighter("TodoBgFIX", bold, br_red, bg_1, none)
  highlighter("TodoBgHACK", bold, br_yellow, bg_1, none)
  highlighter("TodoBgNOTE", bold, br_green, bg_1, none)
  highlighter("TodoBgPERF", bold, br_magenta, bg_1, none)
  highlighter("TodoBgTEST", bold, br_orange, bg_1, none)
  highlighter("TodoBgTODO", bold, br_cyan, bg_1, none)
  highlighter("TodoBgWARN", bold, br_orange, bg_1, none)
  highlighter("TodoFgFIX", nocombine, none, br_red, none)
  highlighter("TodoFgHACK", nocombine, none, br_yellow, none)
  highlighter("TodoFgNOTE", nocombine, none, br_green, none)
  highlighter("TodoFgPERF", nocombine, none, br_magenta, none)
  highlighter("TodoFgTEST", nocombine, none, br_orange, none)
  highlighter("TodoFgTODO", nocombine, none, br_cyan, none)
  highlighter("TodoFgWARN", nocombine, none, br_orange, none)
  highlighter("TodoSignFIX", nocombine, none, br_red, none)
  highlighter("TodoSignHACK", nocombine, none, br_yellow, none)
  highlighter("TodoSignNOTE", nocombine, none, br_green, none)
  highlighter("TodoSignPERF", nocombine, none, br_magenta, none)
  highlighter("TodoSignTEST", nocombine, none, br_orange, none)
  highlighter("TodoSignTODO", nocombine, none, br_cyan, none)
  highlighter("TodoSignWARN", nocombine, none, br_orange, none)
end

-- vim-illuminate:
if plugin_is_activated("illuminate") then
  highlight_linker("IlluminatedWord", "Visual")
  highlight_linker("IlluminatedWordText", "IlluminatedWord")
  highlight_linker("IlluminatedWordRead", "IlluminatedWord")
  highlight_linker("IlluminatedWordWrite", "IlluminatedWord")
end

-- vim-matchup:
if plugin_is_activated("matchup") then
  highlight_linker("MatchBackground", "Visual")
  highlight_linker("MatchParenCur", "Visual")
  highlight_linker("MatchWord", "Visual")
  highlight_linker("MatchWordCur", "Visual")
end

-- vista.vim:
if plugin_is_activated("vista") then
  highlight_linker("VistaBracket", "Ignore")
  highlight_linker("VistaChildrenNr", "Ignore")
  highlight_linker("VistaColon", "Ignore")
  highlight_linker("VistaFloat", "NormalFloat")
  highlight_linker("VistaIcon", "Ignore")
  highlight_linker("VistaLineNr", "Ignore")
  highlight_linker("VistaPrefix", "Ignore")
  highlight_linker("VistaScope", "Dimmed")
  highlight_linker("VistaTag", "Dimmed")
end

-- which-key.nvim:
if plugin_is_activated("which-key") then
  highlight_linker("WhichKey", "MoreMsg")
  highlight_linker("WhichKeyDesc", "Accent")
  highlight_linker("WhichKeyFloat", "NormalFloat")
  highlight_linker("WhichKeyGroup", "Dimmed")
  highlight_linker("WhichKeySeparator", "NonText")
  highlight_linker("WhichKeyValue", "Text")
end

-- yanky.nvim:
if plugin_is_activated("yanky") then
  highlighter("YankyPut", reverse, none, none, none)
  highlighter("YankyYanked", reverse, none, none, none)
end
