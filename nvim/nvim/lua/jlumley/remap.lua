local expr_opts = { noremap = true, silent = true, expr = true }

local function map(mode, lhs, rhs, opts)
local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- rempas for fzf
map("n", "<C-p>", "<cmd>FZF<CR>")

map("n", "<leader>d", ":pu=strftime('%B %d, %Y')<CR>")

-- remaps for coc
map(
    "i",
    "<C-l>",
    [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]],
    expr_opts
)


