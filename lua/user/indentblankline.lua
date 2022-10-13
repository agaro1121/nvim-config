require("indent_blankline").setup {
    char = "",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    show_trailing_blankline_indent = false,
}
vim.cmd([[ highlight IndentBlanklineIndent1 guibg=#282c34 gui=nocombine ]])
vim.cmd([[ highlight IndentBlanklineIndent2 guibg=#3b4048 gui=nocombine ]])
