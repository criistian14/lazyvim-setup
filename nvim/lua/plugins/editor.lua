-- https://github.com/craftzdog/dotfiles-public/blob/master/.config/nvim/lua/plugins/editor.lua

return {
  -- {
  --   "echasnovski/mini.hipatterns",
  --   event = "BufReadPre",
  --   opts = {
  --     highlighters = {
  --       hsl_color = {
  --         pattern = "hsl%(%d+,? %d+,? %d+%)",
  --         group = function(_, match)
  --           local utils = require("config.gentleman.utils")
  --           local h, s, l = match:match("hsl%((%d+),? (%d+),? (%d+)%)")
  --           h, s, l = tonumber(h), tonumber(s), tonumber(l)
  --           local hex_color = utils.hslToHex(h, s, l)
  --           return MiniHipatterns.compute_hex_color_group(hex_color, "bg")
  --         end,
  --       },
  --     },
  --   },
  -- },

  {
    "dinhhuy258/git.nvim",
    event = "BufReadPre",
    opts = {
      keymaps = {
        -- Open blame window
        blame = "<Leader>gb",
        -- Open file/folder in git repository
        browse = "<Leader>go",
      },
    },
  },
}
