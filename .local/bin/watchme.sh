watch -t -n 1 "nvidia-smi | tail -n +4;ps -eo uname,pid,comm:40,%cpu,%mem,stime --sort=-%cpu| head -n 5; iostat | head -n 5 | tail -2; free -m; sensors | grep Package; w"
