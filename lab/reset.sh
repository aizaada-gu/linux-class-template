#!/bin/bash
sudo iptables -F INPUT
pkill -f "http.server 8080" 2>/dev/null
echo "Reset done: firewall rules cleared, test server stopped."
