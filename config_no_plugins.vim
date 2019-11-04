filetype plugin indent on
syntax on
set nocompatible

" *********************** Configuration générale ************************

" activer la souris
set mouse=a
" Désactiver le bip et la visualbell
set noerrorbells visualbell t_vb=
"autocmd GUIEnter * set visualbell t_vb=
" Ouvrir un nouveau split en bas / à droite par défaut
set splitbelow
set splitright
" Schemas de couleurs 
syntax enable
" Mettre en relief la ligne courante
set cursorline
" Pouvoir quitter un buffer non sauvé
set hidden
" backup files dans un dossier spécifique et plus dans le dossier courant
set backupdir=~/local/config/vimbackup,.
set directory=~/local/config/vimbackup,.
set undodir=~/local/config/vimbackup,.
" divers
set number
" Fuzzy file search (pour les commandes : gf, :find, etc...)
set path+=**
set wildmenu " semble activé par défaut dans neovim mais utile pour vim
" pour créer un nouveau fichier si on navigue vers un fichier inexistant avec
" gf
map gf :e <cfile><CR>


" ************************ Raccourcis claviers **************************
let mapleader=","
" Selection d'un mot
noremap <space> viw
" effacer une ligne en mode insertion
inoremap <c-d> <esc>ddi
" exécuter une commande vimscript sous le curseur en mode normal
nnoremap <leader>x yy:<c-r>"<enter>
" Copier coller dans le presse-papier système
vnoremap <C-S-c> "+y
nnoremap <C-S-c> "+yy
inoremap <C-v> <esc>"+pa
nnoremap <C-v> "+p
" editer le vimrc rapidement
nnoremap <leader>ev :split $MYVIMRC<cr>
" sourcer le vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
"     Déplacement dans les splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
" complétion des noms de fichiers en mode insertion - raccourci plus commode
imap <Tab> <C-X><C-F>
" Sortir du mode insertion
inoremap <c-c> <nop>
inoremap jk <esc>
" Pour agrandir et réduire plus facilement les splits : 
nmap <c-w>+ <c-w>5+<SID>ws
nmap <c-w>- <c-w>5-<SID>ws
nn <script> <SID>ws+ <C-W>5+<SID>ws
nn <script> <SID>ws- <C-W>5-<SID>ws
nmap <SID>ws <Nop> 
nmap <c-w>> <c-w>5><SID>ws
nmap <c-w>< <c-w>5<<SID>ws
nn <script> <SID>ws> <C-W>5><SID>ws
nn <script> <SID>ws< <C-W>5<<SID>ws
nmap <SID>ws <Nop>
" Navigation dans les buffers
"nnoremap <F5> :buffers<CR>:buffer<Space>


" *************************** Abbréviations utiles**************************
"
iabbrev  coding # -*- coding: utf-8 -*-
iabbrev  ipdb import ipdb; ipdb.set_trace()
