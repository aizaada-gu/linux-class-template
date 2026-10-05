   #!/bin/bash
   echo "== OS =="; cat /etc/os-release | head -2
   echo "== User =="; id; sudo -n true 2>/dev/null && echo "sudo: yes" || echo "sudo: no"
   echo "== Init =="; ps -p 1 -o comm=
   echo "== Resources =="; nproc; free -h | head -2; df -h / | tail -1
   echo "== Network =="; ip a | grep inet; curl -sI https://example.com | head -1
   echo "== Firewall =="; sudo iptables -L 2>&1 | head -5
   echo "== Kernel modules =="; sudo modprobe dummy 2>&1 | head -1
