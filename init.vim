"=============================================================================
" init.vim --- Entry file for neovim
" custom by JaeJun 
"=============================================================================

" ********** Plug-In start **********
call plug#begin('~/.vim/plugged')

" ********** List of Plug-In **********

" 42-Header
Plug 'pbondoer/vim-42header'
let g:hdr42user='jaejkim'
let g:hdr42mail='jaejkim@student.42seoul.kr'

" NERDTree 코드 뷰어 창
Plug 'preservim/nerdtree'
map <F5> :NERDTreeToggle<CR>

" 컬러스킴(색상표) 
"Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'danilo-augusto/vim-afterglow'
Plug 'alessandroyorba/alduin'
Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.7' }
Plug 'morhetz/gruvbox'
Plug 'sainnhe/vim-color-forest-night'
"
" 괄호 색 짝맞춤
Plug 'junegunn/rainbow_parentheses.vim'

" 하단에 다양한 상태(몇 번째 줄, 인코딩, etc.)를 
" 표시하는 상태바 추가
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" CtrlP 파일 탐색 플러그인
Plug 'ctrlpvim/ctrlp.vim'

"주석처리기 
Plug 'preservim/nerdcommenter'

" 들여쓰기 뷰 
Plug 'lukas-reineke/indent-blankline.nvim'

" tag allowed
Plug 'fatih/vim-go', { 'tag': '*' }

" 파일 아이콘
Plug 'ryanoasis/vim-devicons'

" 자동괄호
Plug 'Raimondi/delimitMate'

"c 구문파싱
Plug 'sheerun/vim-polyglot'

"" ********** Initialize Plug-In system **********
call plug#end()


" ********** My nvim setting **********

"단축키 
map <Leader>] :NERDTreeToggle<cr>

" turn hybrid line numbers on
set nu
set ft=4 ts=4 sts=4 sw=4
set autoindent cindent
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set hlsearch " 탐색 문자열 강조
set mouse=a " 모든 마우스 기능을 사용
set clipboard=unnamed "자를 제외하고 클립보드에 복사
set tenc=utf-8   "터미널 인코딩
" set laststatus=2

set cursorline
" 입력모드에선 커서줄 없고
autocmd InsertEnter * set nocursorline
" 명령모드에선 커서줄 보기
autocmd InsertLeave * set cursorline
" 커서 하이라이팅 글자

au VimEnter * RainbowParentheses
" 레인보우 괄호사용 자동입력
"
highlight Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
highlight CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold

if has('nvim')			" nvim 을 사용 중이라면
	set inccommand=nosplit	" nvim live %s substitute (실시간 강조)
endif

" GUI-Color 를 사용 가능하도록 설정 (TrueColor)
" cterm 혹은 term 대신 gui 를 통해 색상을 설정할 수 있고
" 16,777,216 종류의 색상 표현 가능(기존 256)
set termguicolors

" 구문 강조 사용
if has("syntax")
 syntax on
endif

" 컬러스킴(문법 강조 색상) 
colorscheme everforest


" =========================================================================
" =  하이라이트 정의                                                      =
" =========================================================================
" 버퍼(창)과 버퍼의 끝(창의 끝)을 투명하게
highlight Normal guibg=NONE
highlight EndOfBuffer guibg=NONE

" 줄번호 배경색은 투명(NULL)하게, 
" 글자는 굵게(bold), 글자색은 하얗게(White)
highlight LineNr guibg=NONE 

" 행 표시선 색상
highlight ColorColumn guibg=white

" ------------------------------------
" vim-airline 설정
" ------------------------------------
" powerline-font 활성화
let g:airline_powerline_fonts = 1
" luna 테마 사용
let g:airline_theme = 'everforest'

" 창의 상단에 표시되도록 설정
let g:airline_statusline_ontop = 0
" 탭라인 허용
let g:airline#extensions#tabline#enabled = 1
" 항상 tabline 을 표시
let g:airline#extensions#tabline#show_tabs = 1
" ------------------------------------
" NERDTree 설정
" ------------------------------------
" 창 크기(가로)를 20 으로 설정
let g:NERDTreeWinSize=30

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

let delimitMate_expand_cr=1
" NERD Commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" customize keymapping
nnoremap <Leader>c<space> <plug>NERDComComment
