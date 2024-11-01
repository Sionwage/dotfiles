return {
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "9.1.1", -- Pin Neorg to the latest stable release
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- config = true,
    config = function()
      require("neorg").setup {
        load = {
            ["core.defaults"] = {}, -- Loads default behaviour
            ["core.concealer"] = {}, -- 
            ["core.dirman"] = { -- Manages Neorg 
              config = {
                workspaces = {
                  notes = "~/notes/notes",
                  work = "~/notes/work",
                  neovim_notes = "~/notes/nv-work",
                },
              default_workspace = "work",
              },
            },
          },
        -- vim.keymap.set("n", "
      }
    end,
}
