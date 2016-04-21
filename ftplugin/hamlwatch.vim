function! HamlWatch()
  if search("---watch---")
    let hamlfilename = @%
    let htmlfilename = substitute(hamlfilename, '.haml', '', "g")
    let cmd = ":silent !haml " . hamlfilename . " " . htmlfilename
    execute(cmd)
  endif
endfunction

autocmd BufWritePost *.html.haml :call HamlWatch()
