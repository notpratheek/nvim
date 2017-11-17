" Some more automating stuff
"
" Thanks to @mhinz
" Make a fugitive status for the statusline
"
function! prat#fugitive_status()
    let gitstat = ''
    if exists('b:git_dir')
        let branch = fugitive#head(8)
        let branch_val = (branch == 'master') ? 'master' : branch
        let gitstat = 'G:' . branch_val
    endif
    return gitstat
endfunction

" Taken from ale's README
" Show ALE status
"
function! prat#ale_status() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? '[OK]' : printf(
    \   '[%dW %dE]',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

" Taken from scrooloose's blogpost
" return '[&et]' if &et is set wrong
" return '[mixed-indenting]' if spaces and tabs are used to indent
" return an empty string if everything is fine
function! prat#stl_tab_warning()
    if !exists("b:statusline_tab_warning")
        let tabs = search('^\t', 'nw') != 0
        let spaces = search('^ ', 'nw') != 0

        if tabs && spaces
            let b:statusline_tab_warning =  '[mixed-indenting]'
        elseif (spaces && !&et) || (tabs && &et)
            let b:statusline_tab_warning = '[&et]'
        else
            let b:statusline_tab_warning = ''
        endif
    endif
    return b:statusline_tab_warning
endfunction

"return '[\s]' if trailing white space is detected
"return '' otherwise
function! prat#stl_trailing_space_warning()
    if !exists("b:statusline_trailing_space_warning")

        if !&modifiable
            let b:statusline_trailing_space_warning = ''
            return b:statusline_trailing_space_warning
        endif

        if search('\s\+$', 'nw') != 0
            let b:statusline_trailing_space_warning = '[\s]'
        else
            let b:statusline_trailing_space_warning = ''
        endif
    endif
    return b:statusline_trailing_space_warning
endfunction

" Better path names for statusline
function! prat#better_path()
    return pathshorten(expand('%:~'))
endfunction

function! prat#file_enc()
    if &fenc != 'utf-8' && &fenc != ''
        return '  ' . &fenc . ' '
    else
        return ''
    endif
endfunction

function! prat#proper_case()
    return toupper(strpart(&filetype,0,1)) . strpart(&filetype,1)
endfunction

" function! prat#_wcount()
"     let cmd = 'wc -w ' . expand('%')
"     let output = system(cmd)
"     let cnt = split(output)[0]
"     return 'W:' . cnt
" endfunction
"
" function! prat#wc()
"     if !exists("b:stl_word_count")
"
"         if !&modifiable
"             let b:stl_word_count = 0
"             return b:stl_word_count
"         endif
"
"         let cmd = 'wc -w ' . expand('%')
"         let output = system(cmd)
"         let b:stl_word_count = 'W:' . split(output)[0]
"
"     endif
"     return b:stl_word_count
" endfunction

"  make <tab> more useful?
"function! s:can_complete(func, prefix)
"  if empty(a:func) || call(a:func, [1, '']) < 0
"    return 0
"  endif
"  let result = call(a:func, [0, matchstr(a:prefix, '\k\+$')])
"  return !empty(type(result) == type([]) ? result : result.words)
"endfunction
"
"function! prat#tab_yeah(k, o)
"  if pumvisible()
"    return a:k
"  endif
"
"  let line = getline('.')
"  let col = col('.') - 2
"  if empty(line) || line[col] !~ '\k\|[/~.]' || line[col + 1] =~ '\k'
"    return a:o
"  endif
"
"  let prefix = expand(matchstr(line[0:col], '\S*$'))
"  if prefix =~ '^[~/.]'
"    return \"\<c-x>\<c-f>"
"  endif
"  if s:can_complete(&omnifunc, prefix)
"    return \"\<c-x>\<c-o>"
"  endif
"  if s:can_complete(&completefunc, prefix)
"    return \"\<c-x>\<c-u>"
"  endif
"  return a:k
"endfunction


" function! prat#word_counter()
"     let ftype = &filetype
"     if ftype == 'markdown'
"         let cmd = wc -w   . expand('%') . | cut -d' ' -f1
"         let cnt = system(cmd)
"         return cnt . words
"     else
"         call prat#ale_status()
"     endif
" endfunction
