if filereadable("./Makefile") || filereadable("./makefile")
    let b:CompileCommand = "make"
else
    let b:CompileCommand = "ocamlc % -o %<"
endif
let b:RunCommand = "./%<"
call UpdateCommands()
