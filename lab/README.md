# Lab 1: Firewall basics

1. Check your environment: `bash lab/check.sh`
2. Start a test web server: `python3 -m http.server 8080 &`
3. Test it: `curl -I -m 5 http://localhost:8080` (expect 200 OK)
4. Block port 8080: `sudo iptables -A INPUT -p tcp --dport 8080 -j DROP`
5. Test again: `curl -m 5 http://localhost:8080` (expect a timeout)
6. List the rules: `sudo iptables -L INPUT -n --line-numbers`
7. Remove the rule: `sudo iptables -D INPUT 1`
8. Test again (expect 200 OK)

Stuck? Run `bash lab/reset.sh` and start over.