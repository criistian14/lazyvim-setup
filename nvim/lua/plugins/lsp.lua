return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = true,
    opts = {
      decorations = {
        statusline = {
          -- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
          -- this will show the current version of the flutter app from the pubspec.yaml file
          app_version = true,
          -- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
          -- this will show the currently running device if an application was started with a specific
          -- device
          -- device = false,
          -- set to true to be able use the 'flutter_tools_decorations.project_config' in your statusline
          -- this will show the currently selected project configuration
          -- project_config = false,
        },
      },
      debugger = { -- integrate with nvim dap + install dart code debugger
        enabled = true,
        -- run_via_dap = false, -- use dap instead of a plenary job to run flutter apps
        -- if empty dap will not stop on any exceptions, otherwise it will stop on those specified
        -- see |:help dap.set_exception_breakpoints()| for more info
        exception_breakpoints = {},
        -- register_configurations = function(paths)
        --   require("dap").configurations.dart = {
        --     <put here config that you would find in .vscode/launch.json>
        --   }
        -- end,
      },
      -- fvm = true, -- takes priority over path, uses <workspace>/.fvm/flutter_sdk if enabled
      -- widget_guides = {
      --   enabled = false,
      -- },
      -- dev_log = {
      --   enabled = true,
      --   notify_errors = false, -- if there is an error whilst running then notify the user
      --   open_cmd = "tabedit", -- command to use to open the log buffer
      -- },
      lsp = {
        color = { -- show the derived colours for dart variables
          enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
          -- background = true, -- highlight the background
          -- background_color = nil, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
          -- foreground = true, -- highlight the foreground
          -- virtual_text = true, -- show the highlight using virtual text
          -- virtual_text_str = "■", -- the virtual text character to highlight
        },
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              format = {
                braces = "k&r",
              },
            },
          },
        },
      },
    },
  },
}
