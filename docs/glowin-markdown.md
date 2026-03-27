# Vim Markdown Setup

## Plugins

Requires [glow](https://github.com/charmbracelet/glow) (`brew install glow`).

Add to `.vimrc` inside `plug#begin()` block — `tabular` must come before `vim-markdown`:

```vim
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'drewipson/glowing-vim-markdown-preview'
```

Add config after `plug#end()`:

```vim
" vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_new_list_item_indent = 2

" glowing-vim-markdown-preview
nnoremap <Leader>mp :MarkdownPreviewToggle<CR>
```

Then install:

```
:PlugInstall
```

## Fix: glowing-vim-markdown-preview not loading

The plugin drops its `.vim` file at the repo root instead of a `plugin/` subfolder,
so Vim never auto-sources it. Fix manually after `:PlugInstall`:

```bash
mkdir ~/.vim/plugin
cp ~/.vim/plugged/glowing-vim-markdown-preview/markdown-preview.vim ~/.vim/plugin/
```

Restart Vim. `:MarkdownPreviewToggle` (or `<Leader>mp`) should now work.

## Usage

| Command        | Action                                |
| -------------- | ------------------------------------- |
| `<Leader>mp`   | Toggle glow preview in vertical split |
| `q`            | Close preview pane                    |
| `:Toc`         | Open navigable table of contents      |
| `:TableFormat` | Auto-align table under cursor         |
| `]]` / `[[`    | Jump to next/previous header          |
