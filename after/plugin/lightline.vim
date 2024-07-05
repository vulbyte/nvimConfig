" list of color themes: https://github.com/itchyny/lightline.vim/blob/master/colorscheme.md
let g:lightline = {
      \ 'colorscheme': 'vulbytesTheme',
      \ 'active': {
      \   'left': [ 
          \             [ 'mode', 'paste' ],
          \             [ 'readonly', 'filename', 'modified', 'vulbyte' ] 
      \          ]
      \ },
      \   'right': [
            \           ['lineinfo'],
            \           ['percent'],
            \           ['fileformat', 'fileencoding', 'filetype', 'vulbyte']
        \          ],
      \ 'component': {
      \   'vulbyte': '🦊 vulbyte'
      \ },
      \ }
