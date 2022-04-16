let b:CompileCommand = "pandoc -o '%:p:r.pdf' %"
let b:RunCommand = "setsid -f zathura '%:p:r.pdf'"
call UpdateCommands()
