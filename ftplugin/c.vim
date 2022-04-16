setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2
if filereadable("./Makefile") || filereadable("./makefile")
    let b:CompileCommand = "make"
else
    let b:CompileCommand = "gcc % -o %<"
endif
let b:RunCommand = "./%<"
call UpdateCommands()
