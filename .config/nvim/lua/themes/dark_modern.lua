local M = {}

M.base_16 = {
  base00 = "#1F1F1F",
  base01 = "#181818",
  base02 = "#2B2B2B",
  base03 = "#3C3C3C",

  -- Foreground / muted text
  base04 = "#868686",
  base05 = "#CCCCCC",
  base06 = "#D7D7D7",
  base07 = "#FFFFFF",

  -- Syntax
  base08 = "#F44747", -- red
  base09 = "#CE9178", -- orange / strings
  base0A = "#DCDCAA", -- yellow / functions
  base0B = "#6A9955", -- green / comments
  base0C = "#4EC9B0", -- cyan / types
  base0D = "#569CD6", -- blue / keywords
  base0E = "#C586C0", -- purple
  base0F = "#D7BA7D", -- special
}

M.base_30 = { -- Main UI colours
  white = "#FFFFFF",

  darker_black = "#181818",
  black = "#1F1F1F", -- editor background
  black2 = "#202020",

  one_bg = "#1F1F1F",
  one_bg2 = "#222222",
  one_bg3 = "#2B2B2B",

  -- Borders / muted UI
  grey = "#3C3C3C",
  grey_fg = "#616161",
  grey_fg2 = "#868686",
  light_grey = "#9D9D9D",

  -- Syntax colours
  red = "#F44747",
  baby_pink = "#F85149",
  pink = "#C586C0",

  line = "#2B2B2B",

  green = "#6A9955",
  green1 = "#2EA043",
  vibrant_green = "#B5CEA8",

  blue = "#569CD6",
  nord_blue = "#4FC1FF",

  yellow = "#DCDCAA",
  sun = "#D7BA7D",

  purple = "#C586C0",
  dark_purple = "#646695",

  teal = "#4EC9B0",

  orange = "#CE9178",
  cyan = "#9CDCFE",

  -- NvChad UI
  statusline_bg = "#181818",
  lightbg = "#2B2B2B",
  pmenu_bg = "#313131",
  folder_bg = "#569CD6",
}

M.polish_hl = {
  treesitter = {
    ["@comment"] = {
      fg = M.base_30.green,
    },
    ["@module"] = {
      fg = M.base_30.teal,
    },
    ["@function"] = {
      fg = M.base_30.yellow,
    },
    ["@function.method"] = {
      fg = M.base_30.yellow,
    },
    ["@constant.macro"] = {
      fg = M.base_30.blue,
    },
    ["@constant"] = {
      fg = M.base_30.blue,
    },
    ["@string"] = {
      fg = M.base_30.orange,
    },
    ["@property"] = {
      fg = M.base_30.cyan,
    },
    ["@variable"] = {
      fg = M.base_30.cyan,
    },
    ["@variable.parameter"] = {
      fg = M.base_30.cyan,
    },
    ["@variable.builtin"] = {
      fg = M.base_30.blue,
    },
    ["@contant.builtin"] = {
      fg = M.base_30.blue,
    },
    ["@variable.member"] = {
      fg = M.base_30.cyan,
    },
    ["@number"] = {
      fg = M.base_30.vibrant_green,
    },
    -- Rust
    ["@lsp.type.const.rust"] = {
      fg = M.base_30.nord_blue,
    },
    ["@lsp.type.static.rust"] = {
      fg = M.base_30.nord_blue,
    },
    ["@lsp.type.typeAlias.rust"] = {
      fg = M.base_30.teal,
    },
    ["@lsp.type.selfTypeKeyword.rust"] = {
      fg = M.base_30.blue,
    },
    ["@lsp.type.enumMember.rust"] = {
      fg = M.base_30.nord_blue,
    },
    ["@lsp.type.keyword.rust"] = {
      fg = M.base_30.purple,
    },
  },
  syntax = {
    Comment = {
      fg = M.base_30.green,
    },
    Import = {
      fg = M.base_30.blue,
    },
    Keyword = {
      fg = M.base_30.blue,
    },
    Function = {
      fg = M.base_30.yellow,
    },
    String = {
      fg = M.base_30.orange,
    },
    Macro = {
      fg = M.base_30.blue,
    },
    Type = {
      fg = M.base_30.teal,
    },
    Number = {
      fg = M.base_30.vibrant_green,
    },
    StorageClass = {
      fg = M.base_30.blue,
    },
    Delimiter = {
      fg = M.base_16.base06,
    },
    Character = {
      fg = M.base_30.vibrant_green,
    },
    DiagnosticUnnecessary = {},
    Boolean = {
      fg = M.base_30.blue,
    },
    Statement = {
      fg = M.base_30.blue,
    },
    Define = {
      fg = M.base_30.teal,
    },
    Identifier = {
      fg = M.base_30.blue,
    },
    Exception = {
      fg = M.base_30.purple,
    },
    Identifier = {
      fg = M.base_30.teal,
    },
    -- Rust
    rustSigil = {
      fg = M.base_30.white,
    },
    rustEscape = {
      fg = M.base_30.sun,
    },
    rustSelf = {
      fg = M.base_30.blue,
    },
    rustAttributeParenthesizedParens = {
      fg = M.base_16.base06,
    },
    -- Python
    pythonConstant = {
      fg = M.base_30.blue,
    },
    pythonOperator = {
      fg = M.base_30.blue,
    },
    pythonBoolean = {
      fg = M.base_30.blue,
    },
    -- Json
    jsonKeyword = {
      fg = M.base_30.teal,
    },
  },
}

M.type = "dark"

return M
