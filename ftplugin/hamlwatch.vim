function! HamlWatch()
  if search("---watch---")
    let hamlfilename = @%
    let htmlfilename = substitute(hamlfilename, '.haml', '', "g")
    let cmd = "haml " . hamlfilename . " " . htmlfilename
    execute(cmd)
  endif
endfunction
