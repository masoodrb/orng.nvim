" orng.nvim plugin file
" This file allows the plugin to be detected by plugin managers

if exists('g:loaded_orng')
  finish
endif
let g:loaded_orng = 1

" Set colorscheme automatically if desired
" let g:orng_auto_enable = 1

" if get(g:, 'orng_auto_enable', 0)
"   colorscheme orng
" endif