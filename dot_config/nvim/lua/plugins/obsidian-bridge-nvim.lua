-- https://github.com/oflisback/obsidian-bridge.nvim
return {
  "oflisback/obsidian-bridge.nvim",
  event = {
    "BufReadPre *.md",
    "BufNewFile *.md",
  },
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    obsidian_server_address = "https://127.0.0.1:27124",
    cert_path = "~/.ssl/obsidian.crt",
  },
}
