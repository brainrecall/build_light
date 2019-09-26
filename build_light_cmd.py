# build_light
# Copyright (C) 2019  Joseph Auman (joseph.auman@gmail.com)
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

import socket
import sys

#This python script sends commands to the build_light_srv script over
#a local UDP port. The parameters from the command line are sent directly
#as-is.

#Usage: python build_light_cmd.py asR

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
server_address = ('localhost', 12345)

if (len(sys.argv) > 1):
    sent = sock.sendto(bytes(sys.argv[1], 'ascii'), server_address)

sock.close()
