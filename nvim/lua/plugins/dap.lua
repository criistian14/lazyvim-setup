return {
  {
    "rcarriga/nvim-dap-ui",
    opts = {
      layouts = {
        {
          elements = {
            { id = "scopes", size = 0.25 },
            "breakpoints",
            "stacks",
            -- "watches",
          },
          size = 40, -- 40 columns
          position = "left",
        },
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = function(_, opts)
          opts.ensure_installed = opts.ensure_installed or {}
          table.insert(opts.ensure_installed, "dart-debug-adapter")
        end,
      },
    },
    opts = function()
      local dap = require("dap")

      -- Dart / Flutter
      dap.adapters.dart = {
        type = "executable",
        command = "dart",
        args = { "debug_adapter" },
      }
      dap.adapters.flutter = {
        type = "executable",
        command = "flutter",
        args = { "debug_adapter" },
      }
      dap.configurations.dart = {
        {
          type = "dart",
          request = "launch",
          name = "Launch dart",
          dartSdkPath = "${workspaceFolder}/.fvm/flutter_sdk/bin/dart",
          flutterSdkPath = "${workspaceFolder}/.fvm/flutter_sdk/bin/flutter",
          program = "${workspaceFolder}/lib/main.dart",
          cwd = "${workspaceFolder}",
        },
        {
          type = "flutter",
          request = "launch",
          name = "Launch flutter",
          dartSdkPath = "${workspaceFolder}/.fvm/flutter_sdk/bin/dart",
          flutterSdkPath = "${workspaceFolder}/.fvm/flutter_sdk/bin/flutter",
          program = "${workspaceFolder}/lib/main.dart",
          cwd = "${workspaceFolder}",
        },
      }
    end,
  },
}
