local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    require("alpha.term")

    local header = {
      type = "terminal",
      command = "cat | " .. os.getenv("HOME") .. "/.config/nvim/lua/custom/starry_night.sh",
      width = 64,
      height = 20,
      opts = {
        position = "center",
        hl = "String",
      },
    }

    local buttons = {
      type = "group",
      val = {
        { type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
        { type = "padding", val = 1 },
        dashboard.button("<leader>ff", " " .. " Find file", ":Telescope find_files <CR>"),
        dashboard.button("<leader>fw", " " .. " Live grep", ":Telescope live_grep <CR>"),
      },
    }

    local top_padding = vim.fn.max({ 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) })

    local config = {
      layout = {
        { type = "padding", val = top_padding },
        header,
        { type = "padding", val = 14 },
        { type = "padding", val = 2 },
        buttons,
      },
    }

return alpha.setup(config)
