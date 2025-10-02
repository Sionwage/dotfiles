return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" }, -- if you use the mini.nvim suite
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    code = {
      sign = true,
      width = "block",
      right_pad = 1,
    },
    heading = {
      -- Useful context to have when evaluating values.
      -- | level    | the number of '#' in the heading marker         |
      -- | sections | for each level how deeply nested the heading is |

      -- Turn on / off heading icon & background rendering.
      enabled = true,
      -- Additional modes to render headings.
      render_modes = false,
      -- Turn on / off atx heading rendering.
      atx = true,
      -- Turn on / off setext heading rendering.
      setext = true,
      -- Turn on / off sign column related rendering.
      sign = true,
      -- Replaces '#+' of 'atx_h._marker'.
      -- Output is evaluated depending on the type.
      -- | function | `value(context)`              |
      -- | string[] | `cycle(value, context.level)` |
      icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
      -- Determines how icons fill the available space.
      -- | right   | '#'s are concealed and icon is appended to right side                      |
      -- | inline  | '#'s are concealed and icon is inlined on left side                        |
      -- | overlay | icon is left padded with spaces and inserted on left hiding additional '#' |
      position = "overlay",
      -- Added to the sign column if enabled.
      -- Output is evaluated by `cycle(value, context.level)`.
      signs = { "󰫎 " },
      -- Width of the heading background.
      -- | block | width of the heading text |
      -- | full  | full width of the window  |
      -- Can also be a list of the above values evaluated by `clamp(value, context.level)`.
      width = "full",
      -- Amount of margin to add to the left of headings.
      -- Margin available space is computed after accounting for padding.
      -- If a float < 1 is provided it is treated as a percentage of available window space.
      -- Can also be a list of numbers evaluated by `clamp(value, context.level)`.
      left_margin = 0,
      -- Amount of padding to add to the left of headings.
      -- Output is evaluated using the same logic as 'left_margin'.
      left_pad = 0,
      -- Amount of padding to add to the right of headings when width is 'block'.
      -- Output is evaluated using the same logic as 'left_margin'.
      right_pad = 0,
      -- Minimum width to use for headings when width is 'block'.
      -- Can also be a list of integers evaluated by `clamp(value, context.level)`.
      min_width = 0,
      -- Determines if a border is added above and below headings.
      -- Can also be a list of booleans evaluated by `clamp(value, context.level)`.
      border = false,
      -- Always use virtual lines for heading borders instead of attempting to use empty lines.
      border_virtual = false,
      -- Highlight the start of the border using the foreground highlight.
      border_prefix = false,
      -- Used above heading for border.
      above = "▄",
      -- Used below heading for border.
      below = "▀",
      -- Highlight for the heading icon and extends through the entire line.
      -- Output is evaluated by `clamp(value, context.level)`.
      backgrounds = {
        "RenderMarkdownH1Bg",
        "RenderMarkdownH2Bg",
        "RenderMarkdownH3Bg",
        "RenderMarkdownH4Bg",
        "RenderMarkdownH5Bg",
        "RenderMarkdownH6Bg",
      },
      -- Highlight for the heading and sign icons.
      -- Output is evaluated using the same logic as 'backgrounds'.
      foregrounds = {
        "RenderMarkdownH1",
        "RenderMarkdownH2",
        "RenderMarkdownH3",
        "RenderMarkdownH4",
        "RenderMarkdownH5",
        "RenderMarkdownH6",
      },
      -- Define custom heading patterns which allow you to override various properties based on
      -- the contents of a heading.
      -- The key is for healthcheck and to allow users to change its values, value type below.
      -- | pattern    | matched against the heading text @see :h lua-patterns |
      -- | icon       | optional override for the icon                        |
      -- | background | optional override for the background                  |
      -- | foreground | optional override for the foreground                  |
      custom = {},
    },
    callout = {
      -- Callouts are a special instance of a 'block_quote' that start with a 'shortcut_link'.
      -- The key is for healthcheck and to allow users to change its values, value type below.
      -- | raw        | matched against the raw text of a 'shortcut_link', case insensitive |
      -- | rendered   | replaces the 'raw' value when rendering                             |
      -- | highlight  | highlight for the 'rendered' text and quote markers                 |
      -- | quote_icon | optional override for quote.icon value for individual callout       |
      -- | category   | optional metadata useful for filtering                              |

      note = {
        raw = "[!NOTE]",
        rendered = "󰋽 Note",
        highlight = "RenderMarkdownInfo",
        category = "github",
      },
      tip = {
        raw = "[!TIP]",
        rendered = "󰌶 Tip",
        highlight = "RenderMarkdownSuccess",
        category = "github",
      },
      important = {
        raw = "[!IMPORTANT]",
        rendered = "󰅾 Important",
        highlight = "RenderMarkdownHint",
        category = "github",
      },
      warning = {
        raw = "[!WARNING]",
        rendered = "󰀪 Warning",
        highlight = "RenderMarkdownWarn",
        category = "github",
      },
      caution = {
        raw = "[!CAUTION]",
        rendered = "󰳦 Caution",
        highlight = "RenderMarkdownError",
        category = "github",
      },
      -- Obsidian: https://help.obsidian.md/Editing+and+formatting/Callouts
      abstract = {
        raw = "[!ABSTRACT]",
        rendered = "󰨸 Abstract",
        highlight = "RenderMarkdownInfo",
        category = "obsidian",
      },
      summary = {
        raw = "[!SUMMARY]",
        rendered = "󰨸 Summary",
        highlight = "RenderMarkdownInfo",
        category = "obsidian",
      },
      tldr = {
        raw = "[!TLDR]",
        rendered = "󰨸 Tldr",
        highlight = "RenderMarkdownInfo",
        category = "obsidian",
      },
      info = {
        raw = "[!INFO]",
        rendered = "󰋽 Info",
        highlight = "RenderMarkdownInfo",
        category = "obsidian",
      },
      todo = {
        raw = "[!TODO]",
        rendered = "󰗡 Todo",
        highlight = "RenderMarkdownInfo",
        category = "obsidian",
      },
      hint = {
        raw = "[!HINT]",
        rendered = "󰌶 Hint",
        highlight = "RenderMarkdownSuccess",
        category = "obsidian",
      },
      success = {
        raw = "[!SUCCESS]",
        rendered = "󰄬 Success",
        highlight = "RenderMarkdownSuccess",
        category = "obsidian",
      },
      check = {
        raw = "[!CHECK]",
        rendered = "󰄬 Check",
        highlight = "RenderMarkdownSuccess",
        category = "obsidian",
      },
      done = {
        raw = "[!DONE]",
        rendered = "󰄬 Done",
        highlight = "RenderMarkdownSuccess",
        category = "obsidian",
      },
      question = {
        raw = "[!QUESTION]",
        rendered = "󰘥 Question",
        highlight = "RenderMarkdownWarn",
        category = "obsidian",
      },
      help = {
        raw = "[!HELP]",
        rendered = "󰘥 Help",
        highlight = "RenderMarkdownWarn",
        category = "obsidian",
      },
      faq = {
        raw = "[!FAQ]",
        rendered = "󰘥 Faq",
        highlight = "RenderMarkdownWarn",
        category = "obsidian",
      },
      attention = {
        raw = "[!ATTENTION]",
        rendered = "󰀪 Attention",
        highlight = "RenderMarkdownWarn",
        category = "obsidian",
      },
      failure = {
        raw = "[!FAILURE]",
        rendered = "󰅖 Failure",
        highlight = "RenderMarkdownError",
        category = "obsidian",
      },
      fail = {
        raw = "[!FAIL]",
        rendered = "󰅖 Fail",
        highlight = "RenderMarkdownError",
        category = "obsidian",
      },
      missing = {
        raw = "[!MISSING]",
        rendered = "󰅖 Missing",
        highlight = "RenderMarkdownError",
        category = "obsidian",
      },
      danger = {
        raw = "[!DANGER]",
        rendered = "󱐌 Danger",
        highlight = "RenderMarkdownError",
        category = "obsidian",
      },
      error = {
        raw = "[!ERROR]",
        rendered = "󱐌 Error",
        highlight = "RenderMarkdownError",
        category = "obsidian",
      },
      bug = {
        raw = "[!BUG]",
        rendered = "󰨰 Bug",
        highlight = "RenderMarkdownError",
        category = "obsidian",
      },
      example = {
        raw = "[!EXAMPLE]",
        rendered = "󰉹 Example",
        highlight = "RenderMarkdownHint",
        category = "obsidian",
      },
      quote = {
        raw = "[!QUOTE]",
        rendered = "󱆨 Quote",
        highlight = "RenderMarkdownQuote",
        category = "obsidian",
      },
      cite = {
        raw = "[!CITE]",
        rendered = "󱆨 Cite",
        highlight = "RenderMarkdownQuote",
        category = "obsidian",
      },
    },
    code = {
      enabled = true,
      render_modes = false,
      sign = true,
      conceal_delimiters = true,
      language = true,
      position = "left",
      language_icon = true,
      language_name = true,
      language_info = true,
      language_pad = 0,
      disable_background = { "diff" },
      width = "full",
      left_margin = 0,
      left_pad = 0,
      right_pad = 0,
      min_width = 0,
      border = "hide",
      language_border = "█",
      language_left = "",
      language_right = "",
      above = "▄",
      below = "▀",
      inline = true,
      inline_left = "",
      inline_right = "",
      inline_pad = 0,
      highlight = "RenderMarkdownCode",
      highlight_info = "RenderMarkdownCodeInfo",
      highlight_language = nil,
      highlight_border = "RenderMarkdownCodeBorder",
      highlight_fallback = "RenderMarkdownCodeFallback",
      highlight_inline = "RenderMarkdownCodeInline",
      style = "full",
    },
    completions = { lsp = { enabled = true } },
    checkbox = {
      -- Checkboxes are a special instance of a 'list_item' that start with a 'shortcut_link'.
      -- There are two special states for unchecked & checked defined in the markdown grammar.

      -- Turn on / off checkbox state rendering.
      enabled = true,
      -- Additional modes to render checkboxes.
      render_modes = false,
      -- Render the bullet point before the checkbox.
      bullet = false,
      -- Padding to add to the right of checkboxes.
      right_pad = 1,
      unchecked = {
        -- Replaces '[ ]' of 'task_list_marker_unchecked'.
        icon = "󰄱 ",
        -- Highlight for the unchecked icon.
        highlight = "RenderMarkdownUnchecked",
        -- Highlight for item associated with unchecked checkbox.
        scope_highlight = nil,
      },
      checked = {
        -- Replaces '[x]' of 'task_list_marker_checked'.
        icon = "󰱒 ",
        -- Highlight for the checked icon.
        highlight = "RenderMarkdownChecked",
        -- Highlight for item associated with checked checkbox.
        scope_highlight = nil,
      },
        -- Define custom checkbox states, more involved, not part of the markdown grammar.
        -- As a result this requires neovim >= 0.10.0 since it relies on 'inline' extmarks.
        -- The key is for healthcheck and to allow users to change its values, value type below.
        -- | raw             | matched against the raw text of a 'shortcut_link'           |
        -- | rendered        | replaces the 'raw' value when rendering                     |
        -- | highlight       | highlight for the 'rendered' icon                           |
        -- | scope_highlight | optional highlight for item associated with custom checkbox |
        -- stylua: ignore
        custom = {
            todo = { raw = '[-]', rendered = '󰥔 ', highlight = 'RenderMarkdownTodo', scope_highlight = nil },
        },
    },
  },
}
