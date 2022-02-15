-------------------------------------------------------------------------------
-- Name:        Enfocado for Vim
-- Author:      Mobasher Artin(artart222) <mobasherartin.icm@gmail.com>
-- URL:         https://github.com/artart222/nvim-enfocado
-- License:     MIT (C) Wuelner Martínez.
-- Description: How themes should be.
-- About:       Enfocado is more than a theme, it is a concept of "how themes
--              should be", focusing on what is really important to developers:
--              the code and nothing else.
-------------------------------------------------------------------------------

-- " The Enfocado theme is initialized.
vim.g.colors_name = "enfocado"

-- " NeoVim's dark mode is on.
vim.opt.background = "dark"

-- All highlights are removed.
if vim.g.colors_name then
  vim.cmd("hi clear")
  vim.cmd("syntax reset")
end


-- Selenized black color scheme variables are declared.
local bg_0       = { "#181818", 234 }
local bg_1       = { "#252525", 235 }
local bg_2       = { "#3B3B3B", 237 }
local dim_0      = { "#777777", 243 }
local fg_0       = { "#B9B9B9", 250 }
local fg_1       = { "#DEDEDE", 253 }
local red        = { "#ED4A46", 203 }
local green      = { "#70B433", 107 }
local yellow     = { "#DBB32D", 179 }
local blue       = { "#368AEB", 69  }
local magenta    = { "#EB6EB7", 205 }
local cyan       = { "#3FC5B7", 79  }
local orange     = { "#E67F43", 173 }
local violet     = { "#A580E2", 140 }
local br_red     = { "#FF5E56", 203 }
local br_green   = { "#83C746", 113 }
local br_yellow  = { "#EFC541", 221 }
local br_blue    = { "#4F9CFE", 75  }
local br_magenta = { "#FF81CA", 212 }
local br_cyan    = { "#56D8C9", 80  }
local br_orange  = { "#FA9153", 209 }
local br_violet  = { "#B891F5", 141 }
local black      = { "#000000", 16  }

-- NeoVim terminal variables are assigned.
vim.g.terminal_color_0  = "#252525"
vim.g.terminal_color_1  = "#ED4A46"
vim.g.terminal_color_2  = "#70B433"
vim.g.terminal_color_3  = "#DBB32D"
vim.g.terminal_color_4  = "#368AEB"
vim.g.terminal_color_5  = "#EB6EB7"
vim.g.terminal_color_6  = "#3FC5B7"
vim.g.terminal_color_7  = "#777777"
vim.g.terminal_color_8  = "#3B3B3B"
vim.g.terminal_color_9  = "#FF5E56"
vim.g.terminal_color_10 = "#83C746"
vim.g.terminal_color_11 = "#EFC541"
vim.g.terminal_color_12 = "#4F9CFE"
vim.g.terminal_color_13 = "#FF81CA"
vim.g.terminal_color_14 = "#56D8C9"
vim.g.terminal_color_15 = "#DEDEDE"

-- Attributes are declared.
local none          = { "NONE"         , 'NONE'          }
local bold          = { "bold"         , 'bold'          }
local bold_italic   = { "bold,italic"  , 'bold,italic'   }
local italic        = { "italic"       , 'italic'        }
local underline     = { "underline"    , 'underline'     }
local undercurl     = { "undercurl"    , 'underline'     }
-- local strikethrough = { "strikethrough", "strikethrough" }

-- " Enfocado configuration variables are initialized.
local enfocado_style   = vim.g.enfocado_style
local enfocado_plugins = vim.g.enfocado_plugins


-- A function is created to check on-demand plugins.
local function plugin_is_activated(name)
  if enfocado_plugins == "none" then
    return 0
  elseif enfocado_plugins == "all"  then
    return 1
  else
    for _,v in pairs(enfocado_plugins) do
      if v == name then
        return 1
      end
    end
  end
end

