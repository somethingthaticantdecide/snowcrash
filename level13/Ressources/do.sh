echo '#include<unistd.h>uid_t getuid(void){ return 4242;}' > getuid.c

gcc -fPIC -shared -o lib.so getuid.c

export LD_PRELOAD="$PWD/lib.so"