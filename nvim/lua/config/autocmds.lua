-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Flutter
local function setup_flutter()
  vim.keymap.set("n", ";f", function() end, {
    desc = "Flutter options",
    buffer = true,
  })

  vim.keymap.set("n", ";fr", [[<cmd>FlutterRun<CR>]], {
    desc = "Run flutter",
    buffer = true,
  })

  vim.keymap.set("n", ";fs", [[<cmd>FlutterQuit<CR>]], {
    desc = "Stop flutter",
    buffer = true,
  })

  vim.keymap.set("n", ";fR", [[<cmd>FlutterRestart<CR>]], {
    desc = "Restart flutter",
    buffer = true,
  })

  vim.keymap.set("n", ";fa", [[<cmd>FlutterReanalyze<CR>]], {
    desc = "Reanalyze dart",
    buffer = true,
  })

  vim.keymap.set("n", ";fg", [[<cmd>FlutterPubGet<CR>]], {
    desc = "Get flutter packages",
    buffer = true,
  })

  vim.keymap.set("n", ";fd", [[<cmd>FlutterDevices<CR>]], {
    desc = "Select a device to run flutter",
    buffer = true,
  })

  vim.keymap.set("n", ";fe", [[<cmd>FlutterEmulators<CR>]], {
    desc = "Select a emulator to run flutter",
    buffer = true,
  })

  vim.keymap.set("n", ";fo", [[<cmd>FlutterOutlineToggle<cr>]], {
    desc = "Toggle flutter outline",
    buffer = true,
  })

  vim.keymap.set("n", ";fc", [[<cmd>FlutterLogClear<cr>]], {
    desc = "Clear flutter logs",
    buffer = true,
  })

  -- Telescope
  vim.keymap.set("n", "<leader><space>", function()
    require("telescope.builtin").find_files({ search_dirs = { "./lib" } })
  end, {
    buffer = true,
  })

  vim.keymap.set("n", "<leader>ft", function()
    require("telescope.builtin").find_files({ search_dirs = { "./test" } })
  end, {
    desc = "Find Files in Test Folder",
    buffer = true,
  })

  vim.keymap.set("n", ";fv", "", {
    callback = function()
      local telescope = require("telescope")
      telescope.extensions.flutter.fvm()
    end,
    desc = "Change version of flutter sdk (fvm)",
    buffer = true,
  })
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "dart",
  callback = setup_flutter,
})
