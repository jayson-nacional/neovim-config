require("rose-pine").setup({
    extend_background_behind_borders = true,

    enable = {
        terminal = true,
    },

    styles = {
        bold = false,
        italic = false,
        transparency = true,
    },
})

vim.cmd("colorscheme rose-pine")
-- vim.cmd("colorscheme rose-pine-main")
-- vim.cmd("colorscheme rose-pine-moon")
-- vim.cmd("colorscheme rose-pine-dawn")
