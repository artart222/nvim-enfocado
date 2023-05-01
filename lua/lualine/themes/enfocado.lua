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

-- The Selenized black color scheme is declared.
if vim.go.background == "dark" then
  colors = {
    bg_0 = "#181818",
    bg_1 = "#252525",
    bg_2 = "#3B3B3B",
    dim_0 = "#777777",
    fg_0 = "#B9B9B9",
    fg_1 = "#DEDEDE",
    red = "#ED4A46",
    green = "#70B433",
    yellow = "#DBB32D",
    blue = "#368AEB",
    magenta = "#EB6EB7",
    cyan = "#3FC5B7",
    orange = "#E67F43",
    violet = "#A580E2",
    br_red = "#FF5E56",
    br_green = "#83C746",
    br_yellow = "#EFC541",
    br_blue = "#4F9CFE",
    br_magenta = "#FF81CA",
    br_cyan = "#56D8C9",
    br_orange = "#FA9153",
    br_violet = "#B891F5",
    black = "#000000",
  }
else
  colors = {
    bg_0 = "#ffffff",
    bg_1 = "#ebebeb",
    bg_2 = "#cdcdcd",
    dim_0 = "#878787",
    fg_0 = "#474747",
    fg_1 = "#282828",
    red = "#d6000c",
    green = "#1d9700",
    yellow = "#c49700",
    blue = "#0064e4",
    magenta = "#dd0f9d",
    cyan = "#00ad9c",
    orange = "#d04a00",
    violet = "#7f51d6",
    br_red = "#bf0000",
    br_green = "#008400",
    br_yellow = "#af8500",
    br_blue = "#0054cf",
    br_magenta = "#c7008b",
    br_cyan = "#009a8a",
    br_orange = "#ba3700",
    br_violet = "#B891F5",
    black = "#000000",
  }
end

return {
  normal = {
    a = { fg = colors.dim_0, bg = colors.bg_2, gui = "bold" },
    b = { fg = colors.dim_0, bg = colors.bg_1 },
    c = { fg = colors.dim_0, bg = colors.bg_1 },
  },
  insert = {
    a = { fg = colors.bg_0, bg = colors.cyan, gui = "bold" },
    b = { fg = colors.cyan, bg = colors.bg_1 },
    c = { fg = colors.dim_0, bg = colors.bg_1 },
  },
  visual = {
    a = { fg = colors.bg_0, bg = colors.violet, gui = "bold" },
    b = { fg = colors.violet, bg = colors.bg_1 },
    c = { fg = colors.dim_0, bg = colors.bg_1 },
  },
  replace = {
    a = { fg = colors.bg_0, bg = colors.cyan, gui = "bold" },
    b = { fg = colors.cyan, bg = colors.bg_1 },
    c = { fg = colors.dim_0, bg = colors.bg_1 },
  },
  command = {
    a = { fg = colors.bg_0, bg = colors.green, gui = "bold" },
    b = { fg = colors.green, bg = colors.bg_1 },
    c = { fg = colors.dim_0, bg = colors.bg_1 },
  },
  inactive = {
    a = { fg = colors.bg_2, bg = colors.bg_1, gui = "bold" },
    b = { fg = colors.bg_2, bg = colors.bg_1 },
  },
}
