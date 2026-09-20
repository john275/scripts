#!/usr/bin/env python3
import socket
import sys

s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)

addr = bytes.fromhex(sys.argv[1])

s.sendto(b'\xff' * 6 + addr * 16, (sys.argv[2], 7))
