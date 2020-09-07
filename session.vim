let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
cnoremap <expr> <C-H> has("gui_running") ? "\\:promptrepl\" : "\"
inoremap <expr> <C-H> has("gui_running") ? "\\:promptrepl\" : "\"
cnoremap <expr> <C-F> has("gui_running") ? "\\:promptfind\" : "\\/"
inoremap <expr> <C-F> has("gui_running") ? "\\:promptfind\" : "\\/"
cnoremap <C-F4> c
inoremap <C-F4> c
cnoremap <C-Tab> w
inoremap <C-Tab> w
cnoremap <C-A> gggHG
inoremap <C-A> gggHG
cnoremap <M-Space> :simalt ~
inoremap <M-Space> :simalt ~
inoremap <C-Y> 
inoremap <C-Z> u
inoremap <C-S> :updategi
cmap <S-Insert> +
cmap <C-V> +
inoremap <C-U> u
imap <S-Insert> 
xnoremap  ggVG
snoremap  gggHG
onoremap  gggHG
nnoremap  gggHG
vnoremap  "+y
noremap <expr>  has("gui_running") ? ":promptfind\" : "/"
nnoremap <expr>  has("gui_running") ? ":promptrepl\" : "\"
noremap  
vnoremap <silent>  ygvs=PerlRefactor_refactor()
nnoremap  :update
vnoremap  :update
onoremap  :update
nmap  "+gP
omap  "+gP
vnoremap  "+x
noremap  
noremap  u
cnoremap   :simalt ~
inoremap   :simalt ~
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
vmap <silent> + :call EQAS_Align('vmap', {'cursor':1} )
nmap <silent> ++ :call EQAS_Align('nmap', {'cursor':1, 'paragraph':1} ):%s/\s\+$//``
nmap <silent> + :call EQAS_Align('nmap', {'cursor':1} ):%s/\s\+$//``
vmap <silent> = :call EQAS_Align('vmap')
nmap <silent> == :call EQAS_Align('nmap', {'paragraph':1} )
nmap <silent> = :call EQAS_Align('nmap')
vmap <silent> DM :call ForAllMatches('delete', {'visual':1, 'inverse':1})
nmap <silent> DM :     call ForAllMatches('delete', {'inverse':1})
map Q gq
vmap <silent> YM :call ForAllMatches('yank',   {'visual':1, 'inverse':1})
nmap <silent> YM :     call ForAllMatches('yank',   {'inverse':1})
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
vmap <silent> dm :call ForAllMatches('delete', {'visual':1})
nmap <silent> dm :     call ForAllMatches('delete', {})
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vmap <silent> ym :call ForAllMatches('yank',   {'visual':1})
nmap <silent> ym :     call ForAllMatches('yank',   {})
nnoremap <SNR>54_: :=v:count ? v:count : ''
nmap <S-Insert> "+gP
nmap <C-V> "+gP
nnoremap <C-S> :update
nnoremap <C-Tab> w
nnoremap <C-F4> c
nnoremap <SNR>53_: :=v:count ? v:count : ''
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v')m'gv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
vnoremap <silent> <C-R> ygvs=PerlRefactor_refactor()
nnoremap <expr> <C-H> has("gui_running") ? ":promptrepl\" : "\"
noremap <expr> <C-F> has("gui_running") ? ":promptfind\" : "/"
onoremap <C-F4> c
vnoremap <C-F4> c
onoremap <C-Tab> w
vnoremap <C-Tab> w
xnoremap <C-A> ggVG
snoremap <C-A> gggHG
onoremap <C-A> gggHG
nnoremap <C-A> gggHG
noremap <M-Space> :simalt ~
noremap <C-Y> 
noremap <C-Z> u
vnoremap <C-S> :update
onoremap <C-S> :update
noremap <C-Q> 
vmap <S-Insert> 
omap <C-V> "+gP
vnoremap <C-C> "+y
vnoremap <BS> d
vnoremap <C-X> "+x
vmap <C-Del> "*d
vnoremap <S-Del> "+x
vnoremap <C-Insert> "+y
omap <S-Insert> "+gP
cnoremap  gggHG
inoremap  gggHG
cnoremap <expr>  has("gui_running") ? "\\:promptfind\" : "\\/"
inoremap <expr>  has("gui_running") ? "\\:promptfind\" : "\\/"
cnoremap <expr>  has("gui_running") ? "\\:promptrepl\" : "\"
inoremap <expr>  has("gui_running") ? "\\:promptrepl\" : "\"
inoremap  :updategi
inoremap  u
cmap  +
inoremap  
inoremap  u
noremap   :simalt ~
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set backup
set backupdir=C:\\Temp\\vimbackup
set backupskip=C:Tempvimbackup*
set diffexpr=MyDiff()
set directory=C:\\Temp\\vimbackup
set display=truncate
set guioptions=egmrLT
set helplang=En
set history=200
set hlsearch
set incsearch
set keymodel=startsel,stopsel
set langnoremap
set nolangremap
set mouse=nvi
set nrformats=bin,hex
set ruler
set runtimepath=~/vimfiles,~\\.vim\\plugged\\vim-rumrunner,C:\\Program\ Files\ (x86)\\Vim/vimfiles,C:\\Program\ Files\ (x86)\\Vim\\vim82,C:\\Program\ Files\ (x86)\\Vim\\vim82\\pack\\dist\\opt\\matchit,C:\\Program\ Files\ (x86)\\Vim/vimfiles/after,~/vimfiles/after
set scrolloff=5
set selection=exclusive
set selectmode=mouse,key
set shiftround
set ttimeout
set ttimeoutlen=100
set undodir=C:\\Temp\\vimbackup
set undofile
set whichwrap=b,s,<,>,[,]
set wildmenu
set window=60
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~\Documents\perl\playTk
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd main.pl
set stal=2
tabnew
tabnew
tabrewind
edit main.pl
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <C-D> u:call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"i")gi
inoremap <buffer> <silent> <C-J> u=Perl_JumpCtrlJ()
inoremap <buffer> <silent> <F9> :call Perl_Debugger()
inoremap <buffer> <silent> <S-F1> :call Perl_perldoc()
inoremap <buffer> <S-F9> :PerlScriptArguments 
inoremap <buffer> <silent> <C-F9> :call Perl_Run()
inoremap <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
nnoremap <buffer> <silent>  :call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"n")
nnoremap <buffer> <silent> <NL> i=Perl_JumpCtrlJ()
nmap <buffer> <silent> * :let @/ = TPV_locate_perl_var()
nnoremap <buffer> <silent> \ry :call Perl_Perltidy("n")
nnoremap <buffer> <silent> \rh :call Perl_Hardcopy("n")
vnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
vnoremap <buffer> <silent> \ntw :call mmtemplates#wizard#SetupWizard(g:Perl_Templates)
nnoremap <buffer> <silent> \ntw :call mmtemplates#wizard#SetupWizard(g:Perl_Templates)
vnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
vnoremap <buffer> <silent> \ntc :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,2)
nnoremap <buffer> <silent> \ntc :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,2)
vnoremap <buffer> <silent> \ntp :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,1)
nnoremap <buffer> <silent> \ntp :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,1)
vnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,0)
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,0)
vnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Help.English")
nnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Help.English")
vnoremap <buffer> <silent> \ft :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"File Tests")
nnoremap <buffer> <silent> \ft :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"File Tests")
vnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
nnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
vnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences","v")
nnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
vnoremap <buffer> <silent> \pi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.item")
nnoremap <buffer> <silent> \pi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.item")
vnoremap <buffer> <silent> \pob :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.over, back","v")
nnoremap <buffer> <silent> \pob :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.over, back")
vnoremap <buffer> <silent> \ph3 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head3")
nnoremap <buffer> <silent> \ph3 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head3")
vnoremap <buffer> <silent> \ph2 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head2")
nnoremap <buffer> <silent> \ph2 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head2")
vnoremap <buffer> <silent> \ph1 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head1")
nnoremap <buffer> <silent> \ph1 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head1")
vnoremap <buffer> <silent> \pbt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin text, end","v")
nnoremap <buffer> <silent> \pbt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin text, end")
vnoremap <buffer> <silent> \pbm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin man, end","v")
nnoremap <buffer> <silent> \pbm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin man, end")
vnoremap <buffer> <silent> \pbh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin html, end","v")
nnoremap <buffer> <silent> \pbh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin html, end")
vnoremap <buffer> <silent> \pfc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.for, cut","v")
nnoremap <buffer> <silent> \pfc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.for, cut")
vnoremap <buffer> <silent> \ppc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.pod, cut","v")
nnoremap <buffer> <silent> \ppc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.pod, cut")
vnoremap <buffer> <silent> \xms :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.metasymbols","v")
nnoremap <buffer> <silent> \xms :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.metasymbols")
vnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex","v")
nnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
vnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
nnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
vnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
nnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
vnoremap <buffer> <silent> \vue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.use English")
nnoremap <buffer> <silent> \vue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.use English")
vnoremap <buffer> <silent> \vps :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
nnoremap <buffer> <silent> \vps :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
vnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
nnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
vnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
nnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
vnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
nnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
vnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
nnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
vnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
nnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
vnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
nnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
vnoremap <buffer> <silent> \ise :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDERR")
nnoremap <buffer> <silent> \ise :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDERR")
vnoremap <buffer> <silent> \iso :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDOUT")
nnoremap <buffer> <silent> \iso :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDOUT")
vnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDIN")
nnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDIN")
vnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe","v")
nnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file","v")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file","v")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
vnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
nnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
vnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine","v")
nnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
vnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
nnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
vnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
nnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
vnoremap <buffer> <silent> \iha :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
nnoremap <buffer> <silent> \iha :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
vnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
nnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
vnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
nnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
vnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
nnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
vnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
nnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
vnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
nnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
vnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
nnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
vnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
nnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while","v")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
vnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until","v")
nnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
vnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else","v")
nnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
vnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless","v")
nnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else","v")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
vnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif","v")
nnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else","v")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if","v")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
vnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach","v")
nnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for","v")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while","v")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
vnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
vnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
nnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
vnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
nnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
vnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
nnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
vnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
nnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
noremap <buffer> <silent> \rpco :call Perl_PerlcriticOptionsInput()
noremap <buffer> <silent> \rpcv :call Perl_PerlcriticVerbosityInput()
noremap <buffer> <silent> \rpcs :call Perl_PerlcriticSeverityInput()
noremap <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
noremap <buffer> <silent> \rk :call Perl_Settings(0)
vnoremap <buffer> <silent> \rh :call Perl_Hardcopy("v")
onoremap <buffer> <silent> \rh :call Perl_Hardcopy("n")
noremap <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
noremap <buffer> <silent> \rpc :call Perl_Perlcritic()
vnoremap <buffer> <silent> \ry :call Perl_Perltidy("v")
onoremap <buffer> <silent> \ry :call Perl_Perltidy("n")
noremap <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
noremap <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
noremap <buffer> <silent> \rd :call Perl_Debugger()
noremap <buffer> \rw :PerlSwitches 
noremap <buffer> \ra :PerlScriptArguments 
noremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
noremap <buffer> <silent> \rr :call Perl_Run()
nnoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
nnoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
nnoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
nnoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
nnoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
nnoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
nnoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
nnoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
nnoremap <buffer> <silent> \podt :call Perl_POD('text')
nnoremap <buffer> <silent> \podm :call Perl_POD('man')
nnoremap <buffer> <silent> \podh :call Perl_POD('html')
nnoremap <buffer> <silent> \pod :call Perl_PodCheck()
vnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "v" )
nnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "n" )
nnoremap <buffer> <silent> \xmm :call perlsupportregex#Perl_RegexMatchSeveral( )
nnoremap <buffer> <silent> \xm :call perlsupportregex#Perl_RegexVisualize( )
vnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "v" )'>j
vnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "String", "v" )'>j
vnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "Regexp", "v" )'>j
nnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "n" )
nnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "String", "n" )j
nnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "Regexp", "n" )j
nnoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
nnoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
vnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("writemarked")
nnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
nnoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
nnoremap <buffer> <silent> \cub :call Perl_UncommentBlock()
vnoremap <buffer> <silent> \cb :call Perl_CommentBlock("v")
nnoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
vnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cs :call Perl_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
nnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
noremap <buffer> <silent> \cl :call Perl_EndOfLineComment()
noremap <buffer> <silent> \hp :call Perl_HelpPerlsupport()
noremap <buffer> <silent> \h :call Perl_perldoc()
noremap <buffer> \rcm :MakeFile 
noremap <buffer> \rma :MakeCmdlineArgs 
noremap <buffer> <silent> \rmc :Make clean
noremap <buffer> <silent> \rm :Make
vmap <buffer> <silent> cv :silent call TPV_rename_perl_var('visual')gv
nmap <buffer> <silent> cv :silent call TPV_rename_perl_var('normal')
nmap <buffer> <silent> gd :let @/ = TPV_locate_perl_var_decl()
nmap <buffer> <silent> tt :let b:track_perl_var_locked = ! b:track_perl_var_locked:call TPV_track_perl_var()
vnoremap <buffer> { s{}kp=iB
nnoremap <buffer> <silent> <C-D> :call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"n")
nnoremap <buffer> <silent> <C-J> i=Perl_JumpCtrlJ()
noremap <buffer> <silent> <F9> :call Perl_Debugger()
noremap <buffer> <silent> <S-F1> :call Perl_perldoc()
noremap <buffer> <S-F9> :PerlScriptArguments 
noremap <buffer> <silent> <C-F9> :call Perl_Run()
noremap <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
inoremap <buffer> <silent>  u:call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"i")gi
inoremap <buffer> <silent> <NL> u=Perl_JumpCtrlJ()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
inoremap <buffer> <silent> \ntw :call mmtemplates#wizard#SetupWizard(g:Perl_Templates)
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
inoremap <buffer> <silent> \ntc :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,2)
inoremap <buffer> <silent> \ntp :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,1)
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,0)
inoremap <buffer> <silent> \he u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Help.English","i")
inoremap <buffer> <silent> \ft u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"File Tests","i")
inoremap <buffer> <silent> \nxs u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex","i")
inoremap <buffer> <silent> \njt u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags","i")
inoremap <buffer> <silent> \pm u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences","i")
inoremap <buffer> <silent> \pi u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.item","i")
inoremap <buffer> <silent> \pob u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.over, back","i")
inoremap <buffer> <silent> \ph3 u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head3","i")
inoremap <buffer> <silent> \ph2 u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head2","i")
inoremap <buffer> <silent> \ph1 u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head1","i")
inoremap <buffer> <silent> \pbt u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin text, end","i")
inoremap <buffer> <silent> \pbm u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin man, end","i")
inoremap <buffer> <silent> \pbh u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin html, end","i")
inoremap <buffer> <silent> \pfc u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.for, cut","i")
inoremap <buffer> <silent> \ppc u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.pod, cut","i")
inoremap <buffer> <silent> \xms u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.metasymbols","i")
inoremap <buffer> <silent> \xex u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex","i")
inoremap <buffer> <silent> \xup u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property","i")
inoremap <buffer> <silent> \xpc u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes","i")
inoremap <buffer> <silent> \vue u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.use English","i")
inoremap <buffer> <silent> \vps u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals","i")
inoremap <buffer> <silent> \vr u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp","i")
inoremap <buffer> <silent> \vio u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO","i")
inoremap <buffer> <silent> \vid u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs","i")
inoremap <buffer> <silent> \vf u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle","i")
inoremap <buffer> <silent> \ve u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors","i")
inoremap <buffer> <silent> \vb u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics","i")
inoremap <buffer> <silent> \ise u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDERR","i")
inoremap <buffer> <silent> \iso u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDOUT","i")
inoremap <buffer> <silent> \isi u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDIN","i")
inoremap <buffer> <silent> \ipi u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe","i")
inoremap <buffer> <silent> \io u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file","i")
inoremap <buffer> <silent> \ii u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file","i")
inoremap <buffer> <silent> \ip u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print","i")
inoremap <buffer> <silent> \isu u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine","i")
inoremap <buffer> <silent> \it u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate","i")
inoremap <buffer> <silent> \is u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute","i")
inoremap <buffer> <silent> \im u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match","i")
inoremap <buffer> <silent> \ir u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex","i")
inoremap <buffer> <silent> \iha u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment","i")
inoremap <buffer> <silent> \ih u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash","i")
inoremap <buffer> <silent> \iaa u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment","i")
inoremap <buffer> <silent> \ia u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array","i")
inoremap <buffer> <silent> \idd u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list","i")
inoremap <buffer> <silent> \ida u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment","i")
inoremap <buffer> <silent> \id u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar","i")
inoremap <buffer> <silent> \swh u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when","i")
inoremap <buffer> <silent> \sg u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given","i")
inoremap <buffer> <silent> \sw u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while","i")
inoremap <buffer> <silent> \st u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until","i")
inoremap <buffer> <silent> \sue u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else","i")
inoremap <buffer> <silent> \su u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless","i")
inoremap <buffer> <silent> \sie u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else","i")
inoremap <buffer> <silent> \sei u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif","i")
inoremap <buffer> <silent> \se u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else","i")
inoremap <buffer> <silent> \si u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if","i")
inoremap <buffer> <silent> \sfe u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach","i")
inoremap <buffer> <silent> \sf u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for","i")
inoremap <buffer> <silent> \sd u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while","i")
inoremap <buffer> <silent> \cma u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros","i")
inoremap <buffer> <silent> \ck u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments","i")
inoremap <buffer> <silent> \ct u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time","i")
inoremap <buffer> <silent> \cd u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date","i")
inoremap <buffer> <silent> \chpo u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod","i")
inoremap <buffer> <silent> \cht u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t","i")
inoremap <buffer> <silent> \chpm u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm","i")
inoremap <buffer> <silent> \chpl u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl","i")
inoremap <buffer> <silent> \cme u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method","i")
inoremap <buffer> <silent> \cfu u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function","i")
inoremap <buffer> <silent> \cfr u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame","i")
inoremap <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
inoremap <buffer> <silent> \rk :call Perl_Settings(0)
inoremap <buffer> <silent> \rh :call Perl_Hardcopy("n")
inoremap <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
inoremap <buffer> <silent> \rpc :call Perl_Perlcritic()
inoremap <buffer> <silent> \ry :call Perl_Perltidy("n")
inoremap <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
inoremap <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
inoremap <buffer> \rw :PerlSwitches 
inoremap <buffer> \ra :PerlScriptArguments 
inoremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
inoremap <buffer> <silent> \rr :call Perl_Run()
inoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
inoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
inoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
inoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
inoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
inoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
inoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
inoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
inoremap <buffer> <silent> \podt :call Perl_POD('text')
inoremap <buffer> <silent> \podm :call Perl_POD('man')
inoremap <buffer> <silent> \podh :call Perl_POD('html')
inoremap <buffer> <silent> \pod :call Perl_PodCheck()
inoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
inoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
inoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
inoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
inoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
inoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
inoremap <buffer> <silent> \cl :call Perl_EndOfLineComment()
inoremap <buffer> <silent> \hp :call Perl_HelpPerlsupport()
inoremap <buffer> <silent> \h :call Perl_perldoc()
inoremap <buffer> \rcm :MakeFile 
inoremap <buffer> \rma :MakeCmdlineArgs 
inoremap <buffer> <silent> \rmc :Make clean
inoremap <buffer> <silent> \rm :Make
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal completeslash=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=[^A-Za-z_]
setlocal dictionary=~/vimfiles/perl-support/wordlists/perl.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'perl'
setlocal filetype=perl
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=crqol
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=\\<\\(use\\|require\\)\\>
setlocal includeexpr=substitute(substitute(substitute(v:fname,'::','/','g'),'->*','',''),'$','.pm','')
setlocal indentexpr=GetPerlIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,0=,0),0],0=or,0=and
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,:,$,%,@-@
setlocal keywordprg=perldoc\ -f
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=.,,,C:/Perl64/site/lib,C:/Perl64/lib,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'perl'
setlocal syntax=perl
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 55 - ((54 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
55
normal! 0
tabnext
edit t\planet.t
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 113 + 117) / 235)
exe 'vert 2resize ' . ((&columns * 121 + 117) / 235)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <C-D> u:call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"i")gi
inoremap <buffer> <silent> <C-J> u=Perl_JumpCtrlJ()
inoremap <buffer> <silent> <F9> :call Perl_Debugger()
inoremap <buffer> <silent> <S-F1> :call Perl_perldoc()
inoremap <buffer> <S-F9> :PerlScriptArguments 
inoremap <buffer> <silent> <C-F9> :call Perl_Run()
inoremap <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
nnoremap <buffer> <silent>  :call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"n")
nnoremap <buffer> <silent> <NL> i=Perl_JumpCtrlJ()
nmap <buffer> <silent> * :let @/ = TPV_locate_perl_var()
nnoremap <buffer> <silent> \ry :call Perl_Perltidy("n")
nnoremap <buffer> <silent> \rh :call Perl_Hardcopy("n")
vnoremap <buffer> <silent> \rh :call Perl_Hardcopy("v")
vnoremap <buffer> <silent> \ry :call Perl_Perltidy("v")
vnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
vnoremap <buffer> <silent> \ntw :call mmtemplates#wizard#SetupWizard(g:Perl_Templates)
nnoremap <buffer> <silent> \ntw :call mmtemplates#wizard#SetupWizard(g:Perl_Templates)
vnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
vnoremap <buffer> <silent> \ntc :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,2)
nnoremap <buffer> <silent> \ntc :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,2)
vnoremap <buffer> <silent> \ntp :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,1)
nnoremap <buffer> <silent> \ntp :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,1)
vnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,0)
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,0)
vnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Help.English")
nnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Help.English")
vnoremap <buffer> <silent> \ft :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"File Tests")
nnoremap <buffer> <silent> \ft :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"File Tests")
vnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
nnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
vnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences","v")
nnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
vnoremap <buffer> <silent> \pi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.item")
nnoremap <buffer> <silent> \pi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.item")
vnoremap <buffer> <silent> \pob :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.over, back","v")
nnoremap <buffer> <silent> \pob :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.over, back")
vnoremap <buffer> <silent> \ph3 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head3")
nnoremap <buffer> <silent> \ph3 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head3")
vnoremap <buffer> <silent> \ph2 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head2")
nnoremap <buffer> <silent> \ph2 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head2")
vnoremap <buffer> <silent> \ph1 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head1")
nnoremap <buffer> <silent> \ph1 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head1")
vnoremap <buffer> <silent> \pbt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin text, end","v")
nnoremap <buffer> <silent> \pbt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin text, end")
vnoremap <buffer> <silent> \pbm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin man, end","v")
nnoremap <buffer> <silent> \pbm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin man, end")
vnoremap <buffer> <silent> \pbh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin html, end","v")
nnoremap <buffer> <silent> \pbh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin html, end")
vnoremap <buffer> <silent> \pfc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.for, cut","v")
nnoremap <buffer> <silent> \pfc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.for, cut")
vnoremap <buffer> <silent> \ppc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.pod, cut","v")
nnoremap <buffer> <silent> \ppc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.pod, cut")
vnoremap <buffer> <silent> \xms :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.metasymbols","v")
nnoremap <buffer> <silent> \xms :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.metasymbols")
vnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex","v")
nnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
vnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
nnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
vnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
nnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
vnoremap <buffer> <silent> \vue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.use English")
nnoremap <buffer> <silent> \vue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.use English")
vnoremap <buffer> <silent> \vps :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
nnoremap <buffer> <silent> \vps :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
vnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
nnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
vnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
nnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
vnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
nnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
vnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
nnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
vnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
nnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
vnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
nnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
vnoremap <buffer> <silent> \ise :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDERR")
nnoremap <buffer> <silent> \ise :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDERR")
vnoremap <buffer> <silent> \iso :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDOUT")
nnoremap <buffer> <silent> \iso :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDOUT")
vnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDIN")
nnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDIN")
vnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe","v")
nnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file","v")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file","v")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
vnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
nnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
vnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine","v")
nnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
vnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
nnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
vnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
nnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
vnoremap <buffer> <silent> \iha :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
nnoremap <buffer> <silent> \iha :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
vnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
nnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
vnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
nnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
vnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
nnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
vnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
nnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
vnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
nnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
vnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
nnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
vnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
nnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while","v")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
vnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until","v")
nnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
vnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else","v")
nnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
vnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless","v")
nnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else","v")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
vnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif","v")
nnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else","v")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if","v")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
vnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach","v")
nnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for","v")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while","v")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
vnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
vnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
nnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
vnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
nnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
vnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
nnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
vnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
nnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
noremap <buffer> <silent> \rpco :call Perl_PerlcriticOptionsInput()
noremap <buffer> <silent> \rpcv :call Perl_PerlcriticVerbosityInput()
noremap <buffer> <silent> \rpcs :call Perl_PerlcriticSeverityInput()
noremap <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
noremap <buffer> <silent> \rk :call Perl_Settings(0)
onoremap <buffer> <silent> \rh :call Perl_Hardcopy("n")
noremap <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
noremap <buffer> <silent> \rpc :call Perl_Perlcritic()
onoremap <buffer> <silent> \ry :call Perl_Perltidy("n")
noremap <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
noremap <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
noremap <buffer> <silent> \rd :call Perl_Debugger()
noremap <buffer> \rw :PerlSwitches 
noremap <buffer> \ra :PerlScriptArguments 
noremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
noremap <buffer> <silent> \rr :call Perl_Run()
nnoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
nnoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
nnoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
nnoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
nnoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
nnoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
nnoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
nnoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
nnoremap <buffer> <silent> \podt :call Perl_POD('text')
nnoremap <buffer> <silent> \podm :call Perl_POD('man')
nnoremap <buffer> <silent> \podh :call Perl_POD('html')
nnoremap <buffer> <silent> \pod :call Perl_PodCheck()
vnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "v" )
nnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "n" )
nnoremap <buffer> <silent> \xmm :call perlsupportregex#Perl_RegexMatchSeveral( )
nnoremap <buffer> <silent> \xm :call perlsupportregex#Perl_RegexVisualize( )
vnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "v" )'>j
vnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "String", "v" )'>j
vnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "Regexp", "v" )'>j
nnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "n" )
nnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "String", "n" )j
nnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "Regexp", "n" )j
nnoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
nnoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
vnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("writemarked")
nnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
nnoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
nnoremap <buffer> <silent> \cub :call Perl_UncommentBlock()
vnoremap <buffer> <silent> \cb :call Perl_CommentBlock("v")
nnoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
vnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cs :call Perl_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
nnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
noremap <buffer> <silent> \cl :call Perl_EndOfLineComment()
noremap <buffer> <silent> \hp :call Perl_HelpPerlsupport()
noremap <buffer> <silent> \h :call Perl_perldoc()
noremap <buffer> \rcm :MakeFile 
noremap <buffer> \rma :MakeCmdlineArgs 
noremap <buffer> <silent> \rmc :Make clean
noremap <buffer> <silent> \rm :Make
vmap <buffer> <silent> cv :silent call TPV_rename_perl_var('visual')gv
nmap <buffer> <silent> cv :silent call TPV_rename_perl_var('normal')
nmap <buffer> <silent> gd :let @/ = TPV_locate_perl_var_decl()
nmap <buffer> <silent> tt :let b:track_perl_var_locked = ! b:track_perl_var_locked:call TPV_track_perl_var()
vnoremap <buffer> { s{}kp=iB
nnoremap <buffer> <silent> <C-D> :call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"n")
nnoremap <buffer> <silent> <C-J> i=Perl_JumpCtrlJ()
noremap <buffer> <silent> <F9> :call Perl_Debugger()
noremap <buffer> <silent> <S-F1> :call Perl_perldoc()
noremap <buffer> <S-F9> :PerlScriptArguments 
noremap <buffer> <silent> <C-F9> :call Perl_Run()
noremap <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
inoremap <buffer> <silent>  u:call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"i")gi
inoremap <buffer> <silent> <NL> u=Perl_JumpCtrlJ()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
inoremap <buffer> <silent> \ntw :call mmtemplates#wizard#SetupWizard(g:Perl_Templates)
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
inoremap <buffer> <silent> \ntc :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,2)
inoremap <buffer> <silent> \ntp :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,1)
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,0)
inoremap <buffer> <silent> \he u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Help.English","i")
inoremap <buffer> <silent> \ft u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"File Tests","i")
inoremap <buffer> <silent> \nxs u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex","i")
inoremap <buffer> <silent> \njt u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags","i")
inoremap <buffer> <silent> \pm u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences","i")
inoremap <buffer> <silent> \pi u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.item","i")
inoremap <buffer> <silent> \pob u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.over, back","i")
inoremap <buffer> <silent> \ph3 u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head3","i")
inoremap <buffer> <silent> \ph2 u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head2","i")
inoremap <buffer> <silent> \ph1 u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head1","i")
inoremap <buffer> <silent> \pbt u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin text, end","i")
inoremap <buffer> <silent> \pbm u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin man, end","i")
inoremap <buffer> <silent> \pbh u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin html, end","i")
inoremap <buffer> <silent> \pfc u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.for, cut","i")
inoremap <buffer> <silent> \ppc u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.pod, cut","i")
inoremap <buffer> <silent> \xms u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.metasymbols","i")
inoremap <buffer> <silent> \xex u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex","i")
inoremap <buffer> <silent> \xup u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property","i")
inoremap <buffer> <silent> \xpc u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes","i")
inoremap <buffer> <silent> \vue u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.use English","i")
inoremap <buffer> <silent> \vps u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals","i")
inoremap <buffer> <silent> \vr u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp","i")
inoremap <buffer> <silent> \vio u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO","i")
inoremap <buffer> <silent> \vid u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs","i")
inoremap <buffer> <silent> \vf u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle","i")
inoremap <buffer> <silent> \ve u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors","i")
inoremap <buffer> <silent> \vb u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics","i")
inoremap <buffer> <silent> \ise u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDERR","i")
inoremap <buffer> <silent> \iso u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDOUT","i")
inoremap <buffer> <silent> \isi u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDIN","i")
inoremap <buffer> <silent> \ipi u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe","i")
inoremap <buffer> <silent> \io u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file","i")
inoremap <buffer> <silent> \ii u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file","i")
inoremap <buffer> <silent> \ip u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print","i")
inoremap <buffer> <silent> \isu u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine","i")
inoremap <buffer> <silent> \it u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate","i")
inoremap <buffer> <silent> \is u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute","i")
inoremap <buffer> <silent> \im u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match","i")
inoremap <buffer> <silent> \ir u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex","i")
inoremap <buffer> <silent> \iha u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment","i")
inoremap <buffer> <silent> \ih u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash","i")
inoremap <buffer> <silent> \iaa u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment","i")
inoremap <buffer> <silent> \ia u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array","i")
inoremap <buffer> <silent> \idd u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list","i")
inoremap <buffer> <silent> \ida u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment","i")
inoremap <buffer> <silent> \id u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar","i")
inoremap <buffer> <silent> \swh u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when","i")
inoremap <buffer> <silent> \sg u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given","i")
inoremap <buffer> <silent> \sw u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while","i")
inoremap <buffer> <silent> \st u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until","i")
inoremap <buffer> <silent> \sue u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else","i")
inoremap <buffer> <silent> \su u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless","i")
inoremap <buffer> <silent> \sie u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else","i")
inoremap <buffer> <silent> \sei u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif","i")
inoremap <buffer> <silent> \se u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else","i")
inoremap <buffer> <silent> \si u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if","i")
inoremap <buffer> <silent> \sfe u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach","i")
inoremap <buffer> <silent> \sf u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for","i")
inoremap <buffer> <silent> \sd u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while","i")
inoremap <buffer> <silent> \cma u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros","i")
inoremap <buffer> <silent> \ck u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments","i")
inoremap <buffer> <silent> \ct u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time","i")
inoremap <buffer> <silent> \cd u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date","i")
inoremap <buffer> <silent> \chpo u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod","i")
inoremap <buffer> <silent> \cht u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t","i")
inoremap <buffer> <silent> \chpm u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm","i")
inoremap <buffer> <silent> \chpl u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl","i")
inoremap <buffer> <silent> \cme u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method","i")
inoremap <buffer> <silent> \cfu u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function","i")
inoremap <buffer> <silent> \cfr u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame","i")
inoremap <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
inoremap <buffer> <silent> \rk :call Perl_Settings(0)
inoremap <buffer> <silent> \rh :call Perl_Hardcopy("n")
inoremap <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
inoremap <buffer> <silent> \rpc :call Perl_Perlcritic()
inoremap <buffer> <silent> \ry :call Perl_Perltidy("n")
inoremap <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
inoremap <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
inoremap <buffer> \rw :PerlSwitches 
inoremap <buffer> \ra :PerlScriptArguments 
inoremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
inoremap <buffer> <silent> \rr :call Perl_Run()
inoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
inoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
inoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
inoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
inoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
inoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
inoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
inoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
inoremap <buffer> <silent> \podt :call Perl_POD('text')
inoremap <buffer> <silent> \podm :call Perl_POD('man')
inoremap <buffer> <silent> \podh :call Perl_POD('html')
inoremap <buffer> <silent> \pod :call Perl_PodCheck()
inoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
inoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
inoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
inoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
inoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
inoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
inoremap <buffer> <silent> \cl :call Perl_EndOfLineComment()
inoremap <buffer> <silent> \hp :call Perl_HelpPerlsupport()
inoremap <buffer> <silent> \h :call Perl_perldoc()
inoremap <buffer> \rcm :MakeFile 
inoremap <buffer> \rma :MakeCmdlineArgs 
inoremap <buffer> <silent> \rmc :Make clean
inoremap <buffer> <silent> \rm :Make
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal completeslash=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=[^A-Za-z_]
setlocal dictionary=~/vimfiles/perl-support/wordlists/perl.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'perl'
setlocal filetype=perl
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=crqol
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=\\<\\(use\\|require\\)\\>
setlocal includeexpr=substitute(substitute(substitute(v:fname,'::','/','g'),'->*','',''),'$','.pm','')
setlocal indentexpr=GetPerlIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,0=,0),0],0=or,0=and
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,:,$,%,@-@
setlocal keywordprg=perldoc\ -f
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=.,,,C:/Perl64/site/lib,C:/Perl64/lib,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'perl'
setlocal syntax=perl
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 53 - ((52 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
53
normal! 045|
wincmd w
argglobal
if bufexists("planet.pm") | buffer planet.pm | else | edit planet.pm | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <C-D> u:call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"i")gi
inoremap <buffer> <silent> <C-J> u=Perl_JumpCtrlJ()
inoremap <buffer> <silent> <F9> :call Perl_Debugger()
inoremap <buffer> <silent> <S-F1> :call Perl_perldoc()
inoremap <buffer> <S-F9> :PerlScriptArguments 
inoremap <buffer> <silent> <C-F9> :call Perl_Run()
inoremap <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
nnoremap <buffer> <silent>  :call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"n")
nnoremap <buffer> <silent> <NL> i=Perl_JumpCtrlJ()
nmap <buffer> <silent> * :let @/ = TPV_locate_perl_var()
nnoremap <buffer> <silent> \ry :call Perl_Perltidy("n")
nnoremap <buffer> <silent> \rh :call Perl_Hardcopy("n")
vnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
vnoremap <buffer> <silent> \ntw :call mmtemplates#wizard#SetupWizard(g:Perl_Templates)
nnoremap <buffer> <silent> \ntw :call mmtemplates#wizard#SetupWizard(g:Perl_Templates)
vnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
vnoremap <buffer> <silent> \ntc :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,2)
nnoremap <buffer> <silent> \ntc :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,2)
vnoremap <buffer> <silent> \ntp :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,1)
nnoremap <buffer> <silent> \ntp :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,1)
vnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,0)
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,0)
vnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Help.English")
nnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Help.English")
vnoremap <buffer> <silent> \ft :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"File Tests")
nnoremap <buffer> <silent> \ft :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"File Tests")
vnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
nnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
vnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences","v")
nnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
vnoremap <buffer> <silent> \pi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.item")
nnoremap <buffer> <silent> \pi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.item")
vnoremap <buffer> <silent> \pob :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.over, back","v")
nnoremap <buffer> <silent> \pob :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.over, back")
vnoremap <buffer> <silent> \ph3 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head3")
nnoremap <buffer> <silent> \ph3 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head3")
vnoremap <buffer> <silent> \ph2 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head2")
nnoremap <buffer> <silent> \ph2 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head2")
vnoremap <buffer> <silent> \ph1 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head1")
nnoremap <buffer> <silent> \ph1 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head1")
vnoremap <buffer> <silent> \pbt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin text, end","v")
nnoremap <buffer> <silent> \pbt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin text, end")
vnoremap <buffer> <silent> \pbm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin man, end","v")
nnoremap <buffer> <silent> \pbm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin man, end")
vnoremap <buffer> <silent> \pbh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin html, end","v")
nnoremap <buffer> <silent> \pbh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin html, end")
vnoremap <buffer> <silent> \pfc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.for, cut","v")
nnoremap <buffer> <silent> \pfc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.for, cut")
vnoremap <buffer> <silent> \ppc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.pod, cut","v")
nnoremap <buffer> <silent> \ppc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.pod, cut")
vnoremap <buffer> <silent> \xms :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.metasymbols","v")
nnoremap <buffer> <silent> \xms :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.metasymbols")
vnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex","v")
nnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
vnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
nnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
vnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
nnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
vnoremap <buffer> <silent> \vue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.use English")
nnoremap <buffer> <silent> \vue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.use English")
vnoremap <buffer> <silent> \vps :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
nnoremap <buffer> <silent> \vps :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
vnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
nnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
vnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
nnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
vnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
nnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
vnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
nnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
vnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
nnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
vnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
nnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
vnoremap <buffer> <silent> \ise :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDERR")
nnoremap <buffer> <silent> \ise :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDERR")
vnoremap <buffer> <silent> \iso :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDOUT")
nnoremap <buffer> <silent> \iso :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDOUT")
vnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDIN")
nnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDIN")
vnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe","v")
nnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file","v")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file","v")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
vnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
nnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
vnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine","v")
nnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
vnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
nnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
vnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
nnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
vnoremap <buffer> <silent> \iha :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
nnoremap <buffer> <silent> \iha :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
vnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
nnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
vnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
nnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
vnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
nnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
vnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
nnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
vnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
nnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
vnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
nnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
vnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
nnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while","v")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
vnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until","v")
nnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
vnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else","v")
nnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
vnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless","v")
nnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else","v")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
vnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif","v")
nnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else","v")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if","v")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
vnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach","v")
nnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for","v")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while","v")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
vnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
vnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
nnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
vnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
nnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
vnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
nnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
vnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
nnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
noremap <buffer> <silent> \rpco :call Perl_PerlcriticOptionsInput()
noremap <buffer> <silent> \rpcv :call Perl_PerlcriticVerbosityInput()
noremap <buffer> <silent> \rpcs :call Perl_PerlcriticSeverityInput()
noremap <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
noremap <buffer> <silent> \rk :call Perl_Settings(0)
vnoremap <buffer> <silent> \rh :call Perl_Hardcopy("v")
onoremap <buffer> <silent> \rh :call Perl_Hardcopy("n")
noremap <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
noremap <buffer> <silent> \rpc :call Perl_Perlcritic()
vnoremap <buffer> <silent> \ry :call Perl_Perltidy("v")
onoremap <buffer> <silent> \ry :call Perl_Perltidy("n")
noremap <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
noremap <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
noremap <buffer> <silent> \rd :call Perl_Debugger()
noremap <buffer> \rw :PerlSwitches 
noremap <buffer> \ra :PerlScriptArguments 
noremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
noremap <buffer> <silent> \rr :call Perl_Run()
nnoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
nnoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
nnoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
nnoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
nnoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
nnoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
nnoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
nnoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
nnoremap <buffer> <silent> \podt :call Perl_POD('text')
nnoremap <buffer> <silent> \podm :call Perl_POD('man')
nnoremap <buffer> <silent> \podh :call Perl_POD('html')
nnoremap <buffer> <silent> \pod :call Perl_PodCheck()
vnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "v" )
nnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "n" )
nnoremap <buffer> <silent> \xmm :call perlsupportregex#Perl_RegexMatchSeveral( )
nnoremap <buffer> <silent> \xm :call perlsupportregex#Perl_RegexVisualize( )
vnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "v" )'>j
vnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "String", "v" )'>j
vnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "Regexp", "v" )'>j
nnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "n" )
nnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "String", "n" )j
nnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "Regexp", "n" )j
nnoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
nnoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
vnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("writemarked")
nnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
nnoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
nnoremap <buffer> <silent> \cub :call Perl_UncommentBlock()
vnoremap <buffer> <silent> \cb :call Perl_CommentBlock("v")
nnoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
vnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cs :call Perl_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
nnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
noremap <buffer> <silent> \cl :call Perl_EndOfLineComment()
noremap <buffer> <silent> \hp :call Perl_HelpPerlsupport()
noremap <buffer> <silent> \h :call Perl_perldoc()
noremap <buffer> \rcm :MakeFile 
noremap <buffer> \rma :MakeCmdlineArgs 
noremap <buffer> <silent> \rmc :Make clean
noremap <buffer> <silent> \rm :Make
vmap <buffer> <silent> cv :silent call TPV_rename_perl_var('visual')gv
nmap <buffer> <silent> cv :silent call TPV_rename_perl_var('normal')
nmap <buffer> <silent> gd :let @/ = TPV_locate_perl_var_decl()
nmap <buffer> <silent> tt :let b:track_perl_var_locked = ! b:track_perl_var_locked:call TPV_track_perl_var()
vnoremap <buffer> { s{}kp=iB
nnoremap <buffer> <silent> <C-D> :call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"n")
nnoremap <buffer> <silent> <C-J> i=Perl_JumpCtrlJ()
noremap <buffer> <silent> <F9> :call Perl_Debugger()
noremap <buffer> <silent> <S-F1> :call Perl_perldoc()
noremap <buffer> <S-F9> :PerlScriptArguments 
noremap <buffer> <silent> <C-F9> :call Perl_Run()
noremap <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
inoremap <buffer> <silent>  u:call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"i")gi
inoremap <buffer> <silent> <NL> u=Perl_JumpCtrlJ()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
inoremap <buffer> <silent> \ntw :call mmtemplates#wizard#SetupWizard(g:Perl_Templates)
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
inoremap <buffer> <silent> \ntc :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,2)
inoremap <buffer> <silent> \ntp :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,1)
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,0)
inoremap <buffer> <silent> \he u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Help.English","i")
inoremap <buffer> <silent> \ft u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"File Tests","i")
inoremap <buffer> <silent> \nxs u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex","i")
inoremap <buffer> <silent> \njt u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags","i")
inoremap <buffer> <silent> \pm u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences","i")
inoremap <buffer> <silent> \pi u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.item","i")
inoremap <buffer> <silent> \pob u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.over, back","i")
inoremap <buffer> <silent> \ph3 u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head3","i")
inoremap <buffer> <silent> \ph2 u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head2","i")
inoremap <buffer> <silent> \ph1 u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head1","i")
inoremap <buffer> <silent> \pbt u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin text, end","i")
inoremap <buffer> <silent> \pbm u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin man, end","i")
inoremap <buffer> <silent> \pbh u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin html, end","i")
inoremap <buffer> <silent> \pfc u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.for, cut","i")
inoremap <buffer> <silent> \ppc u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.pod, cut","i")
inoremap <buffer> <silent> \xms u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.metasymbols","i")
inoremap <buffer> <silent> \xex u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex","i")
inoremap <buffer> <silent> \xup u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property","i")
inoremap <buffer> <silent> \xpc u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes","i")
inoremap <buffer> <silent> \vue u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.use English","i")
inoremap <buffer> <silent> \vps u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals","i")
inoremap <buffer> <silent> \vr u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp","i")
inoremap <buffer> <silent> \vio u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO","i")
inoremap <buffer> <silent> \vid u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs","i")
inoremap <buffer> <silent> \vf u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle","i")
inoremap <buffer> <silent> \ve u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors","i")
inoremap <buffer> <silent> \vb u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics","i")
inoremap <buffer> <silent> \ise u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDERR","i")
inoremap <buffer> <silent> \iso u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDOUT","i")
inoremap <buffer> <silent> \isi u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDIN","i")
inoremap <buffer> <silent> \ipi u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe","i")
inoremap <buffer> <silent> \io u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file","i")
inoremap <buffer> <silent> \ii u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file","i")
inoremap <buffer> <silent> \ip u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print","i")
inoremap <buffer> <silent> \isu u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine","i")
inoremap <buffer> <silent> \it u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate","i")
inoremap <buffer> <silent> \is u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute","i")
inoremap <buffer> <silent> \im u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match","i")
inoremap <buffer> <silent> \ir u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex","i")
inoremap <buffer> <silent> \iha u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment","i")
inoremap <buffer> <silent> \ih u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash","i")
inoremap <buffer> <silent> \iaa u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment","i")
inoremap <buffer> <silent> \ia u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array","i")
inoremap <buffer> <silent> \idd u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list","i")
inoremap <buffer> <silent> \ida u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment","i")
inoremap <buffer> <silent> \id u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar","i")
inoremap <buffer> <silent> \swh u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when","i")
inoremap <buffer> <silent> \sg u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given","i")
inoremap <buffer> <silent> \sw u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while","i")
inoremap <buffer> <silent> \st u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until","i")
inoremap <buffer> <silent> \sue u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else","i")
inoremap <buffer> <silent> \su u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless","i")
inoremap <buffer> <silent> \sie u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else","i")
inoremap <buffer> <silent> \sei u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif","i")
inoremap <buffer> <silent> \se u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else","i")
inoremap <buffer> <silent> \si u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if","i")
inoremap <buffer> <silent> \sfe u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach","i")
inoremap <buffer> <silent> \sf u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for","i")
inoremap <buffer> <silent> \sd u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while","i")
inoremap <buffer> <silent> \cma u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros","i")
inoremap <buffer> <silent> \ck u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments","i")
inoremap <buffer> <silent> \ct u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time","i")
inoremap <buffer> <silent> \cd u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date","i")
inoremap <buffer> <silent> \chpo u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod","i")
inoremap <buffer> <silent> \cht u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t","i")
inoremap <buffer> <silent> \chpm u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm","i")
inoremap <buffer> <silent> \chpl u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl","i")
inoremap <buffer> <silent> \cme u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method","i")
inoremap <buffer> <silent> \cfu u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function","i")
inoremap <buffer> <silent> \cfr u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame","i")
inoremap <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
inoremap <buffer> <silent> \rk :call Perl_Settings(0)
inoremap <buffer> <silent> \rh :call Perl_Hardcopy("n")
inoremap <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
inoremap <buffer> <silent> \rpc :call Perl_Perlcritic()
inoremap <buffer> <silent> \ry :call Perl_Perltidy("n")
inoremap <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
inoremap <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
inoremap <buffer> \rw :PerlSwitches 
inoremap <buffer> \ra :PerlScriptArguments 
inoremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
inoremap <buffer> <silent> \rr :call Perl_Run()
inoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
inoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
inoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
inoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
inoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
inoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
inoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
inoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
inoremap <buffer> <silent> \podt :call Perl_POD('text')
inoremap <buffer> <silent> \podm :call Perl_POD('man')
inoremap <buffer> <silent> \podh :call Perl_POD('html')
inoremap <buffer> <silent> \pod :call Perl_PodCheck()
inoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
inoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
inoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
inoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
inoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
inoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
inoremap <buffer> <silent> \cl :call Perl_EndOfLineComment()
inoremap <buffer> <silent> \hp :call Perl_HelpPerlsupport()
inoremap <buffer> <silent> \h :call Perl_perldoc()
inoremap <buffer> \rcm :MakeFile 
inoremap <buffer> \rma :MakeCmdlineArgs 
inoremap <buffer> <silent> \rmc :Make clean
inoremap <buffer> <silent> \rm :Make
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal completeslash=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=[^A-Za-z_]
setlocal dictionary=~/vimfiles/perl-support/wordlists/perl.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'perl'
setlocal filetype=perl
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=crqol
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=\\<\\(use\\|require\\)\\>
setlocal includeexpr=substitute(substitute(substitute(v:fname,'::','/','g'),'->*','',''),'$','.pm','')
setlocal indentexpr=GetPerlIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,0=,0),0],0=or,0=and
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,:,$,%,@-@
setlocal keywordprg=perldoc\ -f
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=.,,,C:/Perl64/site/lib,C:/Perl64/lib,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'perl'
setlocal syntax=perl
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 46 - ((18 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
46
normal! 045|
wincmd w
exe 'vert 1resize ' . ((&columns * 113 + 117) / 235)
exe 'vert 2resize ' . ((&columns * 121 + 117) / 235)
tabnext
edit t\player.t
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 112 + 117) / 235)
exe 'vert 2resize ' . ((&columns * 122 + 117) / 235)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <C-D> u:call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"i")gi
inoremap <buffer> <silent> <C-J> u=Perl_JumpCtrlJ()
inoremap <buffer> <silent> <F9> :call Perl_Debugger()
inoremap <buffer> <silent> <S-F1> :call Perl_perldoc()
inoremap <buffer> <S-F9> :PerlScriptArguments 
inoremap <buffer> <silent> <C-F9> :call Perl_Run()
inoremap <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
nnoremap <buffer> <silent>  :call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"n")
nnoremap <buffer> <silent> <NL> i=Perl_JumpCtrlJ()
nmap <buffer> <silent> * :let @/ = TPV_locate_perl_var()
nnoremap <buffer> <silent> \ry :call Perl_Perltidy("n")
nnoremap <buffer> <silent> \rh :call Perl_Hardcopy("n")
vnoremap <buffer> <silent> \rh :call Perl_Hardcopy("v")
vnoremap <buffer> <silent> \ry :call Perl_Perltidy("v")
vnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
vnoremap <buffer> <silent> \ntw :call mmtemplates#wizard#SetupWizard(g:Perl_Templates)
nnoremap <buffer> <silent> \ntw :call mmtemplates#wizard#SetupWizard(g:Perl_Templates)
vnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
vnoremap <buffer> <silent> \ntc :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,2)
nnoremap <buffer> <silent> \ntc :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,2)
vnoremap <buffer> <silent> \ntp :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,1)
nnoremap <buffer> <silent> \ntp :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,1)
vnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,0)
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,0)
vnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Help.English")
nnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Help.English")
vnoremap <buffer> <silent> \ft :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"File Tests")
nnoremap <buffer> <silent> \ft :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"File Tests")
vnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
nnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
vnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences","v")
nnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
vnoremap <buffer> <silent> \pi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.item")
nnoremap <buffer> <silent> \pi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.item")
vnoremap <buffer> <silent> \pob :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.over, back","v")
nnoremap <buffer> <silent> \pob :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.over, back")
vnoremap <buffer> <silent> \ph3 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head3")
nnoremap <buffer> <silent> \ph3 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head3")
vnoremap <buffer> <silent> \ph2 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head2")
nnoremap <buffer> <silent> \ph2 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head2")
vnoremap <buffer> <silent> \ph1 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head1")
nnoremap <buffer> <silent> \ph1 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head1")
vnoremap <buffer> <silent> \pbt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin text, end","v")
nnoremap <buffer> <silent> \pbt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin text, end")
vnoremap <buffer> <silent> \pbm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin man, end","v")
nnoremap <buffer> <silent> \pbm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin man, end")
vnoremap <buffer> <silent> \pbh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin html, end","v")
nnoremap <buffer> <silent> \pbh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin html, end")
vnoremap <buffer> <silent> \pfc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.for, cut","v")
nnoremap <buffer> <silent> \pfc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.for, cut")
vnoremap <buffer> <silent> \ppc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.pod, cut","v")
nnoremap <buffer> <silent> \ppc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.pod, cut")
vnoremap <buffer> <silent> \xms :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.metasymbols","v")
nnoremap <buffer> <silent> \xms :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.metasymbols")
vnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex","v")
nnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
vnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
nnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
vnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
nnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
vnoremap <buffer> <silent> \vue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.use English")
nnoremap <buffer> <silent> \vue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.use English")
vnoremap <buffer> <silent> \vps :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
nnoremap <buffer> <silent> \vps :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
vnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
nnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
vnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
nnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
vnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
nnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
vnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
nnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
vnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
nnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
vnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
nnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
vnoremap <buffer> <silent> \ise :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDERR")
nnoremap <buffer> <silent> \ise :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDERR")
vnoremap <buffer> <silent> \iso :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDOUT")
nnoremap <buffer> <silent> \iso :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDOUT")
vnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDIN")
nnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDIN")
vnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe","v")
nnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file","v")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file","v")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
vnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
nnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
vnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine","v")
nnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
vnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
nnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
vnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
nnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
vnoremap <buffer> <silent> \iha :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
nnoremap <buffer> <silent> \iha :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
vnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
nnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
vnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
nnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
vnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
nnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
vnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
nnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
vnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
nnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
vnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
nnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
vnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
nnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while","v")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
vnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until","v")
nnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
vnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else","v")
nnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
vnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless","v")
nnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else","v")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
vnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif","v")
nnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else","v")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if","v")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
vnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach","v")
nnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for","v")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while","v")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
vnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
vnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
nnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
vnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
nnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
vnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
nnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
vnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
nnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
noremap <buffer> <silent> \rpco :call Perl_PerlcriticOptionsInput()
noremap <buffer> <silent> \rpcv :call Perl_PerlcriticVerbosityInput()
noremap <buffer> <silent> \rpcs :call Perl_PerlcriticSeverityInput()
noremap <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
noremap <buffer> <silent> \rk :call Perl_Settings(0)
onoremap <buffer> <silent> \rh :call Perl_Hardcopy("n")
noremap <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
noremap <buffer> <silent> \rpc :call Perl_Perlcritic()
onoremap <buffer> <silent> \ry :call Perl_Perltidy("n")
noremap <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
noremap <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
noremap <buffer> <silent> \rd :call Perl_Debugger()
noremap <buffer> \rw :PerlSwitches 
noremap <buffer> \ra :PerlScriptArguments 
noremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
noremap <buffer> <silent> \rr :call Perl_Run()
nnoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
nnoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
nnoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
nnoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
nnoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
nnoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
nnoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
nnoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
nnoremap <buffer> <silent> \podt :call Perl_POD('text')
nnoremap <buffer> <silent> \podm :call Perl_POD('man')
nnoremap <buffer> <silent> \podh :call Perl_POD('html')
nnoremap <buffer> <silent> \pod :call Perl_PodCheck()
vnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "v" )
nnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "n" )
nnoremap <buffer> <silent> \xmm :call perlsupportregex#Perl_RegexMatchSeveral( )
nnoremap <buffer> <silent> \xm :call perlsupportregex#Perl_RegexVisualize( )
vnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "v" )'>j
vnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "String", "v" )'>j
vnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "Regexp", "v" )'>j
nnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "n" )
nnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "String", "n" )j
nnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "Regexp", "n" )j
nnoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
nnoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
vnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("writemarked")
nnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
nnoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
nnoremap <buffer> <silent> \cub :call Perl_UncommentBlock()
vnoremap <buffer> <silent> \cb :call Perl_CommentBlock("v")
nnoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
vnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cs :call Perl_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
nnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
noremap <buffer> <silent> \cl :call Perl_EndOfLineComment()
noremap <buffer> <silent> \hp :call Perl_HelpPerlsupport()
noremap <buffer> <silent> \h :call Perl_perldoc()
noremap <buffer> \rcm :MakeFile 
noremap <buffer> \rma :MakeCmdlineArgs 
noremap <buffer> <silent> \rmc :Make clean
noremap <buffer> <silent> \rm :Make
vmap <buffer> <silent> cv :silent call TPV_rename_perl_var('visual')gv
nmap <buffer> <silent> cv :silent call TPV_rename_perl_var('normal')
nmap <buffer> <silent> gd :let @/ = TPV_locate_perl_var_decl()
nmap <buffer> <silent> tt :let b:track_perl_var_locked = ! b:track_perl_var_locked:call TPV_track_perl_var()
vnoremap <buffer> { s{}kp=iB
nnoremap <buffer> <silent> <C-D> :call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"n")
nnoremap <buffer> <silent> <C-J> i=Perl_JumpCtrlJ()
noremap <buffer> <silent> <F9> :call Perl_Debugger()
noremap <buffer> <silent> <S-F1> :call Perl_perldoc()
noremap <buffer> <S-F9> :PerlScriptArguments 
noremap <buffer> <silent> <C-F9> :call Perl_Run()
noremap <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
inoremap <buffer> <silent>  u:call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"i")gi
inoremap <buffer> <silent> <NL> u=Perl_JumpCtrlJ()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
inoremap <buffer> <silent> \ntw :call mmtemplates#wizard#SetupWizard(g:Perl_Templates)
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
inoremap <buffer> <silent> \ntc :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,2)
inoremap <buffer> <silent> \ntp :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,1)
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,0)
inoremap <buffer> <silent> \he u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Help.English","i")
inoremap <buffer> <silent> \ft u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"File Tests","i")
inoremap <buffer> <silent> \nxs u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex","i")
inoremap <buffer> <silent> \njt u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags","i")
inoremap <buffer> <silent> \pm u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences","i")
inoremap <buffer> <silent> \pi u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.item","i")
inoremap <buffer> <silent> \pob u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.over, back","i")
inoremap <buffer> <silent> \ph3 u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head3","i")
inoremap <buffer> <silent> \ph2 u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head2","i")
inoremap <buffer> <silent> \ph1 u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head1","i")
inoremap <buffer> <silent> \pbt u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin text, end","i")
inoremap <buffer> <silent> \pbm u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin man, end","i")
inoremap <buffer> <silent> \pbh u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin html, end","i")
inoremap <buffer> <silent> \pfc u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.for, cut","i")
inoremap <buffer> <silent> \ppc u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.pod, cut","i")
inoremap <buffer> <silent> \xms u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.metasymbols","i")
inoremap <buffer> <silent> \xex u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex","i")
inoremap <buffer> <silent> \xup u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property","i")
inoremap <buffer> <silent> \xpc u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes","i")
inoremap <buffer> <silent> \vue u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.use English","i")
inoremap <buffer> <silent> \vps u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals","i")
inoremap <buffer> <silent> \vr u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp","i")
inoremap <buffer> <silent> \vio u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO","i")
inoremap <buffer> <silent> \vid u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs","i")
inoremap <buffer> <silent> \vf u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle","i")
inoremap <buffer> <silent> \ve u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors","i")
inoremap <buffer> <silent> \vb u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics","i")
inoremap <buffer> <silent> \ise u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDERR","i")
inoremap <buffer> <silent> \iso u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDOUT","i")
inoremap <buffer> <silent> \isi u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDIN","i")
inoremap <buffer> <silent> \ipi u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe","i")
inoremap <buffer> <silent> \io u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file","i")
inoremap <buffer> <silent> \ii u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file","i")
inoremap <buffer> <silent> \ip u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print","i")
inoremap <buffer> <silent> \isu u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine","i")
inoremap <buffer> <silent> \it u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate","i")
inoremap <buffer> <silent> \is u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute","i")
inoremap <buffer> <silent> \im u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match","i")
inoremap <buffer> <silent> \ir u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex","i")
inoremap <buffer> <silent> \iha u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment","i")
inoremap <buffer> <silent> \ih u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash","i")
inoremap <buffer> <silent> \iaa u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment","i")
inoremap <buffer> <silent> \ia u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array","i")
inoremap <buffer> <silent> \idd u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list","i")
inoremap <buffer> <silent> \ida u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment","i")
inoremap <buffer> <silent> \id u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar","i")
inoremap <buffer> <silent> \swh u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when","i")
inoremap <buffer> <silent> \sg u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given","i")
inoremap <buffer> <silent> \sw u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while","i")
inoremap <buffer> <silent> \st u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until","i")
inoremap <buffer> <silent> \sue u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else","i")
inoremap <buffer> <silent> \su u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless","i")
inoremap <buffer> <silent> \sie u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else","i")
inoremap <buffer> <silent> \sei u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif","i")
inoremap <buffer> <silent> \se u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else","i")
inoremap <buffer> <silent> \si u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if","i")
inoremap <buffer> <silent> \sfe u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach","i")
inoremap <buffer> <silent> \sf u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for","i")
inoremap <buffer> <silent> \sd u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while","i")
inoremap <buffer> <silent> \cma u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros","i")
inoremap <buffer> <silent> \ck u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments","i")
inoremap <buffer> <silent> \ct u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time","i")
inoremap <buffer> <silent> \cd u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date","i")
inoremap <buffer> <silent> \chpo u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod","i")
inoremap <buffer> <silent> \cht u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t","i")
inoremap <buffer> <silent> \chpm u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm","i")
inoremap <buffer> <silent> \chpl u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl","i")
inoremap <buffer> <silent> \cme u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method","i")
inoremap <buffer> <silent> \cfu u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function","i")
inoremap <buffer> <silent> \cfr u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame","i")
inoremap <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
inoremap <buffer> <silent> \rk :call Perl_Settings(0)
inoremap <buffer> <silent> \rh :call Perl_Hardcopy("n")
inoremap <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
inoremap <buffer> <silent> \rpc :call Perl_Perlcritic()
inoremap <buffer> <silent> \ry :call Perl_Perltidy("n")
inoremap <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
inoremap <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
inoremap <buffer> \rw :PerlSwitches 
inoremap <buffer> \ra :PerlScriptArguments 
inoremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
inoremap <buffer> <silent> \rr :call Perl_Run()
inoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
inoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
inoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
inoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
inoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
inoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
inoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
inoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
inoremap <buffer> <silent> \podt :call Perl_POD('text')
inoremap <buffer> <silent> \podm :call Perl_POD('man')
inoremap <buffer> <silent> \podh :call Perl_POD('html')
inoremap <buffer> <silent> \pod :call Perl_PodCheck()
inoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
inoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
inoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
inoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
inoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
inoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
inoremap <buffer> <silent> \cl :call Perl_EndOfLineComment()
inoremap <buffer> <silent> \hp :call Perl_HelpPerlsupport()
inoremap <buffer> <silent> \h :call Perl_perldoc()
inoremap <buffer> \rcm :MakeFile 
inoremap <buffer> \rma :MakeCmdlineArgs 
inoremap <buffer> <silent> \rmc :Make clean
inoremap <buffer> <silent> \rm :Make
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal completeslash=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=[^A-Za-z_]
setlocal dictionary=~/vimfiles/perl-support/wordlists/perl.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'perl'
setlocal filetype=perl
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=crqol
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=\\<\\(use\\|require\\)\\>
setlocal includeexpr=substitute(substitute(substitute(v:fname,'::','/','g'),'->*','',''),'$','.pm','')
setlocal indentexpr=GetPerlIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,0=,0),0],0=or,0=and
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,:,$,%,@-@
setlocal keywordprg=perldoc\ -f
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=.,,,C:/Perl64/site/lib,C:/Perl64/lib,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'perl'
setlocal syntax=perl
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 40 - ((39 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
normal! 0
wincmd w
argglobal
if bufexists("player.pm") | buffer player.pm | else | edit player.pm | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <C-D> u:call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"i")gi
inoremap <buffer> <silent> <C-J> u=Perl_JumpCtrlJ()
inoremap <buffer> <silent> <F9> :call Perl_Debugger()
inoremap <buffer> <silent> <S-F1> :call Perl_perldoc()
inoremap <buffer> <S-F9> :PerlScriptArguments 
inoremap <buffer> <silent> <C-F9> :call Perl_Run()
inoremap <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
nnoremap <buffer> <silent>  :call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"n")
nnoremap <buffer> <silent> <NL> i=Perl_JumpCtrlJ()
nmap <buffer> <silent> * :let @/ = TPV_locate_perl_var()
nnoremap <buffer> <silent> \ry :call Perl_Perltidy("n")
nnoremap <buffer> <silent> \rh :call Perl_Hardcopy("n")
vnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
vnoremap <buffer> <silent> \ntw :call mmtemplates#wizard#SetupWizard(g:Perl_Templates)
nnoremap <buffer> <silent> \ntw :call mmtemplates#wizard#SetupWizard(g:Perl_Templates)
vnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
vnoremap <buffer> <silent> \ntc :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,2)
nnoremap <buffer> <silent> \ntc :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,2)
vnoremap <buffer> <silent> \ntp :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,1)
nnoremap <buffer> <silent> \ntp :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,1)
vnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,0)
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,0)
vnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Help.English")
nnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Help.English")
vnoremap <buffer> <silent> \ft :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"File Tests")
nnoremap <buffer> <silent> \ft :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"File Tests")
vnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
nnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
vnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences","v")
nnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
vnoremap <buffer> <silent> \pi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.item")
nnoremap <buffer> <silent> \pi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.item")
vnoremap <buffer> <silent> \pob :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.over, back","v")
nnoremap <buffer> <silent> \pob :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.over, back")
vnoremap <buffer> <silent> \ph3 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head3")
nnoremap <buffer> <silent> \ph3 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head3")
vnoremap <buffer> <silent> \ph2 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head2")
nnoremap <buffer> <silent> \ph2 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head2")
vnoremap <buffer> <silent> \ph1 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head1")
nnoremap <buffer> <silent> \ph1 :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head1")
vnoremap <buffer> <silent> \pbt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin text, end","v")
nnoremap <buffer> <silent> \pbt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin text, end")
vnoremap <buffer> <silent> \pbm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin man, end","v")
nnoremap <buffer> <silent> \pbm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin man, end")
vnoremap <buffer> <silent> \pbh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin html, end","v")
nnoremap <buffer> <silent> \pbh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin html, end")
vnoremap <buffer> <silent> \pfc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.for, cut","v")
nnoremap <buffer> <silent> \pfc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.for, cut")
vnoremap <buffer> <silent> \ppc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.pod, cut","v")
nnoremap <buffer> <silent> \ppc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.pod, cut")
vnoremap <buffer> <silent> \xms :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.metasymbols","v")
nnoremap <buffer> <silent> \xms :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.metasymbols")
vnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex","v")
nnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
vnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
nnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
vnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
nnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
vnoremap <buffer> <silent> \vue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.use English")
nnoremap <buffer> <silent> \vue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.use English")
vnoremap <buffer> <silent> \vps :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
nnoremap <buffer> <silent> \vps :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
vnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
nnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
vnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
nnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
vnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
nnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
vnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
nnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
vnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
nnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
vnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
nnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
vnoremap <buffer> <silent> \ise :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDERR")
nnoremap <buffer> <silent> \ise :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDERR")
vnoremap <buffer> <silent> \iso :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDOUT")
nnoremap <buffer> <silent> \iso :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDOUT")
vnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDIN")
nnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDIN")
vnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe","v")
nnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file","v")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file","v")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
vnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
nnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
vnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine","v")
nnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
vnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
nnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
vnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
nnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
vnoremap <buffer> <silent> \iha :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
nnoremap <buffer> <silent> \iha :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
vnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
nnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
vnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
nnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
vnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
nnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
vnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
nnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
vnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
nnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
vnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
nnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
vnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
nnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while","v")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
vnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until","v")
nnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
vnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else","v")
nnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
vnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless","v")
nnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else","v")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
vnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif","v")
nnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else","v")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if","v")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
vnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach","v")
nnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for","v")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while","v")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
vnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
vnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
nnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
vnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
nnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
vnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
nnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
vnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
nnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
noremap <buffer> <silent> \rpco :call Perl_PerlcriticOptionsInput()
noremap <buffer> <silent> \rpcv :call Perl_PerlcriticVerbosityInput()
noremap <buffer> <silent> \rpcs :call Perl_PerlcriticSeverityInput()
noremap <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
noremap <buffer> <silent> \rk :call Perl_Settings(0)
vnoremap <buffer> <silent> \rh :call Perl_Hardcopy("v")
onoremap <buffer> <silent> \rh :call Perl_Hardcopy("n")
noremap <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
noremap <buffer> <silent> \rpc :call Perl_Perlcritic()
vnoremap <buffer> <silent> \ry :call Perl_Perltidy("v")
onoremap <buffer> <silent> \ry :call Perl_Perltidy("n")
noremap <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
noremap <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
noremap <buffer> <silent> \rd :call Perl_Debugger()
noremap <buffer> \rw :PerlSwitches 
noremap <buffer> \ra :PerlScriptArguments 
noremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
noremap <buffer> <silent> \rr :call Perl_Run()
nnoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
nnoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
nnoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
nnoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
nnoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
nnoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
nnoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
nnoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
nnoremap <buffer> <silent> \podt :call Perl_POD('text')
nnoremap <buffer> <silent> \podm :call Perl_POD('man')
nnoremap <buffer> <silent> \podh :call Perl_POD('html')
nnoremap <buffer> <silent> \pod :call Perl_PodCheck()
vnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "v" )
nnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "n" )
nnoremap <buffer> <silent> \xmm :call perlsupportregex#Perl_RegexMatchSeveral( )
nnoremap <buffer> <silent> \xm :call perlsupportregex#Perl_RegexVisualize( )
vnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "v" )'>j
vnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "String", "v" )'>j
vnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "Regexp", "v" )'>j
nnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "n" )
nnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "String", "n" )j
nnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "Regexp", "n" )j
nnoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
nnoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
vnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("writemarked")
nnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
nnoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
nnoremap <buffer> <silent> \cub :call Perl_UncommentBlock()
vnoremap <buffer> <silent> \cb :call Perl_CommentBlock("v")
nnoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
vnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cs :call Perl_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
nnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
noremap <buffer> <silent> \cl :call Perl_EndOfLineComment()
noremap <buffer> <silent> \hp :call Perl_HelpPerlsupport()
noremap <buffer> <silent> \h :call Perl_perldoc()
noremap <buffer> \rcm :MakeFile 
noremap <buffer> \rma :MakeCmdlineArgs 
noremap <buffer> <silent> \rmc :Make clean
noremap <buffer> <silent> \rm :Make
vmap <buffer> <silent> cv :silent call TPV_rename_perl_var('visual')gv
nmap <buffer> <silent> cv :silent call TPV_rename_perl_var('normal')
nmap <buffer> <silent> gd :let @/ = TPV_locate_perl_var_decl()
nmap <buffer> <silent> tt :let b:track_perl_var_locked = ! b:track_perl_var_locked:call TPV_track_perl_var()
vnoremap <buffer> { s{}kp=iB
nnoremap <buffer> <silent> <C-D> :call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"n")
nnoremap <buffer> <silent> <C-J> i=Perl_JumpCtrlJ()
noremap <buffer> <silent> <F9> :call Perl_Debugger()
noremap <buffer> <silent> <S-F1> :call Perl_perldoc()
noremap <buffer> <S-F9> :PerlScriptArguments 
noremap <buffer> <silent> <C-F9> :call Perl_Run()
noremap <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
inoremap <buffer> <silent>  u:call mmtemplates#core#DeleteOptTag('\[-\w*-]\|\[+\w*+]',',',"i")gi
inoremap <buffer> <silent> <NL> u=Perl_JumpCtrlJ()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
inoremap <buffer> <silent> \ntw :call mmtemplates#wizard#SetupWizard(g:Perl_Templates)
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
inoremap <buffer> <silent> \ntc :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,2)
inoremap <buffer> <silent> \ntp :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,1)
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,0)
inoremap <buffer> <silent> \he u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Help.English","i")
inoremap <buffer> <silent> \ft u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"File Tests","i")
inoremap <buffer> <silent> \nxs u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex","i")
inoremap <buffer> <silent> \njt u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags","i")
inoremap <buffer> <silent> \pm u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences","i")
inoremap <buffer> <silent> \pi u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.item","i")
inoremap <buffer> <silent> \pob u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.over, back","i")
inoremap <buffer> <silent> \ph3 u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head3","i")
inoremap <buffer> <silent> \ph2 u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head2","i")
inoremap <buffer> <silent> \ph1 u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.head1","i")
inoremap <buffer> <silent> \pbt u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin text, end","i")
inoremap <buffer> <silent> \pbm u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin man, end","i")
inoremap <buffer> <silent> \pbh u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.begin html, end","i")
inoremap <buffer> <silent> \pfc u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.for, cut","i")
inoremap <buffer> <silent> \ppc u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.pod, cut","i")
inoremap <buffer> <silent> \xms u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.metasymbols","i")
inoremap <buffer> <silent> \xex u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex","i")
inoremap <buffer> <silent> \xup u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property","i")
inoremap <buffer> <silent> \xpc u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes","i")
inoremap <buffer> <silent> \vue u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.use English","i")
inoremap <buffer> <silent> \vps u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals","i")
inoremap <buffer> <silent> \vr u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp","i")
inoremap <buffer> <silent> \vio u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO","i")
inoremap <buffer> <silent> \vid u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs","i")
inoremap <buffer> <silent> \vf u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle","i")
inoremap <buffer> <silent> \ve u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors","i")
inoremap <buffer> <silent> \vb u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics","i")
inoremap <buffer> <silent> \ise u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDERR","i")
inoremap <buffer> <silent> \iso u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDOUT","i")
inoremap <buffer> <silent> \isi u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.STDIN","i")
inoremap <buffer> <silent> \ipi u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe","i")
inoremap <buffer> <silent> \io u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file","i")
inoremap <buffer> <silent> \ii u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file","i")
inoremap <buffer> <silent> \ip u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print","i")
inoremap <buffer> <silent> \isu u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine","i")
inoremap <buffer> <silent> \it u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate","i")
inoremap <buffer> <silent> \is u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute","i")
inoremap <buffer> <silent> \im u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match","i")
inoremap <buffer> <silent> \ir u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex","i")
inoremap <buffer> <silent> \iha u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment","i")
inoremap <buffer> <silent> \ih u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash","i")
inoremap <buffer> <silent> \iaa u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment","i")
inoremap <buffer> <silent> \ia u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array","i")
inoremap <buffer> <silent> \idd u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list","i")
inoremap <buffer> <silent> \ida u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment","i")
inoremap <buffer> <silent> \id u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar","i")
inoremap <buffer> <silent> \swh u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when","i")
inoremap <buffer> <silent> \sg u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given","i")
inoremap <buffer> <silent> \sw u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while","i")
inoremap <buffer> <silent> \st u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until","i")
inoremap <buffer> <silent> \sue u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else","i")
inoremap <buffer> <silent> \su u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless","i")
inoremap <buffer> <silent> \sie u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else","i")
inoremap <buffer> <silent> \sei u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif","i")
inoremap <buffer> <silent> \se u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else","i")
inoremap <buffer> <silent> \si u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if","i")
inoremap <buffer> <silent> \sfe u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach","i")
inoremap <buffer> <silent> \sf u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for","i")
inoremap <buffer> <silent> \sd u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while","i")
inoremap <buffer> <silent> \cma u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros","i")
inoremap <buffer> <silent> \ck u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments","i")
inoremap <buffer> <silent> \ct u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time","i")
inoremap <buffer> <silent> \cd u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date","i")
inoremap <buffer> <silent> \chpo u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod","i")
inoremap <buffer> <silent> \cht u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t","i")
inoremap <buffer> <silent> \chpm u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm","i")
inoremap <buffer> <silent> \chpl u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl","i")
inoremap <buffer> <silent> \cme u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method","i")
inoremap <buffer> <silent> \cfu u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function","i")
inoremap <buffer> <silent> \cfr u:call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame","i")
inoremap <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
inoremap <buffer> <silent> \rk :call Perl_Settings(0)
inoremap <buffer> <silent> \rh :call Perl_Hardcopy("n")
inoremap <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
inoremap <buffer> <silent> \rpc :call Perl_Perlcritic()
inoremap <buffer> <silent> \ry :call Perl_Perltidy("n")
inoremap <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
inoremap <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
inoremap <buffer> \rw :PerlSwitches 
inoremap <buffer> \ra :PerlScriptArguments 
inoremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
inoremap <buffer> <silent> \rr :call Perl_Run()
inoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
inoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
inoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
inoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
inoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
inoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
inoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
inoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
inoremap <buffer> <silent> \podt :call Perl_POD('text')
inoremap <buffer> <silent> \podm :call Perl_POD('man')
inoremap <buffer> <silent> \podh :call Perl_POD('html')
inoremap <buffer> <silent> \pod :call Perl_PodCheck()
inoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
inoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
inoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
inoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
inoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
inoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
inoremap <buffer> <silent> \cl :call Perl_EndOfLineComment()
inoremap <buffer> <silent> \hp :call Perl_HelpPerlsupport()
inoremap <buffer> <silent> \h :call Perl_perldoc()
inoremap <buffer> \rcm :MakeFile 
inoremap <buffer> \rma :MakeCmdlineArgs 
inoremap <buffer> <silent> \rmc :Make clean
inoremap <buffer> <silent> \rm :Make
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal completeslash=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=[^A-Za-z_]
setlocal dictionary=~/vimfiles/perl-support/wordlists/perl.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'perl'
setlocal filetype=perl
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=crqol
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=\\<\\(use\\|require\\)\\>
setlocal includeexpr=substitute(substitute(substitute(v:fname,'::','/','g'),'->*','',''),'$','.pm','')
setlocal indentexpr=GetPerlIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,0=,0),0],0=or,0=and
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,:,$,%,@-@
setlocal keywordprg=perldoc\ -f
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=.,,,C:/Perl64/site/lib,C:/Perl64/lib,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'perl'
setlocal syntax=perl
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 29 - ((5 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
29
normal! 010|
wincmd w
exe 'vert 1resize ' . ((&columns * 112 + 117) / 235)
exe 'vert 2resize ' . ((&columns * 122 + 117) / 235)
tabnext 3
set stal=1
badd +1 main.pl
badd +1 t\planet.t
badd +31 t\player.t
badd +1 planet.pm
badd +1 player.pm
badd +23 ..\blankperl_format.pl
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
