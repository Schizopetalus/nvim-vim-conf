
"Plug 'python-mode/python-mode'
"Plug 'scrooloose/nerdtree'



"***************************  NERDTREE **********************************
"
"
nnoremap <c-n>t :NERDTree<cr>
nnoremap <c-n>c :NERDTreeClose<cr>
nnoremap <c-n> <nop>
let NERDTreeIgnore = ['\.pyc$']


"***************************  Python-mode ******************************
" Pour désactiver l'autocomplétion qui fout un peu la grouille
"
let g:pymode_rope_complete_on_dot = 0
"let g:pymode_rope_goto_definition_cmd = 'tabedit'
" Pas de fenêtre ouverte lors de la vérification syntaxique
let g:pymode_lint_cwindow=0
" On ne veut pas les erreurs pep8 lors de la vérification syntaxique
let g:pymode_lint_checkers=['pyflakes','mccabe']
" commande utile : permet de fermer / réafficher le buffer courant (quand le
" vérification syntaxique se désamorce mystérieusement)
nnoremap rr :let courant=@% <cr>:bdelete % <cr>:execute "e "courant<cr>
" Configuration de pymode
let g:pymode_rope_autoimport = 1
