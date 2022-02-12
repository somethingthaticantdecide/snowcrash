strace getflag
# ldd /bin/getflag

# echo '
# #include <stdio.h>
# int __libc_start_main(int (*main) (int, char * *, char * *), int argc, char * * ubp_av, void (*init) (void), void (*fini) (void), void (*rtld_fini) (void), void (* stack_end)) 
# { 
#   setuid(3014,3014);
#   execve("/bin/sh", NULL, NULL);
#   return 0;
# }
# ' > /tmp/libc.so.6.c

# gcc -shared -fPIC libc.so.6.c -o libc.so
# export LD_PRELOAD=$PWD/libc.so

# echo '
# #include <stdio.h>
# long ptrace(int i, int j, void *addr, void *data)
# {
#     setuid(3014,3014);
# }
# ' > /tmp/ptrace.c

# gcc -shared -fPIC ptrace.c -o ptrace.so
# export LD_PRELOAD=$PWD/ptrace.so

gdb /bin/getflag -q

disas main
break *main+72
set $eax=0
disas main
break *main+452
set $eax=3014
