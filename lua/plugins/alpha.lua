return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[                                                                                                                ]],
      [[                                                                                                                ]],
      [[                                                                                                                ]],
      [[  ████████                    ██           ██                    ████                         ████████          ]],
      [[         █████                ██           ██                 ████  █████                  ████                 ]],
      [[            ███               ██           ██               ███        ███                ██                    ]],
      [[             ██               ██           ██              ███           ██              ██                     ]],
      [[              ██              ██           ██              ██            ██          █████████████████          ]],
      [[             ██               ██           ██              ██            ██              ██                     ]],
      [[            ███                ██         ██               ██            ██               ██                    ]],
      [[         █████                  ████   ████                ██            ██                ████                 ]],
      [[  ████████                         █████                   ██            ██                   ████████          ]],
      [[                                                                                                                ]],
      [[                                                                                                                ]],
      [[                                                                                                                ]],
    }


    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", "<cmd>ene<CR>"),
      dashboard.button("^ n", " toogle file tree", "<cmd>Neotree toogle left<CR>"),
      dashboard.button("SPC sf", "  Find file", ":Telescope find_files <CR>"),
      dashboard.button("SPC sr", "  Recently used files", ":Telescope oldfiles <CR>"),
      dashboard.button("SPC sg", "  Find text", ":Telescope live_grep <CR>"),
      dashboard.button("SPC wr", "  Restore last session", "<cmd>SessionRestore<CR>"),
      dashboard.button("s", "  Settings", ":e ~/.config/nvim/init.lua <CR>"),
      dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
    }

    alpha.setup(dashboard.opts)

    vim.cmd([[ autocmd User AlphaReady setlocal nofoldenable ]])
  end,
}
