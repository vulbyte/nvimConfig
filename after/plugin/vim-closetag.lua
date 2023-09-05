-- Filenames like *.xml, *.html, *.xhtml, *.svelte
-- These are the file extensions where this plugin is enabled.
vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml,*.svelte'

-- Filenames like *.xml, *.xhtml, *.svelte
-- This will make the list of non-closing tags self-closing in the specified files.
vim.g.closetag_xhtml_filenames = '*.xhtml,*.jsx,*.svelte'

-- Filetypes like xml, html, xhtml, svelte
-- These are the file types where this plugin is enabled.
vim.g.closetag_filetypes = 'html,xhtml,phtml,svelte'

-- Filetypes like xml, xhtml, svelte
-- This will make the list of non-closing tags self-closing in the specified files.
vim.g.closetag_xhtml_filetypes = 'xhtml,jsx,svelte'

-- Dict
-- Disables auto-close if not in a "valid" region (based on filetype)
vim.g.closetag_regions = {
    ['typescript.tsx'] = 'jsxRegion,tsxRegion',
    ['javascript.jsx'] = 'jsxRegion',
    ['typescriptreact'] = 'jsxRegion,tsxRegion',
    ['javascriptreact'] = 'jsxRegion',
    ['svelte'] = 'svelteRegion',
}

-- Shortcut for closing tags, default is '>'
vim.g.closetag_shortcut = '>'

-- Add > at the current position without closing the current tag, default is ''
vim.g.closetag_close_shortcut = '<leader>>'
