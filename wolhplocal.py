#!/usr/bin/env python
import socket 
import sys
import binascii
s=socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
addr=binascii.unhexlify(sys.argv[1])
s.sendto('\xff'*6+addr*16, (sys.argv[2], 7))

