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
