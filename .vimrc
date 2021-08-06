map <F2> :!./test.sh<CR>:redraw!<CR>
if executable('pbcopy')
    map <F3> :!pbcopy < ./test.cpp<CR>:redraw!<CR>
else
    map <F3> :!clip.exe < ./test.cpp<CR>:redraw!<CR>
endif
imap <F2> <ESC>:!./test.sh<CR>:redraw!<CR>
if has('unix')
    map <F5> :!./create.sh<CR>:redraw!<CR>
else
    map <C-F5> :!./create.sh<CR>:redraw!<CR>
endif

let g:ale_c_clangtidy_checks = [
    \ '*',
    \ '-google-runtime-reference',
    \ '-google-explicit-constructor',
    \ '-cppcoreguidelines-avoid-c-arrays',
    \ '-hicpp-avoid-c-arrays',
    \ '-cppcoreguidelines-pro-bounds-constant-array-index',
    \ '-modernize-avoid-c-arrays',
    \ '-modernize-loop-convert',
    \ '-clang-diagnostic-c++17-extensions',
    \ '-readability-implicit-bool-conversion',
    \ '-google-runtime-int',
    \ '-hicpp-explicit-conversions',
    \ '-google-readability-braces-around-statements',
    \ '-google-build-using-namespace',
    \ '-misc-non-private-member-variables-in-classes',
    \ '-bugprone-signed-char-misuse',
    \ '-performance-inefficient-vector-operation',
    \ '-cppcoreguidelines-init-variables',
    \ '-readability-isolate-declaration',
    \ '-readability-braces-around-statements',
    \ '-hicpp-braces-around-statements',
    \ '-cppcoreguidelines-avoid-magic-numbers',
    \ '-cppcoreguidelines-macro-usage',
    \ '-fuchsia-*',
    \ '-google-readability-todo',
    \ '-hicpp-no-assembler',
    \ '-hicpp-signed-bitwise',
    \ '-hicpp-uppercase-literal-suffix',
    \ '-llvm-*',
    \ '-llvmlibc-*',
    \ '-modernize-use-trailing-return-type',
    \ '-readability-else-after-return',
    \ '-readability-magic-numbers',
    \ '-readability-uppercase-literal-suffix']
let g:ale_cpp_clangtidy_checks = g:ale_c_clangtidy_checks

augroup LoadVimrc
  autocmd!
  " Reload vimrc on the fly
  autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
augroup END
