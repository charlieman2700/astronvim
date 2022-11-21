local dashboard = require("alpha.themes.dashboard")
return {
  layout = {
    { type = "padding", val = 10 },
    {
      type = "text",
      val = {
        " ██████╗ ██████╗ ██████╗  █████╗ ███╗   ███╗    ██████╗ ███████╗ ██████╗ ",
        "██╔════╝██╔═══██╗██╔══██╗██╔══██╗████╗ ████║    ██╔══██╗██╔════╝██╔═══██╗",
        "██║     ██║   ██║██████╔╝███████║██╔████╔██║    ██║  ██║█████╗  ██║   ██║",
        "██║     ██║   ██║██╔══██╗██╔══██║██║╚██╔╝██║    ██║  ██║██╔══╝  ██║   ██║",
        "╚██████╗╚██████╔╝██║  ██║██║  ██║██║ ╚═╝ ██║    ██████╔╝███████╗╚██████╔╝",
        " ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝    ╚═════╝ ╚══════╝ ╚═════╝ ",
      },
      opts = { position = "center", hl = "Type" },
    },

    { type = "padding", val = 4 },

    {
      type = "group",
      val = {
        astronvim.alpha_button("LDR f f", "  Find File  "),
        astronvim.alpha_button("LDR f o", "  Recents  "),
        astronvim.alpha_button("LDR S f", "  Sessions  "),
        astronvim.alpha_button("LDR f n", "  New File  "),
        astronvim.alpha_button("LDR f m", "  Bookmarks  "),
        astronvim.alpha_button("LDR S l", "  Last Session  "),
      },
      opts = { spacing = 1 , hl = "Include"},
    },
  }
}