-- A function is created to make using nvim_set_hl easier.
local function highlighter(group, set_attr, bg_color, fg_color, set_sp)
      local bold = false
      local italic = false
      local underline = false
      local undercurl = false

      local fg_color = fg_color
      if type(fg_color) == "nil" then
        fg_color = { "nil", "nil" }
      end

      local bg_color = bg_color
      if type(bg_color) == "nil" then
        bg_color = { "nil", "nil" }
      end

      local set_sp = set_sp
      if type(set_sp) == "nil" then
        set_sp = { "nil", "nil" }
      end

      if set_attr[1] == "NONE" then
        bold = false
        italic = false
        underline = false
        undercurl = false
      elseif  set_attr[1] == "bold" then
        bold = true
      elseif  set_attr[1] == "italic" then
        italic = true
      elseif set_attr[1] == "bold,italic" then
        bold = true
        italic = true
      elseif set_attr[1] == "underline" then
        underline = true
      elseif set_attr[1] == "undercurl" then
        undercurl = true
      end

    vim.api.nvim_set_hl(0, group, {
      bg=bg_color[1],
      fg=fg_color[1],
      sp = set_sp[1],
      bold = bold,
      italic = italic,
      underline = underline,
      undercurl = undercurl,

      ctermbg=bg_color[2],
      ctermfg=fg_color[2],
      cterm = {
        bold = bold,
        italic = italic,
        underline = underline or undercurl,
      }
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
if enfocado_style == 'neon' then
  -- Neon interfaz.
  highlighter('Accent', none, none, br_magenta, none)
  highlighter('FloatBorder', none, bg_1, magenta, none)
  highlighter('IncSearch', bold, bg_2, br_magenta, none)
  highlighter('Search', bold, bg_2, br_magenta, none)
  highlighter('ToolbarButton', none, magenta, bg_1, none)
  highlighter('WildMenu', bold, bg_2, br_magenta, none)

  -- Neon syntax.
  highlighter('Function', italic, none, br_magenta, none)
  highlighter('FunctionBuiltin', none, none, br_green, none)
  highlighter('Identifier', none, none, magenta, none)
  highlighter('IdentifierBuiltin', none, none, green, none)
  highlighter('PreProc', none, none, br_violet, none)
  highlighter('Special', none, none, br_blue, none)
  highlighter('Statement', none, none, br_violet, none)
  highlighter('StatementBuiltin', none, none, br_blue, none)
  highlighter('Struct', bold_italic, none, br_magenta, none)
  highlighter('Type', none, none, violet, none)
  highlighter('TypeBuiltin', none, none, blue, none)
else
  -- Nature interfaz.
  highlighter('Accent', none, none, br_green, none)
  highlighter('FloatBorder', none, bg_1, green, none)
  highlighter('IncSearch', bold, bg_2, br_green, none)
  highlighter('Search', bold, bg_2, br_green, none)
  highlighter('ToolbarButton', none, green, bg_1, none)
  highlighter('WildMenu', bold, bg_2, br_green, none)

  -- Nature syntax.
  highlighter('Function', italic, none, br_green, none)
  highlighter('FunctionBuiltin', none, none, br_magenta, none)
  highlighter('Identifier', none, none, green, none)
  highlighter('IdentifierBuiltin', none, none, magenta, none)
  highlighter('PreProc', none, none, br_blue, none)
  highlighter('Special', none, none, br_violet, none)
  highlighter('Statement', none, none, br_blue, none)
  highlighter('StatementBuiltin', none, none, br_violet, none)
  highlighter('Struct', bold_italic, none, br_green, none)
  highlighter('Type', none, none, blue, none)
  highlighter('TypeBuiltin', none, none, violet, none)
end

-- General interfaz.
highlighter('ColorColumn', none, bg_1, none, none)
highlighter('Conceal', none, none, bg_2, none)
highlighter('Cursor', none, bg_1, fg_0, none)
highlighter('CursorColumn', none, bg_1, none, none)
highlighter('CursorLine', none, bg_1, none, none)
highlighter('CursorLineNr', none, none, dim_0, none)
highlighter('DiffAdd', none, none, green, none)
highlighter('DiffChange', none, none, yellow, none)
highlighter('DiffDelete', none, none, red, none)
highlighter('DiffText', none, bg_2, yellow, none)
highlighter('Dimmed', none, none, dim_0, none)
highlighter('Directory', none, none, dim_0, none)
highlighter('ErrorMsg', none, none, br_red, none)
highlighter('Folded', none, none, dim_0, none)
highlighter('FoldColumn', none, none, dim_0, none)
highlighter('Ignore', none, none, bg_2, none)
highlighter('lCursor', none, bg_1, fg_0, none)
highlighter('LineNr', none, none, bg_2, none)
highlighter('MatchParen', none, bg_2, none, none)
highlighter('ModeMsg', none, none, dim_0, none)
highlighter('MoreMsg', none, none, br_yellow, none)
highlighter('None', none, none, none, none)
highlighter('NonText', none, none, bg_2, none)
highlighter('Normal', none, bg_0, fg_0, none)
highlighter('NormalFloat', none, bg_1, fg_0, none)
highlighter('NormalNC', none, bg_0, fg_0, none)
highlighter('NvimInternalError', none, none, br_red, none)
highlighter('Pmenu', none, bg_1, fg_0, none)
highlighter('PmenuSbar', none, bg_1, none, none)
highlighter('PmenuSel', none, bg_2, none, none)
highlighter('PmenuThumb', none, bg_2, none, none)
highlighter('Question', none, none, br_yellow, none)
highlighter('RedrawDebugClear', none, none, br_yellow, none)
highlighter('RedrawDebugComposed', none, none, br_green, none)
highlighter('RedrawDebugNormal', none, none, fg_1, none)
highlighter('RedrawDebugRecompose', none, none, br_red, none)
highlighter('SignColumn', none, none, none, none)
highlighter('SpecialKey', none, none, bg_2, none)
highlighter('SpellBad', undercurl, none, none, red)
highlighter('SpellCap', undercurl, none, none, blue)
highlighter('SpellLocal', undercurl, none, none, cyan)
highlighter('SpellRare', undercurl, none, none, magenta)
highlighter('StatusLine', none, bg_1, dim_0, none)
highlighter('StatusLineNC', none, bg_1, bg_2, none)
highlighter('StatuslineTerm', none, bg_1, dim_0, none)

highlighter('StatuslineTermNC', none, bg_1, bg_2, none)
highlighter('Success', none, none, br_green, none)
highlighter('TabLine', none, bg_1, bg_2, none)
highlighter('TabLineFill', none, bg_1, bg_2, none)
highlighter('TabLineSel', none, none, dim_0, none)
highlighter('TermCursor', none, fg_0, bg_1, none)
highlighter('Title', bold, none, fg_1, none)
highlighter('ToolbarLine', none, bg_1, dim_0, none)
highlighter('VertSplit', none, none, black, none)
highlighter('Visual', none, bg_2, none, none)
highlighter('VisualNC', none, bg_2, none, none)
highlighter('VisualNOS', none, bg_2, none, none)
highlighter('WarningMsg', none, none, br_orange, none)
highlight_linker("EndOfBuffer", "NonText")
highlight_linker("Line", "ColorColumn")
highlight_linker("LineNrAbov", "LineNr")
highlight_linker("LineNrBelow", "LineNr")
highlight_linker("MsgArea", "Dimmed")
highlight_linker("MsgSeparator", "StatusLineNC")
highlight_linker("QuickFixLine", "Search")
highlight_linker("Substitute", "Search")
highlight_linker("TermCursorNC", "None")
highlight_linker("Whitespace", "NonText")
highlighter("FloatShadow", none, black, nil, nil)
highlighter("FloatShadowThrough", none, black, nil, nil)

-- General syntax.
highlighter('Comment', italic, none, dim_0, none)
highlighter('Constant', none, none, cyan, none)
highlighter('Error', none, none, br_red, none)
highlighter('Link', underline, none, br_cyan, br_cyan)
highlighter('Text', none, none, fg_0, none)
highlighter('Todo', bold, br_cyan, bg_1, none)
highlight_linker("Boolean", "TypeBuiltin")
highlight_linker("Character", "Constant")
highlight_linker("Conditional", "Statement")
highlight_linker("Debug", "Constant")
highlight_linker("Define", "Type")
highlight_linker("Delimiter", "Text")
highlight_linker("Exception", "Statement")
highlight_linker("Float", "Number")
highlight_linker("Include", "Type")
highlight_linker("Keyword", "Statement")
highlight_linker("Label", "Type")
highlight_linker("Macro", "Type")
highlight_linker("Method", "Function")
highlight_linker("Number", "Constant")
highlight_linker("Operator", "Statement")
highlight_linker("PreCondit", "Statement")
highlight_linker("Repeat", "Statement")
highlight_linker("SpecialChar", "StatementBuiltin")
highlight_linker("SpecialComment", "StatementBuiltin")
highlight_linker("StorageClass", "Type")
highlight_linker("String", "Constant")
highlight_linker("Structure", "Type")
highlight_linker("Tag", "Statement")
highlight_linker("Typedef", "Type")
highlighter("Underlined", underline, nil, nil, nil)

-- Neovim diagnostic.
highlighter('DiagnosticError', none, none, br_red, none)
highlighter('DiagnosticHint', none, none, br_blue, none)
highlighter('DiagnosticInfo', none, none, br_yellow, none)
highlighter('DiagnosticWarn', none, none, br_orange, none)
highlighter('DiagnosticFloatingError', none, bg_1, br_red, none)
highlighter('DiagnosticFloatingHint', none, bg_1, br_blue, none)
highlighter('DiagnosticFloatingInfo', none, bg_1, br_yellow, none)
highlighter('DiagnosticFloatingWarn', none, bg_1, br_orange, none)
highlighter('DiagnosticUnderlineError', underline, none, br_red, br_red)
highlighter('DiagnosticUnderlineHint', underline, none, br_blue, br_blue)
highlighter('DiagnosticUnderlineInfo', underline, none, br_yellow, br_yellow)
highlighter('DiagnosticUnderlineWarn', underline, none, br_orange, br_orange)
highlight_linker("DiagnosticSignError", "DiagnosticError")
highlight_linker("DiagnosticSignHint", "DiagnosticHint")
highlight_linker("DiagnosticSignInfo", "DiagnosticInfo")
highlight_linker("DiagnosticSignWarn", "DiagnosticWarn")
highlight_linker("DiagnosticVirtualTextError", "DiagnosticError")
highlight_linker("DiagnosticVirtualTextHint", "DiagnosticHint")
highlight_linker("DiagnosticVirtualTextInfo", "DiagnosticInfo")
highlight_linker("DiagnosticVirtualTextWarn", "DiagnosticWarn")
-------------------------------------------------------------------------------
-- SECTION: Filetypes syntax groups highlighting.
-------------------------------------------------------------------------------
-- Diff.
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
-------------------------------------------------------------------------------
-- SECTION: Plugins for Neo(Vim) groups highlighting.
-------------------------------------------------------------------------------
-- coc.nvim: {{{
  if plugin_is_activated('coc') then
    -- Coc markdown.
    highlight_linker("CocMarkdownHeader", "Title")
    highlight_linker("CocMarkdownLink", "Link")
    highlighter("CocBold", bold, nil, nil, nil)
    highlighter("CocItalic", italic, nil, nil, nil)
    -- TODO: It seems currently we don't have strikethrough for nvim_set_hl.
    -- Add strikethrough when for CocStrikeThrough when it's available.
    -- highlighter("CocStrikeThrough", strikethrough, nil, nil, nil)
    highlighter("CocUnderline", underline, nil, nil, nil)

    -- " Coc diagnostics.
    highlight_linker("CocErrorHighlight", "DiagnosticUnderlineError")
    highlight_linker("CocHintHighlight", "DiagnosticUnderlineHint")
    highlight_linker("CocInfoHighlight", "DiagnosticUnderlineInfo")
    highlight_linker("CocWarningHighlight", "DiagnosticUnderlineWarn")
    highlight_linker("CocErrorSign", "DiagnosticError")
    highlight_linker("CocHintSign", "DiagnosticHint")
    highlight_linker("CocInfoSign", "DiagnosticInfo")
    highlight_linker("CocWarningSign", "DiagnosticWarn")
    highlight_linker("CocErrorVirtualText", "DiagnosticError")
    highlight_linker("CocHintVirtualText", "DiagnosticHint")
    highlight_linker("CocInfoVirtualText", "DiagnosticInfo")
    highlight_linker("CocWarningVirtualText", "DiagnosticWarn")
    highlight_linker("CocErrorLine", "None")
    highlight_linker("CocHintLine", "None")
    highlight_linker("CocInfoLine", "None")
    highlight_linker("CocWarningLine", "None")
    highlight_linker("CocDeprecatedHighlight", "Error")
    highlight_linker("CocFadeOut", "Comment")
    highlight_linker("CocUnusedHighlight", "Comment")

    -- Coc document highlight.
    highlight_linker("CocHighlightRead", "Visual")
    highlight_linker("CocHighlightWrite", "Visual")
    highlight_linker("CocHighlightText", "Visual")

    -- Coc float window/popup.
    highlight_linker("CocFloating", "NormalFloat")
    highlight_linker("CocErrorFloat", "DiagnosticFloatingError")
    highlight_linker("CocHintFloat", "DiagnosticFloatingHint")
    highlight_linker("CocInfoFloat", "DiagnosticFloatingInfo")
    highlight_linker("CocWarningFloat", "DiagnosticFloatingWarn")

    -- Coc list.
    highlight_linker("CocListMode", "StatusLine")
    highlight_linker("CocListPath", "StatusLine")
    highlight_linker("CocSelectedLine", "Visual")
    highlight_linker("CocSelectedText", "Visual")

    -- Coc tree view.
    highlight_linker("CocTreeDescription", "Dimmed")
    highlight_linker("CocTreeOpenClose", "Dimmed")
    highlight_linker("CocTreeSelected", "Visual")
    highlight_linker("CocTreeTitle", "Title")

    -- Coc symbol icons.
    highlight_linker("CocSymbolArray", "Identifier")
    highlight_linker("CocSymbolBoolean", "Boolean")
    highlight_linker("CocSymbolClass", "Struct")
    highlight_linker("CocSymbolConstant", "Constant")
    highlight_linker("CocSymbolConstructor", "Struct")
    highlight_linker("CocSymbolDefault", "Text")
    highlight_linker("CocSymbolEnum", "Struct")
    highlight_linker("CocSymbolEnumMember", "Identifier")
    highlight_linker("CocSymbolEvent", "Function")
    highlight_linker("CocSymbolField", "Identifier")
    highlight_linker("CocSymbolFile", "Text")
    highlight_linker("CocSymbolFunction", "Function")
    highlight_linker("CocSymbolInterface", "Struct")
    highlight_linker("CocSymbolKey", "Identifier")
    highlight_linker("CocSymbolMethod", "Method")
    highlight_linker("CocSymbolModule", "Identifier")
    highlight_linker("CocSymbolNamespace", "Struct")
    highlight_linker("CocSymbolNull", "TypeBuiltin")
    highlight_linker("CocSymbolNumber", "Number")
    highlight_linker("CocSymbolObject", "Identifier")
    highlight_linker("CocSymbolOperator", "Operator")
    highlight_linker("CocSymbolPackage", "Identifier")
    highlight_linker("CocSymbolProperty", "Identifier")
    highlight_linker("CocSymbolString", "String")
    highlight_linker("CocSymbolStruct", "Struct")
    highlight_linker("CocSymbolTypeParameter", "Identifier")
    highlight_linker("CocSymbolVariable", "Identifier")

    -- Coc others.
    highlight_linker("CocCodeLens", "Dimmed")
    highlight_linker("CocCursorRange", "Visual")
    highlight_linker("CocHoverRange", "Visual")
    highlight_linker("CocMenuSel", "Visual")
    highlight_linker("CocSelectedRange", "Visual")

    -- Coc semantic highlight.
    if vim.g.coc_default_semantic_highlight_groups == 1 then
      highlight_linker("CocSem_class", "Struct")
      highlight_linker("CocSem_comment", "Comment")
      highlight_linker("CocSem_enum", "Struct")
      highlight_linker("CocSem_enumMember", "Identifier")
      highlight_linker("CocSem_event", "Function")
      highlight_linker("CocSem_function", "Function")
      highlight_linker("CocSem_interface", "Struct")
      highlight_linker("CocSem_keyword", "Keyword")
      highlight_linker("CocSem_macro", "Macro")
      highlight_linker("CocSem_method", "Method")
      highlight_linker("CocSem_modifier", "Struct")
      highlight_linker("CocSem_namespace", "Struct")
      highlight_linker("CocSem_number", "Number")
      highlight_linker("CocSem_operator", "Operator")
      highlight_linker("CocSem_parameter", "Identifier")
      highlight_linker("CocSem_property", "Identifier")
      highlight_linker("CocSem_regexp", "TypeBuiltin")
      highlight_linker("CocSem_string", "String")
      highlight_linker("CocSem_struct", "Struct")
      highlight_linker("CocSem_type", "Type")
      highlight_linker("CocSem_typeParameter", "Identifier")
      highlight_linker("CocSem_variable", "Identifier")
    end
  end
-- }}}
-- copilot.vim: {{{
  if plugin_is_activated('copilot') then
    highlighter("CopilotSuggestion", none, bg_0, dim_0, none)
  end
-- }}}
-- dashboard-nvim: {{{
  if plugin_is_activated('dashboard') == 1 then
    highlight_linker("DashboardHeader", "Accent")
    highlight_linker("DashboardCenter", "Dimmed")
    highlight_linker("DashboardShortCut", "Dimmed")
    highlight_linker("DashboardFooter", "Ignore")
  end
-- }}}
-- fzf.vim: {{{
  if plugin_is_activated('fzf') then
    -- TODO: Convert this to lua.
    -- fzf apply enfocado groups.
    if type(vim.g.fzf_colors) ~= "nil" then
      vim.g.fzf_colors = {
        ["bg"]      = { "bg", "NormalFloat"    },
        ["bg+"]     = { "bg", "Search"         },
        ["border"]  = { "fg", "FloatBorder"    },
        ["fg"]      = { "fg", "NormalFloat"    },
        ["fg+"]     = { "fg", "NormalFloat"    },
        ["header"]  = { "fg", "Title"          },
        ["hl"]      = { "fg", "Accent"         },
        ["hl+"]     = { "fg", "Search"         },
        ["info"]    = { "fg", "DiagnosticInfo" },
        ["marker"]  = { "fg", "NormalFloat"    },
        ["pointer"] = { "fg", "NormalFloat"    },
        ["prompt"]  = { "fg", "Dimmed"         },
        ["spinner"] = { "fg", "DiagnosticInfo" },
      }
    end

    -- Others FZF groups.
    highlighter("Fzf1", bold, bg_2, dim_0, none)
    highlighter("Fzf2", none, bg_1, dim_0, none)
    highlighter("Fzf3", none, bg_0, dim_0, none)
  end
-- }}}
-- nerdtree: {{{
  if plugin_is_activated('nerdtree') then
    highlighter("NERDTreeFile", none, none, dim_0, none)
    highlight_linker("NERDTreeBookmark", "Dimmed")
    highlight_linker("NERDTreeBookmarkHeader", "Title")
    highlight_linker("NERDTreeClosable", "Dimmed")
    highlight_linker("NERDTreeCWD", "Ignore")
    highlight_linker("NERDTreeDir", "Dimmed")
    highlight_linker("NERDTreeDirSlash", "Dimmed")
    highlight_linker("NERDTreeExecFile", "Dimmed")
    highlight_linker("NERDTreeHelp", "Text")
    highlight_linker("NERDTreeHelpCommand", "Text")
    highlight_linker("NERDTreeHelpKey", "Text")
    highlight_linker("NERDTreeHelpTitle", "Title")
    highlight_linker("NERDTreeLink", "Dimmed")
    highlight_linker("NERDTreeLinkDir", "Dimmed")
    highlight_linker("NERDTreeLinkFile", "Dimmed")
    highlight_linker("NERDTreeLinkTarget", "Ignore")
    highlight_linker("NERDTreeOpenable", "Dimmed")
    highlight_linker("NERDTreeRO", "Dimmed")
    highlight_linker("NERDTreeToggleOff", "Dimmed")
    highlight_linker("NERDTreeToggleOn", "Text")
    highlight_linker("NERDTreeUp", "Dimmed")
  end
-- }}}
-- netrw: {{{
  if plugin_is_activated('netrw') then
    highlight_linker("netrwClassify", "Dimmed")
    highlight_linker("netrwCmdSep", "Ignore")
    highlight_linker("netrwComment", "Comment")
    highlight_linker("netrwDir", "Dimmed")
    highlight_linker("netrwExe", "Dimmed")
    highlight_linker("netrwHelpCmd", "Text")
    highlight_linker("netrwLink", "Dimmed")
    highlight_linker("netrwList", "Dimmed")
    highlight_linker("netrwPlain", "Dimmed")
    highlight_linker("netrwSymLink", "Dimmed")
    highlight_linker("netrwVersion", "Ignore")
  end
-- }}}
-- nvim-cmp: {{{
  if plugin_is_activated('cmp') then
    highlight_linker("CmpItemAbbrDefault", "Text")
    highlight_linker("CmpItemAbbrDeprecatedDefault", "Error")
    highlight_linker("CmpItemAbbrMatchDefault", "Accent")
    highlight_linker("CmpItemAbbrMatchFuzzyDefault", "Accent")
    highlight_linker("CmpItemKindClassDefault", "Struct")
    highlight_linker("CmpItemKindColorDefault", "Constant")
    highlight_linker("CmpItemKindConstantDefault", "Constant")
    highlight_linker("CmpItemKindConstructorDefault", "Struct")
    highlight_linker("CmpItemKindDefault", "Text")
    highlight_linker("CmpItemKindEnumDefault", "Struct")
    highlight_linker("CmpItemKindEnumMemberDefault", "Identifier")
    highlight_linker("CmpItemKindEventDefault", "Function")
    highlight_linker("CmpItemKindFieldDefault", "Identifier")
    highlight_linker("CmpItemKindFileDefault", "Text")
    highlight_linker("CmpItemKindFolderDefault", "Text")
    highlight_linker("CmpItemKindFunctionDefault", "Function")
    highlight_linker("CmpItemKindInterfaceDefault", "Struct")
    highlight_linker("CmpItemKindKeywordDefault", "Keyword")
    highlight_linker("CmpItemKindMethodDefault", "Method")
    highlight_linker("CmpItemKindModuleDefault", "Identifier")
    highlight_linker("CmpItemKindOperatorDefault", "Operator")
    highlight_linker("CmpItemKindPropertyDefault", "Identifier")
    highlight_linker("CmpItemKindReferenceDefault", "Accent")
    highlight_linker("CmpItemKindSnippetDefault", "Text")
    highlight_linker("CmpItemKindStructDefault", "Struct")
    highlight_linker("CmpItemKindTextDefault", "Text")
    highlight_linker("CmpItemKindTypeParameterDefault", "Identifier")
    highlight_linker("CmpItemKindUnitDefault", "Constant")
    highlight_linker("CmpItemKindValueDefault", "Constant")
    highlight_linker("CmpItemKindVariableDefault", "Identifier")
    highlight_linker("CmpItemMenuDefault", "NormalFloat")
  end
-- }}}
-- nvim-lspconfig: {{{
  if plugin_is_activated('lsp') then
    highlight_linker("LspCodeLens", "Dimmed")
    highlight_linker("LspCodeLensSeparator", "NonText")
    highlight_linker("LspReferenceRead", "Visual")
    highlight_linker("LspReferenceText", "Visual")
    highlight_linker("LspReferenceWrite", "Visual")
    highlight_linker("LspSignatureActiveParameter", "Accent")
  end
-- }}}
-- nvim-lsp-installer: {{{
  if plugin_is_activated('lsp-installer') then
    highlight_linker("LspInstallerHeader", "Title")
    highlight_linker("LspInstallerServerExpanded", "Text")
    highlight_linker("LspInstallerHeading", "Title")
    highlight_linker("LspInstallerGreen", "Success")
    highlight_linker("LspInstallerVaderSaber", "Text")
    highlight_linker("LspInstallerOrange", "DiagnosticWarn")
    highlight_linker("LspInstallerMuted", "Ignore")
    highlight_linker("LspInstallerLabel", "Text")
    highlight_linker("LspInstallerError", "DiagnosticError")
    highlight_linker("LspInstallerHighlighted", "Search")
    highlight_linker("LspInstallerLink", "Link")
  end
-- }}}
-- nvim-notify: {{{
  if plugin_is_activated('notify') then
    highlighter("NotifyERRORBorder", none, none, br_red, none)
    highlighter("NotifyDEBUGBorder", none, none, dim_0, none)
    highlighter("NotifyINFOBorder", none, none, br_yellow, none)
    highlighter("NotifyTRACEBorder", none, none, br_magenta, none)
    highlighter("NotifyWARNBorder", none, none, br_orange, none)
    highlight_linker("NotifyERRORIcon", "NotifyERRORBorder")
    highlight_linker("NotifyDEBUGIcon", "NotifyDEBUGBorder")
    highlight_linker("NotifyINFOIcon", "NotifyINFOBorder")
    highlight_linker("NotifyTRACEIcon", "NotifyTRACEBorder")
    highlight_linker("NotifyWARNIcon", "NotifyWARNBorder")
    highlight_linker("NotifyERRORTitle", "Title")
    highlight_linker("NotifyDEBUGTitle", "Title")
    highlight_linker("NotifyINFOTitle", "Title")
    highlight_linker("NotifyTRACETitle", "Title")
    highlight_linker("NotifyWARNTitle", "Title")
    highlight_linker("NotifyERRORBody", "Text")
    highlight_linker("NotifyDEBUGBody", "Text")
    highlight_linker("NotifyINFOBody", "Text")
    highlight_linker("NotifyTRACEBody", "Text")
    highlight_linker("NotifyWARNBody", "Text")
    highlight_linker("NotifyLogTime", "Debug")
    highlight_linker("NotifyLogTitle", "Title")
  end
-- }}}
-- nvim-scrollview: {{{
  if plugin_is_activated('scrollview') then
    highlight_linker("ScrollView", "Line")
  end
--}}}
-- nvim-treesitter: {{{
  if plugin_is_activated('treesitter') then
    highlighter("TSLiteral", italic, none, fg_0, none)
    highlighter("TSNote", bold, br_green, bg_1, none)
    highlighter("TSTitle", bold_italic, none, fg_1, none)
    highlight_linker("TSAnnotation", "Dimmed")
    highlight_linker("TSAttribute", "Identifier")
    highlight_linker("TSBoolean", "Boolean")
    highlight_linker("TSCharacter", "Character")
    highlight_linker("TSComment", "Comment")
    highlight_linker("TSConditional", "Conditional")
    highlight_linker("TSConstant", "Constant")
    highlight_linker("TSConstBuiltin", "TypeBuiltin")
    highlight_linker("TSConstMacro", "Type")
    highlight_linker("TSConstructor", "Struct")
    highlight_linker("TSCurrentScope", "Visual")
    highlight_linker("TSDanger", "DiagnosticError")
    highlight_linker("TSDefinition", "Identifier")
    highlight_linker("TSDefinitionUsage", "Accent")
    highlight_linker("TSEnvironment", "Type")
    highlight_linker("TSEnvironmentName", "Identifier")
    highlight_linker("TSException", "Statement")
    highlight_linker("TSField", "Identifier")
    highlight_linker("TSFloat", "Float")
    highlight_linker("TSFunction", "Function")
    highlight_linker("TSFuncBuiltin", "FunctionBuiltin")
    highlight_linker("TSFuncMacro", "Function")
    highlight_linker("TSInclude", "Include")
    highlight_linker("TSKeyword", "Keyword")
    highlight_linker("TSKeywordFunction", "Type")
    highlight_linker("TSKeywordOperator", "Operator")
    highlight_linker("TSKeywordReturn", "Statement")
    highlight_linker("TSLabel", "Label")
    highlight_linker("TSMath", "FunctionBuiltin")
    highlight_linker("TSMethod", "Method")
    highlight_linker("TSNamespace", "Struct")
    highlight_linker("TSNone", "None")
    highlight_linker("TSNumber", "Number")
    highlight_linker("TSOperator", "Operator")
    highlight_linker("TSParameter", "Identifier")
    highlight_linker("TSParameterReference", "Accent")
    highlight_linker("TSProperty", "Identifier")
    highlight_linker("TSPunctDelimiter", "Delimiter")
    highlight_linker("TSPunctBracket", "Delimiter")
    highlight_linker("TSPunctSpecial", "TypeBuiltin")
    highlight_linker("TSRepeat", "Repeat")
    highlight_linker("TSString", "String")
    highlight_linker("TSStringRegex", "TypeBuiltin")
    highlight_linker("TSStringEscape", "TypeBuiltin")
    highlight_linker("TSStringSpecial", "TypeBuiltin")
    highlight_linker("TSSymbol", "Type")
    highlight_linker("TSTag", "Tag")
    highlight_linker("TSTagAttribute", "Identifier")
    highlight_linker("TSTagDelimiter", "Type")
    highlight_linker("TSText", "Text")
    highlight_linker("TSTextReference", "Accent")
    highlight_linker("TSType", "Type")
    highlight_linker("TSTypeBuiltin", "Type")
    highlight_linker("TSURI", "Link")
    highlight_linker("TSVariable", "Identifier")
    highlight_linker("TSVariableBuiltin", "IdentifierBuiltin")
    highlight_linker("TSWarning", "DiagnosticWarn")
    highlighter("TSEmphasis", italic, nil, nil, nil)
    highlighter("TSStrong", bold, nil, nil, nil)
    highlighter("TSUnderline", underline, nil, nil, nil)
    -- TODO: It seems currently we don't have strikethrough for nvim_set_hl.
    -- Add strikethrough when for CocStrikeThrough when it's available.
    -- highlight( TSStrike term=strikethrough cterm=strikethrough gui=strikethrough
  end
-- }}}
-- nvim-tree.lua: {{{
  if plugin_is_activated('tree') then
    highlighter("NvimTreeNormal", none, bg_0, dim_0, none)
    highlighter("NvimTreeNormalNC", none, bg_0, dim_0, none)
    highlight_linker("NvimTreeCursorColumn", "Line")
    highlight_linker("NvimTreeCursorLine", "Line")
    highlight_linker("NvimTreeEmptyFolderName", "Dimmed")
    highlight_linker("NvimTreeEndOfBuffer", "EndOfBuffer")
    highlight_linker("NvimTreeExecFile", "Dimmed")
    highlight_linker("NvimTreeFileDeleted", "DiffDelete")
    highlight_linker("NvimTreeFileDirty", "DiffDelete")
    highlight_linker("NvimTreeFileMerge", "DiffChange")
    highlight_linker("NvimTreeFileNew", "DiffAdd")
    highlight_linker("NvimTreeFileRenamed", "DiffAdd")
    highlight_linker("NvimTreeFileStaged", "DiffChange")
    highlight_linker("NvimTreeFolderIcon", "Dimmed")
    highlight_linker("NvimTreeFolderName", "Dimmed")
    highlight_linker("NvimTreeGitDeleted", "DiffDelete")
    highlight_linker("NvimTreeGitDirty", "DiffDelete")
    highlight_linker("NvimTreeGitIgnored", "Ignore")
    highlight_linker("NvimTreeGitMerge", "DiffChange")
    highlight_linker("NvimTreeGitNew", "DiffAdd")
    highlight_linker("NvimTreeGitRenamed", "DiffAdd")
    highlight_linker("NvimTreeGitStaged", "DiffChange")
    highlight_linker("NvimTreeImageFile", "Dimmed")
    highlight_linker("NvimTreeIndentMarker", "NonText")
    highlight_linker("NvimTreeLspDiagnosticsError", "DiagnosticError")
    highlight_linker("NvimTreeLspDiagnosticsHint", "DiagnosticHint")
    highlight_linker("NvimTreeLspDiagnosticsInformation", "DiagnosticInfo")
    highlight_linker("NvimTreeLspDiagnosticsWarning", "DiagnosticWarn")
    highlight_linker("NvimTreeOpenedFile", "Dimmed")
    highlight_linker("NvimTreeOpenedFolderName", "Dimmed")
    highlight_linker("NvimTreePopup", "NormalFloat")
    highlight_linker("NvimTreeRootFolder", "Ignore")
    highlight_linker("NvimTreeSignColumn", "SignColumn")
    highlight_linker("NvimTreeSpecialFile", "Dimmed")
    highlight_linker("NvimTreeStatusLine", "StatusLine")
    highlight_linker("NvimTreeStatusLineNC", "StatusLineNC")
    highlight_linker("NvimTreeSymlink", "Dimmed")
    highlight_linker("NvimTreeVertSplit", "VertSplit")
    highlight_linker("NvimTreeWindowPicker", "Accent")
  end
-- }}}
-- packer.nvim: {{{
  if plugin_is_activated('packer') then
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
    highlight_linker("packerOutput", "Debug")
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
-- }}}
-- rainbow: {{{
  if plugin_is_activated('rainbow') then
    if enfocado_style == "neon" then
      local rainbow_guifgs   = { violet[1], cyan[1], magenta[1], br_violet[1] }
      local rainbow_ctermfgs = { violet[2], cyan[2], magenta[2], br_violet[2] }
    else
      local rainbow_guifgs   = { blue[1], cyan[1], green[1], br_blue[1] }
      local rainbow_ctermfgs = { blue[2], cyan[2], green[2], br_blue[2] }
    end

    if type(vim.g.rainbow_conf) == "nil" then
      vim.g.rainbow_conf = {}
    end

    if vim.g.rainbow_conf["guifgs"] then
      vim.g.rainbow_conf['guifgs'] = vim.g.rainbow_guifgs
    end

    if vim.g.rainbow_conf["ctermfgs"] then
      vim.g.rainbow_conf['ctermfgs'] = vim.g.rainbow_ctermfgs
    end
  end
--}}}
-- telescope.nvim: {{{
  if plugin_is_activated('telescope') then
    highlighter("TelescopePreviewDate", none, none, blue, none)
    highlighter("TelescopePreviewDirectory", bold, none, br_blue, none)
    highlighter("TelescopePreviewExecute", none, none, green, none)
    highlighter("TelescopePreviewLink", none, none, magenta, none)
    highlighter("TelescopePreviewRead", bold, none, yellow, none)
    highlighter("TelescopePreviewSize", bold, none, green, none)
    highlighter("TelescopePreviewUser", bold, none, br_yellow, none)
    highlighter("TelescopePreviewWrite", bold, none, red, none)
    highlight_linker("TelescopeBorder", "FloatBorder")
    highlight_linker("TelescopeMatching", "Accent")
    highlight_linker("TelescopeMultiSelection", "Visual")
    highlight_linker("TelescopeNormal", "NormalFloat")
    highlight_linker("TelescopePreviewBorder", "FloatBorder")
    highlight_linker("TelescopePreviewMatch", "Search")
    highlight_linker("TelescopePreviewMessage", "DiagnosticInfo")
    highlight_linker("TelescopePreviewMessageFillchar", "DiagnosticInfo")
    highlight_linker("TelescopePreviewNormal", "NormalFloat")
    highlight_linker("TelescopePreviewTitle", "Title")
    highlight_linker("TelescopePromptBorder", "FloatBorder")
    highlight_linker("TelescopePromptCounter", "DiagnosticInfo")
    highlight_linker("TelescopePromptNormal", "NormalFloat")
    highlight_linker("TelescopePromptPrefix", "Text")
    highlight_linker("TelescopePromptTitle", "Title")
    highlight_linker("TelescopeResultsBorder", "FloatBorder")
    highlight_linker("TelescopeResultsDiffAdd", "DiffAdd")
    highlight_linker("TelescopeResultsDiffChange", "DiffChange")
    highlight_linker("TelescopeResultsDiffDelete", "DiffDelete")
    highlight_linker("TelescopeResultsDiffUntracked", "Ignore")
    highlight_linker("TelescopeResultsClass", "Struct")
    highlight_linker("TelescopeResultsComment", "Comment")
    highlight_linker("TelescopeResultsConstant", "Constant")
    highlight_linker("TelescopeResultsField", "Identifier")
    highlight_linker("TelescopeResultsFunction", "Function")
    highlight_linker("TelescopeResultsIdentifier", "Identifier")
    highlight_linker("TelescopeResultsLineNr", "LineNr")
    highlight_linker("TelescopeResultsMethod", "Method")
    highlight_linker("TelescopeResultsNormal", "NormalFloat")
    highlight_linker("TelescopeResultsNumber", "Number")
    highlight_linker("TelescopeResultsOperator", "Operator")
    highlight_linker("TelescopeResultsSpecialComment", "StatementBuiltin")
    highlight_linker("TelescopeResultsStruct", "Struct")
    highlight_linker("TelescopeResultsTitle", "Title")
    highlight_linker("TelescopeResultsVariable", "Identifier")
    highlight_linker("TelescopeSelection", "Visual")
    highlight_linker("TelescopeSelectionCaret", "Visual")
    highlight_linker("TelescopeTitle", "Title")
  end
-- }}}
-- todo-comments.nvim: {{{
  if plugin_is_activated('todo-comments') then
    highlighter("TodoBgFIX", bold, br_red, bg_1, none)
    highlighter("TodoBgHACK", bold, br_yellow, bg_1, none)
    highlighter("TodoBgNOTE", bold, br_green, bg_1, none)
    highlighter("TodoBgPERF", bold, br_magenta, bg_1, none)
    highlighter("TodoBgTODO", bold, br_cyan, bg_1, none)
    highlighter("TodoBgWARN", bold, br_orange, bg_1, none)
    highlighter("TodoFgFIX", none, none, br_red, none)
    highlighter("TodoFgHACK", none, none, br_yellow, none)
    highlighter("TodoFgNOTE", none, none, br_green, none)
    highlighter("TodoFgPERF", none, none, br_magenta, none)
    highlighter("TodoFgTODO", none, none, br_cyan, none)
    highlighter("TodoFgWARN", none, none, br_orange, none)
    highlighter("TodoSignFIX", none, none, br_red, none)
    highlighter("TodoSignHACK", none, none, br_yellow, none)
    highlighter("TodoSignNOTE", none, none, br_green, none)
    highlighter("TodoSignPERF", none, none, br_magenta, none)
    highlighter("TodoSignTODO", none, none, br_cyan, none)
    highlighter("TodoSignWARN", none, none, br_orange, none)
  end
-- }}}
-- vim-floaterm: {{{
  if plugin_is_activated('floaterm') then
    highlight_linker("Floaterm", "NormalFloat")
    highlight_linker("FloatermBorder", "FloatBorder")
    highlight_linker("FloatermNC", "NormalFloat")
  end
-- }}}
-- vim-matchup: {{{
  if plugin_is_activated('matchup') then
    highlight_linker("MatchBackground", "Visual")
    highlight_linker("MatchParenCur", "Visual")
    highlight_linker("MatchWord", "Visual")
    highlight_linker("MatchWordCur", "Visual")
  end
-- }}}
-- vim-plug: {{{
  if plugin_is_activated('plug') then
    highlight_linker("plug1", "Title")
    highlight_linker("plug2", "Accent")
    highlight_linker("plugBracket", "Text")
    highlight_linker("plugCommit", "Text")
    highlight_linker("plugDash", "Dimmed")
    highlight_linker("plugDeleted", "Ignore")
    highlight_linker("plugEdge", "Dimmed")
    highlight_linker("plugError", "DiagnosticError")
    highlight_linker("plugH2", "Title")
    highlight_linker("plugInstall", "Accent")
    highlight_linker("plugMessage", "DiagnosticInfo")
    highlight_linker("plugName", "Text")
    highlight_linker("plugNotLoaded", "Dimmed")
    highlight_linker("plugNumber", "Number")
    highlight_linker("plugPlus", "Text")
    highlight_linker("plugRelDate", "Dimmed")
    highlight_linker("plugSha", "Dimmed")
    highlight_linker("plugStar", "Dimmed")
    highlight_linker("plugTag", "Text")
    highlight_linker("plugUpdate", "Accent")
    highlight_linker("plugX", "Text")
  end
-- }}}
-- vim-signify: {{{
  if plugin_is_activated('signify') then
    if vim.g.signify_line_highlight == 1 then
      highlight_linker("SignifyLineAdd", "DiffAdd")
      highlight_linker("SignifyLineChange", "DiffChange")
      highlight_linker("SignifyLineChangeDelete", "DiffChange")
      highlight_linker("SignifyLineDelete", "DiffDelete")
      highlight_linker("SignifyLineDeleteFirstLine", "DiffDelete")
    end
    highlight_linker("SignifySignAdd", "DiffAdd")
    highlight_linker("SignifySignChange", "DiffChange")
    highlight_linker("SignifySignChangeDelete", "DiffChange")
    highlight_linker("SignifySignDelete", "DiffDelete")
    highlight_linker("SignifySignDeleteFirstLine", "DiffDelete")
  end
-- }}}
-- which-key.nvim: {{{
  if plugin_is_activated('which-key') then
    highlight_linker("WhichKey", "Text")
    highlight_linker("WhichKeyDesc", "Text")
    highlight_linker("WhichKeyFloat", "NormalFloat")
    highlight_linker("WhichKeyGroup", "Dimmed")
    highlight_linker("WhichKeySeparator", "NonText")
    highlight_linker("WhichKeyValue", "Text")
  end
-- }}}
-- vista.vim: {{{
  if plugin_is_activated('vista') then
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
-- }}}
