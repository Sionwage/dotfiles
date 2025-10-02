return {
  "tadmccorkle/markdown.nvim",
  ft = "markdown", -- or 'event = "VeryLazy"'
  enabled = false,
  opts = {
    -- configuration here or empty for defaults
    mappings = {
      inline_surround_toggle = "gs", -- (string|boolean) toggle inline style
      inline_surround_toggle_line = "gss", -- (string|boolean) line-wise toggle inline style
      inline_surround_delete = "ds", -- (string|boolean) delete emphasis surrounding cursor
      inline_surround_change = "cs", -- (string|boolean) change emphasis surrounding cursor
      link_add = false, -- (string|boolean) add link
      link_follow = false, -- (string|boolean) follow link
      go_curr_heading = "]c", -- (string|boolean) set cursor to current section heading
      go_parent_heading = "]p", -- (string|boolean) set cursor to parent section heading
      go_next_heading = false, -- (string|boolean) set cursor to next section heading
      go_prev_heading = false, -- (string|boolean) set cursor to previous section heading
    },
  },
}
