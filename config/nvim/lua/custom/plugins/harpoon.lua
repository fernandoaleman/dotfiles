return {
  "ThePrimeagen/harpoon",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")
    require("telescope").load_extension("harpoon")

    -- set keymaps
    local mappings = {
      ["1"] = {
        function()
          ui.nav_file(1)
        end,
        "harpoon: mark 1",
      },
      ["2"] = {
        function()
          ui.nav_file(2)
        end,
        "harpoon: mark 2",
      },
      ["3"] = {
        function()
          ui.nav_file(3)
        end,
        "harpoon: mark 3",
      },
      ["4"] = {
        function()
          ui.nav_file(4)
        end,
        "harpoon: mark 4",
      },
      ["5"] = {
        function()
          ui.nav_file(5)
        end,
        "harpoon: mark 5",
      },
      ["j"] = {
        name = "harpoon",
        l = { "<cmd>Telescope harpoon marks<CR>", "list of marks" },
        m = { mark.add_file, "mark file with harpoon" },
        n = { ui.nav_next, "goto next harpoon mark" },
        p = { ui.nav_prev, "goto previous harpoon mark" },
      },
    }

    local which_key = require("which-key")

    which_key.register(mappings, which_key_opts)
  end,
}
