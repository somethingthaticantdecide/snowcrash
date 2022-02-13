strace getflag
gdb /bin/getflag -q

disas main
break *main+72
set $eax=0
disas main
break *main+452
set $eax=3014
