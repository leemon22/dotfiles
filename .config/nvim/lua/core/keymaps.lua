-- espacio para que sea la tecla leader
vim.g.mapleader = ' '

-- funcion que simplifica la sintaxis
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- keymaps

-- keymaps telescope
map('n', '<Leader>ff', ':Telescope find_files <CR>')		-- buscar fichero
map('n', '<Leader>ft', ':Telescope live_grep <CR>')			-- buscar palabra

-- keymaps autocompletado similar a vscode (codigo generado por una IA, a ver si me sorprende)
map('i', '<TAB>', 'pumvisible() ? "\\<C-n>" : "\\<TAB>"', {expr = true})						-- navegar por las sugerencias
map('i', '<S-TAB>', 'pumvisible() ? "\\<C-p>" : "\\<S-TAB>"', {expr = true})					-- navegar por las sugerencias
map('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "\\<CR>"', {expr = true})				-- elegir sugerencia
map('i', '<C-Space>', 'coc#refresh()', {expr = true})											-- actualizar sugerencias

-- keymaps plugin comentarios
map('n', '<Leader>c', ':CommentToggle<CR>')
map('v', '<Leader>c', ':CommentToggle<CR>')

-- keymaps para el arbol
map('n', '<Leader>tt', ':NvimTreeToggle<CR>')
map('n', '<Leader>tf', ':NvimTreeFindFile<CR>')
map('n', '<Leader>tc', ':NvimTreeCollapse<CR>')
