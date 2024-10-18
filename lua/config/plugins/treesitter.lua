require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "css", "javascript", "php" },
    sync_install = true,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },
}
